package com.uplus.productservice.service;

import com.uplus.productservice.controller.request.PhoneRequestDto;
import com.uplus.productservice.controller.response.PhoneSummaryDto;
import com.uplus.productservice.controller.response.StatusMessage;
import com.uplus.productservice.domain.phone.Color;
import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.exception.NoAvailableItemException;
import com.uplus.productservice.repository.ImageRepository;
import com.uplus.productservice.repository.PhoneRepository;

import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import java.time.Instant;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Service
@RequiredArgsConstructor
public class PhoneService {

    @Value("${prefix.key}")
    private String REDIS_PREFIX_KEY;

    @Value("${discount.public}")
    private Integer DISCOUNT_PUBLIC;

    @Value("${discount.select12}")
    private Integer DISCOUNT_SELECT_12;

    @Value("${discount.select24}")
    private Integer DISCOUNT_SELECT_24;

    private final PhoneRepository phoneRepository;
    private final ImageRepository imageRepository;

    private final RedisTemplate<String, PhoneSummaryDto> redisTemplate;
    public List<Phone> getPhoneList(Specification<Phone> spec, String orderColumnName, int direction) {
        return phoneRepository.findAll(spec, Sort.by(direction > 0 ? Sort.Direction.DESC : Sort.Direction.ASC, orderColumnName));
    }

    public Phone getPhoneDetail(Specification<Phone> spec) {
        return phoneRepository.findOne(spec).orElse(null);
    }

    public List<Images> getPhoneImageList(int phoneId, Optional<String> color) {
        if (color.isPresent())
            return imageRepository.findByPhoneIdAndImgColor(phoneId, color.get().toString());
        return imageRepository.findByPhoneId(phoneId);
    }

    @Transactional
    public Phone updateSalesCount(Phone phone) {
        Phone savedPhone = null;

        try {
            savedPhone =  phoneRepository.save(phone);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(StatusMessage.DB_UPDATE_IS_ZERO);
        }
        return savedPhone;
    }

    @Transactional
    public void saveRecentProducts(String jSessionId, PhoneSummaryDto phoneSummaryDto) {
      ZSetOperations<String, PhoneSummaryDto> zSetOperations = redisTemplate.opsForZSet();
      String key = REDIS_PREFIX_KEY + "::" + jSessionId;
      final long score = Instant.now().toEpochMilli();

      if (zSetOperations.add(key, phoneSummaryDto, score)) return;
      redisTemplate.expireAt(key, Date.from(ZonedDateTime.now().plusDays(1).toInstant()));
    }

    /**
     * client session id에 따라 Redis에 저장된 최근 본 상품 리스트를 조회
     * ZSet으로 저장하여 최근 본 순서와 중복을 제거함
     *
     */
    public List<PhoneSummaryDto> getRecentProducts(String jSessionId) {
      ZSetOperations<String, PhoneSummaryDto> zSetOperations = redisTemplate.opsForZSet();
      String key = REDIS_PREFIX_KEY + "::" + jSessionId;

      if (zSetOperations.size(key) == 0)
        throw new NoAvailableItemException("최근 본 상품이 존재하지 않습니다");
      return new ArrayList<>(zSetOperations.reverseRange(key, 0, -1));
    }

    public List<Color> getPhoneColors(String phoneCode) {
        List<Color> colors = phoneRepository.findColorByCode(phoneCode);
        if (colors.isEmpty())
            throw new NoAvailableItemException("색상이 존재하지 않습니다.");
        return colors;
    }

    public List<Phone> getSearchResults(Specification<Phone> spec) {
        List<Phone> searchResults = phoneRepository.findAll(spec);
        if (searchResults.isEmpty())
            throw new NoAvailableItemException("알맞은 결과를 찾을 수 없습니다");
        return searchResults;
    }

    /**
     * PhoneSummaryDto에 month price를 포함하여 반환한다.
     */
    public List<PhoneSummaryDto> getPhoneSummary(List<Phone> phoneList, String planCode, int planPrice) {
        List<PhoneSummaryDto> phoneSummaryDtos = new ArrayList<>();
        for (Phone phone : phoneList) {
            PhoneSummaryDto phoneSummaryDto = new PhoneSummaryDto(
                    phone, planCode, calcMonthPrice(phone.getPrice(), planPrice, phone.getDiscountType()));
            phoneSummaryDtos.add(phoneSummaryDto);
        }
        return phoneSummaryDtos;
    }

    public int calcMonthPrice(int phonePrice, int planPrice, int discountType) {
        /**
         * 결과는 1의 자리에서 버림
         * 할인유형&요금제에 따른 월별 요금 계산 ( 정상가, 공시지원금, 선택약정 )
         * 1 : 공시지원금
         * 2 : 선택약정 24개월
         * 3 : 선택약정 12개월
         *
         */
        double monPrice;
        switch (discountType) {
            case 1: {
                monPrice = ((double)phonePrice * (1-((double)DISCOUNT_PUBLIC / 100))) / 24; // 보통 24개월 계약함을 가정
                monPrice += planPrice;
                return (int) (monPrice - (monPrice % 10));
            }
            case 2: {
                monPrice = (double)planPrice * (1-((double)DISCOUNT_SELECT_12 / 100));
                monPrice += (double)phonePrice / 24;
                return (int) (monPrice - (monPrice % 10));
            }
            case 3: {
                monPrice = (double)planPrice * (1-((double)DISCOUNT_SELECT_24 / 100));
                monPrice += (double)phonePrice / 12;
                return (int) (monPrice - (monPrice % 10));
            }
            default:
                break;
        }
        return 0;
    }
}

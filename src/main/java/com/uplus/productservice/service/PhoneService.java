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
     * client session id??? ?????? Redis??? ????????? ?????? ??? ?????? ???????????? ??????
     * ZSet?????? ???????????? ?????? ??? ????????? ????????? ?????????
     *
     */
    public List<PhoneSummaryDto> getRecentProducts(String jSessionId) {
      ZSetOperations<String, PhoneSummaryDto> zSetOperations = redisTemplate.opsForZSet();
      String key = REDIS_PREFIX_KEY + "::" + jSessionId;

      if (zSetOperations.size(key) == 0)
        throw new NoAvailableItemException("?????? ??? ????????? ???????????? ????????????");
      return new ArrayList<>(zSetOperations.reverseRange(key, 0, -1));
    }

    public List<Color> getPhoneColors(String phoneCode) {
        List<Color> colors = phoneRepository.findColorByCode(phoneCode);
        if (colors.isEmpty())
            throw new NoAvailableItemException("????????? ???????????? ????????????.");
        return colors;
    }

    public List<Phone> getSearchResults(Specification<Phone> spec) {
        List<Phone> searchResults = phoneRepository.findAll(spec);
        if (searchResults.isEmpty())
            throw new NoAvailableItemException("????????? ????????? ?????? ??? ????????????");
        return searchResults;
    }

    /**
     * PhoneSummaryDto??? month price??? ???????????? ????????????.
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
         * ????????? 1??? ???????????? ??????
         * ????????????&???????????? ?????? ?????? ?????? ?????? ( ?????????, ???????????????, ???????????? )
         * 1 : ???????????????
         * 2 : ???????????? 24??????
         * 3 : ???????????? 12??????
         *
         */
        double monPrice;
        switch (discountType) {
            case 1: {
                phonePrice = (phonePrice - (int) (Math.floor((phonePrice * DISCOUNT_PUBLIC/100)/10))*10);
                return (int) Math.floor((phonePrice/24)/10)*10 + planPrice;
            }
            case 2: {
                planPrice= (planPrice - (int) (Math.floor((planPrice * DISCOUNT_SELECT_24/100)/10))*10);
                return (int) Math.floor((phonePrice/24)/10)*10 + planPrice;
            }
            case 3: {
                planPrice= (planPrice - (int) (Math.floor((planPrice * DISCOUNT_SELECT_12/100)/10))*10);
                return (int) Math.floor((phonePrice/24)/10)*10 + planPrice;
            }
            default:
                break;
        }
        return 0;
    }
}

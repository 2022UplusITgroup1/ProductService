package com.uplus.productservice.service;

import com.uplus.productservice.controller.request.PhoneCompareDto;
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

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Service
@RequiredArgsConstructor
public class PhoneService {

    @Value("${prefix.key}")
    private String REDIS_PREFIX_KEY;

    private final PhoneRepository phoneRepository;
    private final ImageRepository imageRepository;
    private final RedisTemplate<String, PhoneCompareDto> redisTemplate;

    public List<Phone> getPhoneList(Specification<Phone> spec, String orderColumnName, int direction) {
        return phoneRepository.findAll(spec, Sort.by(direction > 0 ? Sort.Direction.DESC : Sort.Direction.ASC, orderColumnName));
    }

    public Phone getPhoneDetail(Specification<Phone> spec) {
        return phoneRepository.findOne(spec).orElse(null);
    }

    public List<Images> getPhoneImageList(int phoneId) {
        return imageRepository.findByPhoneId(phoneId);
    }

    @Transactional
    public Phone updateSalesCount(Phone phone) {
        Phone savedPhone = null;

        try {
            savedPhone =  phoneRepository.save(phone);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NoAvailableItemException("상품을 찾을 수 없습니다");
        }
        return savedPhone;
    }

    @Transactional
    public void saveRecentProducts(String jSessionId, PhoneCompareDto phoneCompareDto) {
      ZSetOperations<String, PhoneCompareDto> zSetOperations = redisTemplate.opsForZSet();
      String key = REDIS_PREFIX_KEY + jSessionId;
      final long score = Instant.now().toEpochMilli();

      if (zSetOperations.add(key, phoneCompareDto, score)) return;
      redisTemplate.expireAt(key, Date.from(ZonedDateTime.now().plusDays(1).toInstant()));
    }

    public List<PhoneCompareDto> getRecentProducts(String jSessionId) {
      ZSetOperations<String, PhoneCompareDto> zSetOperations = redisTemplate.opsForZSet();
      String key = REDIS_PREFIX_KEY + jSessionId;

      if (zSetOperations.size(key) == 0)
        throw new NoAvailableItemException("최근 본 상품이 존재하지 않습니다");
      return new ArrayList<>(zSetOperations.reverseRange(key, 0, -1));
    }
}

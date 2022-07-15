package com.uplus.productservice.service;

import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.repository.ImageRepository;
import com.uplus.productservice.repository.PhoneRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Service
@RequiredArgsConstructor
public class PhoneService {
    private final PhoneRepository phoneRepository;
    private final ImageRepository imageRepository;

    public List<Phone> getPhoneList(Specification<Phone> spec, String orderColumnName, int direction) {
        return phoneRepository.findAll(spec, Sort.by(direction > 0 ? Sort.Direction.DESC : Sort.Direction.ASC, orderColumnName));
    }

    public Phone getPhoneDetail(Specification<Phone> spec) {
        return phoneRepository.findOne(spec).orElse(null);
    }

    public List<Images> getPhoneImageList(int phoneId) {
        return imageRepository.findByPhoneId(phoneId);
    }
}

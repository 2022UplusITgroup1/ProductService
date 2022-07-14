package com.uplus.productservice.service;

import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.repository.PhoneRepository;
import lombok.RequiredArgsConstructor;
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

    public List<Phone> getPhoneList(String networkSupport) {
        return phoneRepository.findByFetchJoinOrderByPrice(networkSupport);
    }
}

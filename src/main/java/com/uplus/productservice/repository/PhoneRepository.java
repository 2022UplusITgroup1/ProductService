package com.uplus.productservice.repository;

import com.uplus.productservice.domain.phone.Color;
import com.uplus.productservice.domain.phone.Phone;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;


////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public interface PhoneRepository extends JpaRepository<Phone, Integer>, JpaSpecificationExecutor<Phone> {
    Phone findByCode(Specification<Phone> spec);
    List<Color> findColorByCode(String phoneCode);
    //TEST
    Phone findByCode(String phoneCode);
}

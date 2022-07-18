package com.uplus.productservice.repository;

import com.uplus.productservice.domain.phone.Images;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public interface ImageRepository extends JpaRepository<Images, Integer> {
    List<Images> findByPhoneId(Integer phoneId);
    List<Images> findByPhoneIdAndImgColor(Integer phoneId, String imgColor);
}

package com.uplus.productservice.repository;

import com.uplus.productservice.domain.phone.Phone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public interface PhoneRepository extends JpaRepository<Phone, Integer> {
    @Query("SELECT p" +
            " FROM Phone p "+
            " LEFT JOIN FETCH p.brand"+
            " LEFT JOIN FETCH p.storage"+
            " WHERE p.networkSupport = :networkSupport"+
            " ORDER BY p.price")
    List<Phone> findByFetchJoinOrderByPrice(String networkSupport);
}

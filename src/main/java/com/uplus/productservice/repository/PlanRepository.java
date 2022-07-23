package com.uplus.productservice.repository;

import com.uplus.productservice.domain.plan.Plan;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public interface PlanRepository extends JpaRepository<Plan, Integer> {
    List<Plan> findAllByNetworkSupportOrderById(String networkSupport);
    Plan findByCode(String planCode);
    Plan findTopByNetworkSupportOrderByIdAsc(String networkSupport);
}

package com.uplus.productservice.service;

import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.repository.PlanRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Service
@RequiredArgsConstructor
public class PlanService {
    private final PlanRepository planRepository;

    public List<Plan> getPlanList(String networkSupport) {
        return planRepository.findAllByNetworkSupportOrderById(networkSupport);
    }

    public Plan getPlanDetail(String planCode) {
        return planRepository.findByCode(planCode);
    }
}

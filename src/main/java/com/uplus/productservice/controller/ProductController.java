package com.uplus.productservice.controller;

import com.uplus.productservice.controller.response.ResponseMessage;
import com.uplus.productservice.controller.response.StatusCode;
import com.uplus.productservice.controller.response.StatusMessage;
import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.service.PhoneService;
import com.uplus.productservice.service.PlanService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@RestController
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController {
    private final PhoneService phoneService;
    private final PlanService planService;
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @GetMapping("/phone")
    public ResponseMessage getAllPhoneList(@RequestParam(value = "net_sp") final String networkSupport) {
        // TODO Handle Exception ...
        List<Phone> phoneList = phoneService.getPhoneList(networkSupport.toUpperCase());

        logger.info(networkSupport + " phone list : " + phoneList.toString());
        if (phoneList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SUMMARY, phoneList);
    }

    @GetMapping("/plan")
    public ResponseMessage getAllPlanList(@RequestParam(value = "net_sp") final String networkSupport) {
        // TODO Handle Exception ...
        List<Plan> planList = planService.getPlanList(networkSupport);

        logger.info(networkSupport + " plan list : " + planList.toString());
        if (planList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PLAN_SUMMARY, planList);
    }
}

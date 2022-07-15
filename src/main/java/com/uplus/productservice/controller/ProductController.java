package com.uplus.productservice.controller;

import com.uplus.productservice.controller.request.PhoneCompareDto;
import com.uplus.productservice.controller.response.PhoneDetailDto;
import com.uplus.productservice.controller.response.ResponseMessage;
import com.uplus.productservice.controller.response.StatusCode;
import com.uplus.productservice.controller.response.StatusMessage;
import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.exception.ItemIsDeletedException;
import com.uplus.productservice.exception.NoAvailableItemException;
import com.uplus.productservice.repository.ProductSpecification;
import com.uplus.productservice.service.PhoneService;
import com.uplus.productservice.service.PlanService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
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
    public ResponseMessage getPhoneList(@RequestParam(value = "net_sp") final String networkSupport,
                                        @RequestParam(value = "dc_type", required = false) final Optional<Integer> discountType,
                                        @RequestParam(value = "mf_name", required = false) final Optional<Integer> brandId,
                                        @RequestParam(value = "capa", required = false) final Optional<Integer> capability,
                                        @RequestParam(value = "ord", required = false) final Optional<Integer> orders) {
        // TODO Handle Exception ...

        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        if (discountType.isPresent())
            spec = spec.and(ProductSpecification.equalDiscountType(discountType.get().intValue()));
        if (capability.isPresent())
            spec = spec.and(ProductSpecification.equalCapability(capability.get().intValue()));
        if (brandId.isPresent())
            spec = spec.and(ProductSpecification.equalBrandId(brandId.get().intValue()));

        spec = spec.and(ProductSpecification.equalNetworkSupport(networkSupport.toUpperCase()));

        String orderColumnName = "createTime";
        int direction = 0; // ACS = 0 , DESC = 1
        if (orders.isPresent()) {
            switch (orders.get().intValue()) {
                case 0:
                {
                    orderColumnName = "sales";
                    direction = 1;
                    break;
                }
                case 2:
                {
                    orderColumnName = "price";
                    direction = 0;
                    break;
                }
                case 3:
                {
                    orderColumnName = "price";
                    direction = 0;
                    break;
                }
                case 4:
                {
                    orderColumnName = "price";
                    direction = 0;
                    break;
                }
                case 5:
                {
                    orderColumnName = "sales";
                    direction = 1;
                    break;
                }
            }
            logger.info("order number : " + orders.get().intValue() +
                    " column : " + orderColumnName + " direction : " + direction);
        }
        List<Phone> phoneList = phoneService.getPhoneList(spec, orderColumnName, direction);

        logger.info(networkSupport + " phone list : " + phoneList.toString());
        if (phoneList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SUMMARY, phoneList);
    }

    @GetMapping("/plan")
    public ResponseMessage getPlanList(@RequestParam(value = "net_sp") final String networkSupport,
                                       @RequestParam(value = "pl_code", required = false) String planCode) {
        // TODO Handle Exception ...
        List<Plan> planList = planService.getPlanList(networkSupport);

        logger.info(networkSupport + " plan list : " + planList.toString());
        if (planList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PLAN_SUMMARY, planList);
    }

    @GetMapping("/detail")
    public ResponseMessage getPhoneDetailInfo(@RequestParam(value = "pl_code") String planCode,
                                              @RequestParam(value = "ph_code") String phoneCode,
                                              @RequestParam(value = "dc_type") Integer discountType) {
        // TODO Handle Exception ...
        /*
        * 상세 정보 : model code , name, color, images, capability,
        *           price, selected_plan, discount_type
        * */

        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalPhoneCode(phoneCode));

        Phone phoneInfo = phoneService.getPhoneDetail(spec);
        Plan planInfo = planService.getPlanDetail(planCode);
        List<Images> imagesList = phoneService.getPhoneImageList(phoneInfo.getId());

        if (imagesList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }

        PhoneDetailDto phoneDetailDto = new PhoneDetailDto(phoneInfo, planInfo, imagesList);
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_DETAIL, phoneDetailDto);
    }

    @PostMapping("/compare")
    public ResponseMessage comparePhones(@RequestBody List<PhoneCompareDto> compareList) {
        // TODO Handle Exception ...
        /**
         * 비교 정보 : model code, selected_plan,
         *           discount_type, network_support, color
         *
         */
        if (compareList.isEmpty())
            throw new NoAvailableItemException("비교할 대상이 없습니다");

        List<PhoneDetailDto> phoneDetailDtos = new ArrayList<>();

        for (PhoneCompareDto dto : compareList) {
            Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
            spec = spec.and(ProductSpecification.equalPhoneCode(dto.getCode()));

            Phone phoneInfo = phoneService.getPhoneDetail(spec);
            if (phoneInfo == null)
                throw new ItemIsDeletedException("선택하신 상품이 존재하지 않습니다.");

            Plan planInfo = planService.getPlanDetail(dto.getPlan());
            phoneDetailDtos.add(new PhoneDetailDto(phoneInfo,planInfo));
        }

        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_COMPARE, phoneDetailDtos);
    }
}

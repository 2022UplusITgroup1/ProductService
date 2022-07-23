package com.uplus.productservice.controller;

import com.uplus.productservice.controller.request.PhoneRequestDto;
import com.uplus.productservice.controller.response.*;
import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.exception.NoAvailableItemException;
import com.uplus.productservice.repository.ProductSpecification;
import com.uplus.productservice.service.PhoneService;
import com.uplus.productservice.service.PlanService;
import com.uplus.productservice.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

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
    private final SearchService searchService;
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @GetMapping("/phone")
    public ResponseMessage getPhoneList(@RequestParam(value = "net_sp") final String networkSupport,
                                        @RequestParam(value = "mf_name", required = false) final Optional<Integer> brandId,
                                        @RequestParam(value = "capa", required = false) final Optional<Integer> capability,
                                        @RequestParam(value = "plan", defaultValue = "LUP0001") final String planCode,
                                        @RequestParam(value = "ord", required = false) final Optional<Integer> orders) {
        // TODO Handle Exception ...

        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;

        if (capability.isPresent()) {
            /**
             * 저장 용량
             * 1 : 64GB
             * 2 : 128GB
             * 3 : 256GB
             * 4 : 512GB
             * 5 : 1TB
             */
            if (capability.get().intValue() < 4)
                spec = spec.and(ProductSpecification.equalCapability(capability.get().intValue()));
            else // 512GB 이상인 경우
                spec = spec.and(ProductSpecification.greaterThanOrEqualCapability(capability.get().intValue()));
        }
        if (brandId.isPresent())
            spec = spec.and(ProductSpecification.equalBrandId(brandId.get().intValue()));

        spec = spec.and(ProductSpecification.equalNetworkSupport(networkSupport.toUpperCase()));
        spec = spec.and(ProductSpecification.equalIsDeleted(0));

        String orderColumnName = "createTime";
        int direction = 0; // ACS = 0 , DESC = 1
        if (orders.isPresent()) {
            /**
             * 모바일 상품 리스트 정렬
             * 0 : 최근 출시된 상품 순
             * 1 : 실 구매가 낮은 순
             * 2 : 정상가 낮은 순
             * 3 : 정상가 높은 순
             * 4 : 누적 판매량이 높은 순
             * 프론트에서 정렬을 처리하지만 서버로 ord 가 넘어오는 경우에는 서버에서 처리 가능하도록 구성
             */
            switch (orders.get().intValue()) {
                case 1:
                {
                    orderColumnName = "price";
                    direction = 0;
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
                    direction = 1;
                    break;
                }
                case 4:
                {
                    orderColumnName = "sales";
                    direction = 1;
                    break;
                }
            }
            logger.debug("order number : " + orders.get().intValue() +
                    " column : " + orderColumnName + " direction : " + direction);
        }
        List<Phone> phoneList = phoneService.getPhoneList(spec, orderColumnName, direction);

        logger.debug(networkSupport + " phone list : " + phoneList.toString());
        if (phoneList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }

        // 요금제와 할인 유형에 따라 월 요금 계산
        Plan plan = planService.getPlanPrice(planCode);
        if (plan == null)
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        List<PhoneSummaryDto> phoneSummaryDtos = phoneService.getPhoneSummary(phoneList, planCode, plan.getPrice());

        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SUMMARY, phoneSummaryDtos);
    }

    @GetMapping("/plan")
    public ResponseMessage getPlanList(@RequestParam(value = "net_sp") final String networkSupport,
                                       @RequestParam(value = "pl_code", required = false) String planCode) {
        // TODO Handle Exception ...
        List<Plan> planList = planService.getPlanList(networkSupport);

        logger.debug(networkSupport + " plan list : " + planList.toString());
        if (planList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PLAN_SUMMARY, planList);
    }

    @GetMapping("/detail")
    public ResponseMessage getPhoneDetailInfo(HttpSession session,
                                              @RequestParam(value = "pl_code") String planCode,
                                              @RequestParam(value = "ph_code") String phoneCode,
                                              @RequestParam(value = "color", required = false) final Optional<String> color,
                                              @RequestParam(value = "dc_type") Integer discountType) {
        // TODO Handle Exception ...
        /*
        * 상세 정보 : model code , name, color, images, capability,
        *           price, selected_plan
        * */

        logger.info("sessionId = {}", session.getId());
        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalPhoneCode(phoneCode));
        spec = spec.and(ProductSpecification.equalIsDeleted(0));
        if (color.isPresent())
            spec = spec.and(ProductSpecification.equalPhoneColor(color.get().toString()));

        Phone phoneInfo = phoneService.getPhoneDetail(spec);
        Plan planInfo = planService.getPlanDetail(planCode);
        List<Images> imagesList = phoneService.getPhoneImageList(phoneInfo.getId(), color);

        if (imagesList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }

        PhoneRequestDto phoneRequestDto = PhoneRequestDto.builder()
                                                        .code(phoneCode)
                                                        .networkSupport(phoneInfo.getNetworkSupport())
                                                        .discountType(discountType)
                                                        .color(phoneInfo.getColor())
                                                        .plan(planCode)
                                                        .build();

        phoneService.saveRecentProducts(session.getId(), phoneRequestDto);

        PhoneDetailDto phoneDetailDto = new PhoneDetailDto(phoneInfo, planInfo, imagesList);
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_DETAIL, phoneDetailDto);
    }

    @PostMapping("/compare")
    public ResponseMessage comparePhones(@RequestBody List<PhoneRequestDto> compareList) {
        // TODO Handle Exception ...
        /**
         * 비교 정보 : model code, selected_plan,
         *           discount_type, network_support, color
         *
         */
        if (compareList.isEmpty())
            throw new NoAvailableItemException("비교할 대상이 없습니다");

        List<PhoneDetailDto> phoneDetailDtos = new ArrayList<>();

        for (PhoneRequestDto dto : compareList) {
            Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
            spec = spec.and(ProductSpecification.equalPhoneCode(dto.getCode()));

            Phone phoneInfo = phoneService.getPhoneDetail(spec);
            if (phoneInfo == null)
                return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);

            // 선택한 할인 유형 값으로 바꾸어 리턴
            phoneInfo.setDiscountType(dto.getDiscountType());
            Plan planInfo = planService.getPlanDetail(dto.getPlan());
            phoneDetailDtos.add(new PhoneDetailDto(phoneInfo,planInfo));
        }

        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_COMPARE, phoneDetailDtos);
    }

    @PutMapping("/sales/{code}/{color}")
    public ResponseMessage updateSales(@PathVariable("code") final String phoneCode,
                                       @PathVariable("color") final String phoneColor) {
        // TODO Handle Exception ...
        logger.debug("get product code : " + phoneCode);

        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalPhoneCode(phoneCode));
        spec = spec.and(ProductSpecification.equalPhoneColor(phoneColor));

        Phone phoneInfo = phoneService.getPhoneDetail(spec);
        if (phoneInfo == null)
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);

        phoneInfo.setSales(phoneInfo.getSales()+1);

        Phone phoneUpdateRes = phoneService.updateSalesCount(phoneInfo);

        return ResponseMessage.res(StatusCode.OK, StatusMessage.UPDATED_SALES_COUNT, phoneUpdateRes);
    }

    @GetMapping("/recents")
    public ResponseMessage getRecentProducts(HttpSession session) {
      List<PhoneRequestDto> phoneCompareDtos = phoneService.getRecentProducts(session.getId());

      logger.debug("recent products: " + phoneCompareDtos.size());
      return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SUMMARY, phoneCompareDtos);
    }

    @GetMapping("/color")
    public ResponseMessage getPhoneColor(@RequestParam(value = "ph_code") String phoneCode) {
        List<String> phoneColorList = phoneService.getPhoneColors(phoneCode);
        if (phoneColorList.isEmpty())
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_COLOR, phoneColorList);
    }

    @GetMapping("/search")
    public ResponseMessage getSearchResults(@RequestParam(value = "word") String keyword) {
        logger.debug("search word: " + keyword);
        List<Phone> searchResults = searchService.getSearchResults(keyword);

        if (searchResults.isEmpty()) {
            Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
            spec = spec.and(ProductSpecification.likeNameAsKeyword(keyword));
            spec = spec.or(ProductSpecification.likeCodeAsKeyword(keyword));

            searchResults = phoneService.getSearchResults(spec);
        }

        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SEARCH, searchResults);
    }
}

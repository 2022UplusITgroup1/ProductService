package com.uplus.productservice.controller;

import com.uplus.productservice.controller.request.PhoneRequestDto;
import com.uplus.productservice.controller.response.*;
import com.uplus.productservice.domain.phone.Color;
import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.exception.NoAvailableItemException;
import com.uplus.productservice.repository.ProductSpecification;
import com.uplus.productservice.service.PhoneService;
import com.uplus.productservice.service.PlanService;
import com.uplus.productservice.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang.RandomStringUtils;
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
    private final SearchService searchService;
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @GetMapping("/phone")
    public ResponseMessage getPhoneList(@RequestParam(value = "net_sp") final String networkSupport,
                                        @RequestParam(value = "mf_name", required = false) final Optional<Integer> brandId,
                                        @RequestParam(value = "capa", required = false) final Optional<Integer> capability,
                                        @RequestParam(value = "plan", required = false) final Optional<String> planCode,
                                        @RequestParam(value = "ord", required = false) final Optional<Integer> orders) {
        // TODO Handle Exception ...

        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;

        if (capability.isPresent()) {
            /**
             * ?????? ??????
             * 1 : 64GB
             * 2 : 128GB
             * 3 : 256GB
             * 4 : 512GB
             * 5 : 1TB
             */
            if (capability.get().intValue() < 4)
                spec = spec.and(ProductSpecification.equalCapability(capability.get().intValue()));
            else // 512GB ????????? ??????
                spec = spec.and(ProductSpecification.greaterThanOrEqualCapability(capability.get().intValue()));
        }
        if (brandId.isPresent())
            spec = spec.and(ProductSpecification.equalBrandId(brandId.get().intValue()));

        spec = spec.and(ProductSpecification.equalNetworkSupport(networkSupport.toUpperCase()));
        spec = spec.and(ProductSpecification.equalIsDeleted(0));

        String orderColumnName = "createTime";
        int direction = 1; // ACS = 0 , DESC = 1
        if (orders.isPresent()) {
            /**
             * ????????? ?????? ????????? ??????
             * 0 : ?????? ????????? ?????? ???
             * 1 : ??? ????????? ?????? ???
             * 2 : ????????? ?????? ???
             * 3 : ????????? ?????? ???
             * 4 : ?????? ???????????? ?????? ???
             * ??????????????? ????????? ??????????????? ????????? ord ??? ???????????? ???????????? ???????????? ?????? ??????????????? ??????
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

        // ???????????? ?????? ????????? ?????? ??? ?????? ??????
        // ????????? ????????? ???????????? ?????? ?????? network support ?????? ?????? default plan code ??? ??????
        Plan plan = null;
        if (planCode.isPresent())
            plan = planService.getPlanPriceByCode(planCode.get().toString());
        else
            plan = planService.getPlanPriceByNetworkSupport(networkSupport.toUpperCase());

        if (plan == null)
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        List<PhoneSummaryDto> phoneSummaryDtos = phoneService.getPhoneSummary(phoneList, plan.getCode(), plan.getPrice());
        logger.debug(networkSupport + " summary phone list : " + phoneSummaryDtos.toString());
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SUMMARY, phoneSummaryDtos);
    }

    @GetMapping("/plan")
    public ResponseMessage getPlanList(@RequestParam(value = "net_sp") final String networkSupport) {
        // TODO Handle Exception ...
        List<Plan> planList = planService.getPlanList(networkSupport.toUpperCase());

        logger.debug(networkSupport + " plan list : " + planList.toString());
        if (planList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PLAN_SUMMARY, planList);
    }

    @GetMapping("/detail")
    public ResponseMessage getPhoneDetailInfo(@RequestParam(value = "pl_code") String planCode,
                                              @RequestParam(value = "ph_code") String phoneCode,
                                              @RequestParam(value = "color", required = false) final Optional<String> color,
                                              @RequestParam(value = "dc_type") Integer discountType,
                                              @RequestParam(value = "s_id", required = false) String jSessionId) {
        // TODO Handle Exception ...
        /**
         * ?????? ??? ????????? redis??? ????????????.
         * redis data??? key??? JSessionId.
         * cookie ??? JSessionId??? ????????? ????????????, ????????? ?????? key ??? ???????????? ????????????.
         */
        if (jSessionId == null) {
            jSessionId = RandomStringUtils.random(12, true, true);
        }

        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalPhoneCode(phoneCode));
        spec = spec.and(ProductSpecification.equalIsDeleted(0));
        if (color.isPresent())
            spec = spec.and(ProductSpecification.equalPhoneColor(color.get().toString()));

        Phone phoneInfo = phoneService.getPhoneDetail(spec);
        if (phoneInfo == null)
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);

        Plan planInfo = planService.getPlanDetail(planCode);
        List<Images> imagesList = phoneService.getPhoneImageList(phoneInfo.getId(), color);

        if (imagesList.isEmpty()) {
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        }

        // redis database??? ???????????? ?????? dto ?????? - product detail ?????? ??? ????????????
        int monPrice = phoneService.calcMonthPrice(phoneInfo.getPrice(), planInfo.getPrice(), discountType);
        PhoneSummaryDto phoneSummaryDto = new PhoneSummaryDto(phoneInfo, planCode, planInfo.getName(), planInfo.getPrice(), monPrice);

        logger.debug("JSESSIONID = {}", jSessionId);
        phoneService.saveRecentProducts(jSessionId, phoneSummaryDto);

        // ????????? ?????? ?????? ????????? ????????? ??????
        phoneInfo.setDiscountType(discountType);
        PhoneDetailDto phoneDetailDto = new PhoneDetailDto(phoneInfo, planInfo, imagesList, jSessionId);
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_DETAIL, phoneDetailDto);
    }

    @PostMapping("/compare")
    public ResponseMessage comparePhones(@RequestBody List<PhoneRequestDto> compareList) {
        // TODO Handle Exception ...
        /**
         * ?????? ?????? : model code, selected_plan,
         *           discount_type, network_support, color
         *
         */
        if (compareList.isEmpty())
            throw new NoAvailableItemException("????????? ????????? ????????????");

        List<PhoneDetailDto> phoneDetailDtos = new ArrayList<>();

        for (PhoneRequestDto dto : compareList) {
            Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
            spec = spec.and(ProductSpecification.equalPhoneCode(dto.getCode()));
            spec = spec.and(ProductSpecification.equalPhoneColor(dto.getColor()));

            Phone phoneInfo = phoneService.getPhoneDetail(spec);

            if (phoneInfo == null)
                return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);

            // ????????? ?????? ?????? ????????? ????????? ??????
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
    public ResponseMessage getRecentProducts(@RequestParam(value = "s_id", required = false) final Optional<String> jSessionId) {

        if (!jSessionId.isPresent())
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);

        logger.debug("JSESSIONID = {}", jSessionId);
        List<PhoneSummaryDto> phoneCachedRecents = phoneService.getRecentProducts(jSessionId.get().toString());

        logger.debug("recent products: " + phoneCachedRecents.size());
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SUMMARY, phoneCachedRecents);
    }

    @GetMapping("/color")
    public ResponseMessage getPhoneColor(@RequestParam(value = "ph_code") String phoneCode) {
        List<Color> phoneColorList = phoneService.getPhoneColors(phoneCode);
        if (phoneColorList.isEmpty())
            return ResponseMessage.res(StatusCode.NO_CONTENT, StatusMessage.NOT_FOUND_PRODUCT);
        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_COLOR, phoneColorList);
    }

    @GetMapping("/search")
    public ResponseMessage getSearchResults(@RequestParam(value = "word") String keyword) {
        logger.debug("search word: " + keyword);

        List<Phone> searchResults = searchService.getSearchResults(keyword.trim());

        // full text index matching ?????? ???, like keyword% ?????? ??????
        if (searchResults.isEmpty()) {
            Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
            spec = spec.and(ProductSpecification.equalIsDeleted(0));
            spec = spec.and(ProductSpecification.likeNameAsKeyword(keyword.trim()));
            spec = spec.or(ProductSpecification.likeCodeAsKeyword(keyword.trim()));

            searchResults = phoneService.getSearchResults(spec);
        }

        return ResponseMessage.res(StatusCode.OK, StatusMessage.READ_PRODUCT_SEARCH, searchResults);
    }
}

package com.uplus.productservice.jpa;

import com.uplus.productservice.ProductServiceApplicationTests;
import com.uplus.productservice.controller.request.PhoneSummaryDto;
import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.repository.ImageRepository;
import com.uplus.productservice.repository.PhoneRepository;
import com.uplus.productservice.repository.ProductSpecification;
import com.uplus.productservice.service.PhoneService;
import com.uplus.productservice.repository.PlanRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.Optional;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public class ProductRepositoryTest extends ProductServiceApplicationTests {
    @Autowired
    private PhoneRepository phoneRepository;

    @Autowired
    private PlanRepository planRepository;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private PhoneService phoneService;

    @Test
    public void getPhoneList() {
        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalNetworkSupport("5G"));
        List<Phone> phoneList = phoneRepository.findAll(spec, Sort.by(Sort.Direction.DESC, "createTime"));
        for (Phone p : phoneList) {
            System.out.println(p.toString());
        }
    }

    @Test
    public void getPlanList() {
        List<Plan> planList = planRepository.findAllByNetworkSupportOrderById("5G");
        for (Plan p : planList) {
            System.out.println(p.toString());
        }
    }

    @Test
    public void getPhoneListWithConds() {
        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalNetworkSupport("5G"));
        spec = spec.and(ProductSpecification.equalCapability(3));
        spec = spec.and(ProductSpecification.equalBrandId(2));
        List<Phone> phoneList = phoneRepository.findAll(spec);
        for (Phone p : phoneList) {
            System.out.println(p.toString());
        }
    }

    @Test
    public void getPhoneImages() {
        List<Images> imagesList = imageRepository.findByPhoneId(2);
        for (Images i : imagesList) {
            System.out.println(i.toString());
        }
    }

    @Test
    public void getPhoneDetail() {
        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalPhoneCode("SM-A235N"));
        Optional<Phone> phone = phoneRepository.findOne(spec);
        if (phone.isPresent())
            System.out.println(phone.toString());
    }

    @Test
    public void updateRecentsCache() {
      String jSessionId = "FDB5E30BF20045E8A9AAFC788383680C";
      PhoneSummaryDto phoneCompareDto = PhoneSummaryDto.builder()
                                                        .code("SM-A235N")
                                                        .color("white")
                                                        .networkSupport("5G")
                                                        .discountType(1)
                                                        .plan("LUP0001")
                                                        .build();

      phoneService.saveRecentProducts(jSessionId, phoneCompareDto);
      List<PhoneSummaryDto> phoneCompareDtos = phoneService.getRecentProducts(jSessionId);
      System.out.println("cached count: " + phoneCompareDtos.size());
      for (PhoneSummaryDto recents : phoneCompareDtos) {
        System.out.println("recents: " + recents.toString());
      }
    }
}

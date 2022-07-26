package com.uplus.productservice.jpa;

import com.uplus.productservice.ProductServiceApplicationTests;
import com.uplus.productservice.controller.request.PhoneRequestDto;
import com.uplus.productservice.controller.response.PhoneSummaryDto;
import com.uplus.productservice.domain.phone.Color;
import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.plan.Plan;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.repository.ImageRepository;
import com.uplus.productservice.repository.PhoneRepository;
import com.uplus.productservice.repository.ProductSpecification;
import com.uplus.productservice.service.PhoneService;
import com.uplus.productservice.repository.PlanRepository;

import com.uplus.productservice.service.SearchService;
import org.junit.jupiter.api.Disabled;
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
//@Disabled
public class ProductRepositoryTest extends ProductServiceApplicationTests {
    @Autowired
    private PhoneRepository phoneRepository;

    @Autowired
    private PlanRepository planRepository;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private PhoneService phoneService;

    @Autowired
    private SearchService searchService;

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
        Specification<Phone> spec = (root, query, criteriaBuilder) -> null;
        spec = spec.and(ProductSpecification.equalPhoneCode("SM-A235N"));
        Optional<Phone> phone = phoneRepository.findOne(spec);
        if (phone.isPresent()) {
            PhoneSummaryDto phoneSummaryDto = new PhoneSummaryDto(phone.get(), "LPZ0000409",
                    "5G 프리미어 에센셜", 85000, 69000);
            phoneService.saveRecentProducts(jSessionId, phoneSummaryDto);
        }

        List<PhoneSummaryDto> phoneSummaryDtos = phoneService.getRecentProducts(jSessionId);
        System.out.println("cached count: " + phoneSummaryDtos.size());
        for (PhoneSummaryDto recents : phoneSummaryDtos) {
            System.out.println("recents: " + recents.toString());
        }
    }

    @Test
    public void getPhoneColors() {
        String code = "A2638-256";
        List<Color> colorList = phoneService.getPhoneColors(code);
        for (Color c : colorList) {
            System.out.println(c.getColor());
        }
    }
}

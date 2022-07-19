package com.uplus.productservice.repository;

import com.uplus.productservice.domain.phone.Brand;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.domain.phone.Storage;
import com.uplus.productservice.domain.plan.Plan;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.Fetch;
import javax.persistence.criteria.JoinType;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public class ProductSpecification {
    public static Specification<Phone> equalNetworkSupport(String networkSupport) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("networkSupport"), networkSupport);
    }

    public static Specification<Plan> equalPlanCode(String planCode) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("planCode"), planCode);
    }

    public static Specification<Phone> equalIsDeleted(Integer isDeleted) {
      return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("isDeleted"), isDeleted);
  }

    public static Specification<Phone> equalPhoneColor(String color) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("color"), color);
    }

    public static Specification<Phone> equalBrandId(Integer brandId) {
        return (root, query, criteriaBuilder) -> {
            Fetch<Phone, Brand> fetch = root.fetch("brand", JoinType.LEFT);
            return criteriaBuilder.equal(root.get("brand"), brandId);
        };
    }

    public static Specification<Phone> equalCapability(Integer capability) {
        return (root, query, criteriaBuilder) -> {
            Fetch<Phone, Storage> fetch = root.fetch("storage", JoinType.LEFT);
            return criteriaBuilder.equal(root.get("storage"), capability);
        };
    }

    public static Specification<Phone> greaterThanOrEqualCapability(Integer capability) {
        return (root, query, criteriaBuilder) -> {
            Fetch<Phone, Storage> fetch = root.fetch("storage", JoinType.LEFT);
            return criteriaBuilder.greaterThanOrEqualTo(root.get("storage"), capability);
        };
    }

    public static Specification<Phone> equalPhoneCode(String phoneCode) {
        return (root, query, criteriaBuilder) -> {
            Fetch<Phone, Storage> fetch = root.fetch("storage", JoinType.LEFT);
            fetch = root.fetch("brand", JoinType.LEFT);
            return criteriaBuilder.equal(root.get("code"), phoneCode);
        };
    }

    public static Specification<Phone> likePhoneName(String phoneName) {
        return (root, query, criteriaBuilder) -> {
            Fetch<Phone, Storage> fetch = root.fetch("storage", JoinType.LEFT);
            fetch = root.fetch("brand", JoinType.LEFT);
            return criteriaBuilder.like(root.get("name"), phoneName+"%");
        };
    }
}

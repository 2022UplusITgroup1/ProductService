package com.uplus.productservice.controller.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PhoneCompareDto {
    private String code;
    private String networkSupport;
    private Integer discountType;
    private String color;
    private String plan;
    private Integer monthPrice;
}

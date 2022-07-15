package com.uplus.productservice.controller.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PhoneCompareDto {
    private String code;
    private String networkSupport;
    private Integer discountType;
    private String color;
    private String plan;
}

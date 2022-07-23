package com.uplus.productservice.controller.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

////////////////////////////////////
// Create Date: 2022.07.15        //
// Create By: MYSEO              //
///////////////////////////////////
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PhoneRequestDto {
    private String code;
    private String networkSupport;
    private Integer discountType;
    private String color;
    private String plan;
}

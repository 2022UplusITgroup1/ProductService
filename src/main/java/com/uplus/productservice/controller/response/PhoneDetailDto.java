package com.uplus.productservice.controller.response;

import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.domain.plan.Plan;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

////////////////////////////////////
// Create Date: 2022.07.15        //
// Create By: MYSEO              //
///////////////////////////////////
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PhoneDetailDto {
    private Phone phone;
    private Plan plan;
    private List<Images> images;

    public PhoneDetailDto(Phone phone, Plan plan) {
        this.phone = phone;
        this.plan = plan;
    }
}

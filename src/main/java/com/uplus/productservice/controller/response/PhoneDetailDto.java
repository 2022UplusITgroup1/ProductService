package com.uplus.productservice.controller.response;

import com.uplus.productservice.domain.phone.Images;
import com.uplus.productservice.domain.phone.Phone;
import com.uplus.productservice.domain.plan.Plan;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PhoneDetailDto {
    private Phone phone;
    private Plan plan;
    private List<Images> images;
}

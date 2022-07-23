package com.uplus.productservice.controller.response;

import com.uplus.productservice.domain.phone.Phone;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PhoneSummaryDto extends Phone {
    private String planCode;
    private Integer monPrice;

    public PhoneSummaryDto(Phone phone, String planCode, Integer monPrice) {
        super(phone.getId(), phone.getStorage(),
                phone.getBrand(), phone.getCode(), phone.getName(),
                phone.getImgThumbnail(), phone.getNetworkSupport(),
                phone.getDiscountType(), phone.getColor(), phone.getPrice(),
                phone.getSales(), phone.getIsDeleted(), phone.getCreateTime(),
                phone.getModifyTime());
        this.planCode = planCode;
        this.monPrice = monPrice;
    }
}

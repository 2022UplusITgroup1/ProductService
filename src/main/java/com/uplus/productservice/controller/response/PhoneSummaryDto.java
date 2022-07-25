package com.uplus.productservice.controller.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.uplus.productservice.domain.phone.Phone;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class PhoneSummaryDto extends Phone {
    private String planCode;
    private String planName;
    private Integer planPrice;
    private Integer monPrice;

    public PhoneSummaryDto(Phone phone, String planCode, Integer monPrice) {
        super(phone.getId(), phone.getStorage(),
                phone.getBrand(), phone.getCode(), phone.getName(),
                phone.getImgThumbnail(), phone.getNetworkSupport(),
                phone.getDiscountType(), phone.getColor(), phone.getColorHexCode(), phone.getPrice(),
                phone.getSales(), phone.getIsDeleted(), phone.getCreateTime(),
                phone.getModifyTime());
        this.planCode = planCode;
        this.monPrice = monPrice;
    }

    public PhoneSummaryDto(Phone phone, String planCode, String planName, Integer planPrice, Integer monPrice) {
        super(phone.getId(), phone.getStorage(),
                phone.getBrand(), phone.getCode(), phone.getName(),
                phone.getImgThumbnail(), phone.getNetworkSupport(),
                phone.getDiscountType(), phone.getColor(), phone.getColorHexCode(), phone.getPrice(),
                phone.getSales(), phone.getIsDeleted(), phone.getCreateTime(),
                phone.getModifyTime());
        this.planCode = planCode;
        this.planName = planName;
        this.planPrice = planPrice;
        this.monPrice = monPrice;
    }
}

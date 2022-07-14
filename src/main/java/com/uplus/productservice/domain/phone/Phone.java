package com.uplus.productservice.domain.phone;

import com.sun.istack.NotNull;
import com.uplus.productservice.domain.TimeStamp;
import lombok.*;

import javax.persistence.*;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@ToString
@Table(name = "phone", uniqueConstraints =
        {@UniqueConstraint(name = "unq_phone_on_code_and_color",
        columnNames = {"code", "color"})})
public class Phone extends TimeStamp {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "storage_id")
    private Storage storage;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    @NotNull
    @Column(name = "code")
    private String code;

    @NotNull
    @Column(name = "name")
    private String name;

    @NotNull
    @Column(name = "img_thumbnail")
    private String imgThumbnail;

    @NotNull
    @Column(name = "network_support")
    private String networkSupport;

    @Column(name = "discount_type")
    private Integer discountType;

    @NotNull
    @Column(name = "color")
    private String color;

    @NotNull
    @Column(name = "price")
    private Integer price;
}

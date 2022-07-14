package com.uplus.productservice.domain.phone;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
@Table(name = "phone_brand_category", uniqueConstraints =
        {@UniqueConstraint(name = "unq_phone_brand_category_on_name",
        columnNames = "name")})
public class Brand extends TimeStamp {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @JsonIgnore
    private Integer id;

    @NotNull
    @Column(name = "name")
    private String name;
}

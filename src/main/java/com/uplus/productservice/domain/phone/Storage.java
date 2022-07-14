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
@Table(name = "phone_storage_category" , uniqueConstraints =
        {@UniqueConstraint(name = "unq_phone_storage_category_on_capability",
        columnNames = "capability")})
public class Storage extends TimeStamp {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @NotNull
    @Column(name = "capability")
    private Integer capability;
}

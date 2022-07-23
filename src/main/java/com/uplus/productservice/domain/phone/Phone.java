package com.uplus.productservice.domain.phone;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.NotNull;
import com.uplus.productservice.domain.TimeStamp;
import lombok.*;
import org.hibernate.search.mapper.pojo.mapping.definition.annotation.FullTextField;
import org.hibernate.search.mapper.pojo.mapping.definition.annotation.Indexed;

import javax.persistence.*;
import java.time.LocalDateTime;

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
@Table(name = "phone")
@Indexed
public class Phone {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @JsonIgnore
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
    @FullTextField()
    private String code;

    @NotNull
    @Column(name = "name")
    @FullTextField()
    private String name;

    @NotNull
    @Column(name = "img_thumbnail")
    private String imgThumbnail;

    @NotNull
    @Column(name = "network_support")
    private String networkSupport;

    @Column(name = "discount_type")
    @Setter
    private Integer discountType;

    @NotNull
    @Column(name = "color")
    private String color;

    @NotNull
    @Column(name = "price")
    private Integer price;

    @NotNull
    @Column(name = "sales")
    @Setter
    private Integer sales;

    @JsonIgnore
    @NotNull
    @Column(name = "is_deleted")
    private Integer isDeleted;

    @Column(name = "create_time")
    LocalDateTime createTime;

    @JsonIgnore
    @Column(name = "modify_time")
    LocalDateTime modifyTime;
}

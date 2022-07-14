package com.uplus.productservice.domain.phone;

import com.sun.istack.NotNull;
import com.uplus.productservice.domain.TimeStamp;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Entity
@Builder
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Table(name="phone_image", uniqueConstraints =
        {@UniqueConstraint(name = "unq_phone_image_on_img_path",
        columnNames = "img_path")})
public class Images extends TimeStamp {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @NotNull
    @Column(name = "img_path")
    private String imgPath;

    @NotNull
    @Column(name = "img_name")
    private String imgName;

    @NotNull
    @Column(name = "img_pos")
    private String imgPos;
}

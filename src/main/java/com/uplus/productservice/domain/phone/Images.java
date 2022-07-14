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
@Builder
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Table(name="phone_image", uniqueConstraints =
        {@UniqueConstraint(name = "unq_phone_image_on_img_path",
        columnNames = "img_path")})
@ToString
public class Images extends TimeStamp {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @JsonIgnore
    private Integer id;

    @NotNull
    @Column(name = "phone_id")
    @JsonIgnore
    private Integer phoneId;

    @NotNull
    @Column(name = "img_path")
    private String imgPath;

    @NotNull
    @Column(name = "img_name")
    private String imgName;

    @NotNull
    @Column(name = "img_pos")
    private String imgPos;

    @JsonIgnore
    @NotNull
    @Column(name = "is_deleted")
    private boolean isDeleted;
}

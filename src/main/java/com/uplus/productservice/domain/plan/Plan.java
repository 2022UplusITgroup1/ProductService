package com.uplus.productservice.domain.plan;

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
@Table(name = "plan", uniqueConstraints =
        {@UniqueConstraint(name = "unq_plan_on_code",
        columnNames = "code")})
@ToString
public class Plan extends TimeStamp {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @JsonIgnore
    private Integer id;

    @NotNull
    @Column(name = "code")
    private String code;

    @NotNull
    @Column(name = "name")
    private String name;

    @NotNull
    @Column(name = "network_support")
    private String networkSupport;

    @NotNull
    @Column(name = "data")
    private Integer data;

    @NotNull
    @Column(name = "message")
    private Integer message;

    @NotNull
    @Column(name = "voice")
    private Integer voice;

    @NotNull
    @Column(name = "price")
    private Integer price;

    @NotNull
    @Column(name = "share_data")
    private Integer shareData;
}

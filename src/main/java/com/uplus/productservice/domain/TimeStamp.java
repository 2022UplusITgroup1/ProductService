package com.uplus.productservice.domain;

import com.sun.istack.NotNull;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.time.LocalDateTime;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@Setter
@Getter
@MappedSuperclass
public abstract class TimeStamp {
    @Column(name = "create_time")
    LocalDateTime createTime;

    @Column(name = "modify_time")
    LocalDateTime modifyTime;
}

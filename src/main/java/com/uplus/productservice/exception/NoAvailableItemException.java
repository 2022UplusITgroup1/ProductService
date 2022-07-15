package com.uplus.productservice.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
@ResponseStatus(HttpStatus.FORBIDDEN)
public class NoAvailableItemException extends RuntimeException {
    public NoAvailableItemException(String message) {
        super(message);
    }
}

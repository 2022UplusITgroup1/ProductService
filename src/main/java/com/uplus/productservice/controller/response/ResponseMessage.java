package com.uplus.productservice.controller.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class ResponseMessage {
    private Integer status;
    private String message;
    private Object data;
}

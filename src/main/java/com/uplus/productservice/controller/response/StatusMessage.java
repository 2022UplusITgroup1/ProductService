package com.uplus.productservice.controller.response;

////////////////////////////////////
// Create Date: 2022.07.14        //
// Create By: MYSEO              //
///////////////////////////////////
public class StatusMessage {
    public static final String READ_PRODUCT_DETAIL = "모바일 상품 상세 조회 성공";
    public static final String READ_PRODUCT_SUMMARY = "모바일 상품 리스트 조회 성공";

    public static final String READ_PRODUCT_COMPARE = "모바일 상품 비교 조회 성공";
    public static final String READ_PLAN_SUMMARY = "요금제 리스트 조회 성공";
    public static final String NOT_FOUND_PRODUCT = "알맞은 결과를 찾을 수 없습니다";

    public static final String INTERNAL_SERVER_ERROR = "서버 내부 에러";

    public static final String DB_ERROR  = "데이터베이스 에러";
    public static final String DB_UPDATE_IS_ZERO = "데이터베이스 변경 Row가 없음";
    public static final String DB_UPDATE_IS_NOT_ONE = "데이터베이스 변경 Row가 1개가 아님";
}

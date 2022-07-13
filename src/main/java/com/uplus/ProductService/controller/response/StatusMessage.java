package com.uplus.ProductService.controller.response;

public class StatusMessage {
    public static final String READ_PRODUCT_DETAIL = "모바일 상품 상세내용 조회 성공";
    public static final String READ_PRODUCT_SUMMARY = "모바일 상품 리스트 조회 성공";
    public static final String NOT_FOUND_PRODUCT = "알맞은 결과를 찾을 수 없습니다";

    public static final String INTERNAL_SERVER_ERROR = "서버 내부 에러";

    public static final String DB_ERROR  = "데이터베이스 에러";
    public static final String DB_UPDATE_IS_ZERO = "데이터베이스 변경 Row가 없음";
    public static final String DB_UPDATE_IS_NOT_ONE = "데이터베이스 변경 Row가 1개가 아님";

    public static final String SEARCH_SUCCESS = "검색 성공";
    public static final String SEARCH_NO_RESULT = "검색 결과가 없습니다.";

    public static final String ORDER_SUCCESS = "주문 성공";
}

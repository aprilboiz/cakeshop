package com.swtest.cakeshop.order.dto;

public record OrderDetailResponse(
        String productId,
        Integer quantity,
        Double price
) {
}

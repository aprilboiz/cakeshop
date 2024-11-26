package com.swtest.cakeshop.order.dto;

import java.util.List;

public record OrderResponse(
        String orderId,
        String username,
        String shippingAddress,
        String status,
        String paymentMethod,
        String createDate,
        List<OrderDetailResponse> orderDetails
) {
}

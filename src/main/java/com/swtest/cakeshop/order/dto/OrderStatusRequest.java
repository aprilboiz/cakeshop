package com.swtest.cakeshop.order.dto;

import com.swtest.cakeshop.annotation.order.ValidOrderStatus;

public record OrderStatusRequest(
        Long orderId,

        @ValidOrderStatus(nullable = false)
        String status
) {
}

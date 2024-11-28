package com.swtest.cakeshop.order.dto;

import java.util.List;

public record OrderStatusResponse(
        List<String> status
) {
}

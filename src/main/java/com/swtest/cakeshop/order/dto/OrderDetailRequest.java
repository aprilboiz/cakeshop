package com.swtest.cakeshop.order.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;

public record OrderDetailRequest(
        @NotEmpty(message = "Product ID is required")
        String productId,
        @Min(value = 1, message = "Quantity must be greater than 0")
        Integer quantity,
        @Min(value = 0, message = "Price must be greater than 0")
        Double price
) {
}

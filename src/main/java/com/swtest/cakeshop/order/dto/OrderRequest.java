package com.swtest.cakeshop.order.dto;

import com.swtest.cakeshop.annotation.order.ValidOrderStatus;
import com.swtest.cakeshop.annotation.payment.ValidPaymentMethod;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

import java.util.List;

public record OrderRequest(
        @NotEmpty(message = "Shipping address is required")
        String shippingAddress,

        @ValidOrderStatus(nullable = true)
        String status,

        @ValidPaymentMethod
        String paymentMethod,

        @Size(min = 1, message = "Order details are required")
        List<OrderDetailRequest> orderDetails
) {
}

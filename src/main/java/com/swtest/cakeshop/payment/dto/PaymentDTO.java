package com.swtest.cakeshop.payment.dto;

public record PaymentDTO(
        String paymentStatus,
        String paymentMethod
) {
}

package com.swtest.cakeshop.payment.dto;

public record PaymentStatusRequest(
    Long paymentId,
    String status
) {

}

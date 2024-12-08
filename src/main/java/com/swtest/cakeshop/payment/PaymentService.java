package com.swtest.cakeshop.payment;

import com.swtest.cakeshop.payment.dto.PaymentStatusRequest;

public interface PaymentService {
    void updatePaymentStatus(PaymentStatusRequest request);
    PaymentStatusResponse getAllPaymentStatus();
}

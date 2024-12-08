package com.swtest.cakeshop.payment;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.order.Order;
import com.swtest.cakeshop.order.OrderRepository;
import com.swtest.cakeshop.payment.dto.PaymentStatusRequest;

@Service
public class PaymentServiceImpl implements PaymentService{
    private final PaymentRepository paymentRepository;


    public PaymentServiceImpl(PaymentRepository paymentRepository) {
        this.paymentRepository = paymentRepository;
    }

    @Override
    public void updatePaymentStatus(PaymentStatusRequest request){
        Payment payment = paymentRepository.findById(request.paymentId()).orElseThrow(() -> new NotFoundException(String.format("The payment id %d cannot be found", request.paymentId())));

        payment.setStatus(PaymentStatus.valueOf(request.status()));
        paymentRepository.save(payment);
    }

    @Override
    public PaymentStatusResponse getAllPaymentStatus() {
        List<String> paymentStatus = Arrays.stream(PaymentStatus.values())
                .map(Enum::name)
                .toList();
        return new PaymentStatusResponse(paymentStatus);
    }
}

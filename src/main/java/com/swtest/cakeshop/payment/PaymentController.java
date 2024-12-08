package com.swtest.cakeshop.payment;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.swtest.cakeshop.payment.dto.PaymentStatusRequest;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/payment")
public class PaymentController {
    private final PaymentService paymentService;

    public PaymentController(PaymentService paymentService) {
        this.paymentService = paymentService;
    }

    @Operation(summary = "Get all available payment status, require ADMIN", tags = { "Payment" })
    @ApiResponse(responseCode = "200", description = "Get successfully")
    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/status")
    public ResponseEntity<PaymentStatusResponse> getAllPaymentStatus() {
        return ResponseEntity.ok(paymentService.getAllPaymentStatus());
    }

    @Operation(summary = "Update an payment's status, require ADMIN", tags = { "Payment" })
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Updated successfully"),
            @ApiResponse(responseCode = "404", description = "Payment not found")
    })
    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/status")
    public ResponseEntity<Void> updatePaymentStatus(@Valid @RequestBody PaymentStatusRequest request) {
        paymentService.updatePaymentStatus(request);
        return ResponseEntity.noContent().build();
    }
}

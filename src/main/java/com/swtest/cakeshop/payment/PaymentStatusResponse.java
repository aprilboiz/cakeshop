package com.swtest.cakeshop.payment;

import java.util.List;

public record PaymentStatusResponse(
    List<String> status
) {
    
}

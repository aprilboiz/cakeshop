package com.swtest.cakeshop.annotation.payment;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = PaymentMethodValidator.class)
@Target({ElementType.FIELD, ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidPaymentMethod {
    boolean nullable() default false;
    String message() default "Invalid payment method";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}

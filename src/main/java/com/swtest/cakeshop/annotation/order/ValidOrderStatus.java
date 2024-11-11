package com.swtest.cakeshop.annotation.order;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = OrderStatusValidator.class)
@Target({ElementType.FIELD, ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidOrderStatus {
    boolean nullable() default false;
    String message() default "Invalid order status";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}

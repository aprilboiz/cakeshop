package com.swtest.cakeshop.annotation.order;

import com.swtest.cakeshop.order.OrderStatus;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class OrderStatusValidator implements ConstraintValidator<ValidOrderStatus, String> {
    private boolean nullable;
    private String message;

    @Override
    public void initialize(ValidOrderStatus constraintAnnotation) {
        this.nullable = constraintAnnotation.nullable();
        this.message = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (nullable && value == null) {
            return true;
        }

        boolean isValid = validate(value);

        if (!isValid) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(message)
                    .addConstraintViolation();
        }

        return isValid;
    }

    private boolean validate(String value) {
        if (value == null) {
            return false;
        }
        try {
            OrderStatus.valueOf(value.toUpperCase());
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }
}

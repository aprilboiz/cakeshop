package com.swtest.cakeshop.exception;

public class NotEnoughProduct extends RuntimeException {
    public NotEnoughProduct(String message) {
        super(message);
    }
}

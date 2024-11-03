package com.swtest.cakeshop.exception;

public class DuplicateException extends RuntimeException{
    public DuplicateException(String message) {
        super(message);
    }
}

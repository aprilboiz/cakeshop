package com.swtest.cakeshop.auth.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

public record RegisterRequest(
        @NotEmpty(message = "Username is required")
        String username,

        @NotEmpty(message = "Password is required")
        @Size(min = 8, message = "Password must be at least 8 characters long")
        String password,

        @NotEmpty(message = "Full name is required")
        String name,

        @NotEmpty(message = "Email is required")
        @Email(message = "Email is invalid")
        String email,

        @NotEmpty(message = "Phone number is required")
        @Size(min = 10, max = 10, message = "Phone number must be 10 digits long")
        String phoneNumber,

        @NotEmpty(message = "Address is required")
        String address
) {}

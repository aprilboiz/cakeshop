package com.swtest.cakeshop.user.person.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record PersonRequest(
        String name,
        @Email(message = "Invalid email")
        @NotBlank(message = "Email is required")
        String email,
        String address,
        @Size(min = 10, max = 10, message = "Phone number must be 10 digits")
        String phoneNumber
) {
}

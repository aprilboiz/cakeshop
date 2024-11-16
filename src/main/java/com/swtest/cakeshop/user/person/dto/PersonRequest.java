package com.swtest.cakeshop.user.person.dto;

import jakarta.validation.constraints.NotBlank;

public record PersonRequest(
        String name,
        @NotBlank(message = "Email is required")
        String email,
        String address,
        String phoneNumber
) {
}

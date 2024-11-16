package com.swtest.cakeshop.user.person.dto;

public record PersonResponse(
        Long id,
        String name,
        String email,
        String address,
        String phoneNumber
) {
}

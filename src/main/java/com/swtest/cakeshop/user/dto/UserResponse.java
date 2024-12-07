package com.swtest.cakeshop.user.dto;

import com.swtest.cakeshop.user.person.dto.PersonResponse;

import java.util.List;
import java.util.Optional;

public record UserResponse(
        String userId,
        String username,
        String createdDate,
        Optional<PersonResponse> info,
        List<String> roles
) {
}

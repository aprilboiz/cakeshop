package com.swtest.cakeshop.user.dto;

import com.swtest.cakeshop.user.person.Person;
import com.swtest.cakeshop.user.person.dto.PersonResponse;

import java.util.List;

public record UserResponse(
        String userId,
        String username,
        String createdDate,
        PersonResponse info,
        List<String> roles
) {
}

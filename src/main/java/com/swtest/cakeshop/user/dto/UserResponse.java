package com.swtest.cakeshop.user.dto;

import java.util.List;

public record UserResponse(
        String userId,
        String username,
        List<String> roles
) {
}

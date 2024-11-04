package com.swtest.cakeshop.product.category.dto;

import jakarta.validation.constraints.NotEmpty;

public record CategoryRequest(
        @NotEmpty(message = "Category name is required.")
        String name
) {
}

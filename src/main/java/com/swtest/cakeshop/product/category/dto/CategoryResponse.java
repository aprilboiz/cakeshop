package com.swtest.cakeshop.product.category.dto;

import java.util.List;

public record CategoryResponse(
        List<String> categories
) {
}

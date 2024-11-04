package com.swtest.cakeshop.product.dto;

import java.util.List;

public record ProductResponse(
        Long id,
        String name,
        Double price,
        String category,
        List<String> images
) {
}

package com.swtest.cakeshop.product.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public record ProductRequest(
        @NotEmpty(message = "Product name is required")
        String name,

        @NotNull(message = "Product price is required")
        @Min(value = 0, message = "Product price must be greater than 0")
        Double price,

        @NotNull(message = "Product quantity is required")
        @Min(value = 0, message = "Product quantity must be greater than 0")
        Integer quantity,

        @NotEmpty(message = "Product category is required")
        String category,

        @Size(min = 1, message = "Product image is required")
        List<MultipartFile> images
) {
}

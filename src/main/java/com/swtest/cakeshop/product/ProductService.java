package com.swtest.cakeshop.product;

import com.swtest.cakeshop.product.dto.ProductRequest;
import com.swtest.cakeshop.product.dto.ProductResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import java.io.IOException;

public interface ProductService {
    ProductResponse createProduct(ProductRequest request) throws IOException;
    ProductResponse getProductById(Long id);
    void deleteProductById(Long id);
    ProductResponse updateProduct(Long id, ProductRequest request) throws IOException;
    Page<ProductResponse> getProducts(PageRequest pageRequest);
    void updateProductQuantity(Long id, Integer newQuantity);
}

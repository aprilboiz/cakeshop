package com.swtest.cakeshop.product;

import com.swtest.cakeshop.exception.DuplicateException;
import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.product.category.Category;
import com.swtest.cakeshop.product.category.CategoryService;
import com.swtest.cakeshop.product.dto.ProductRequest;
import com.swtest.cakeshop.product.dto.ProductResponse;
import com.swtest.cakeshop.product.storing.StorageService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.stream.Collectors;

import java.util.*;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CategoryService categoryService;
    private final StorageService storageService;

    public ProductService(ProductRepository productRepository, CategoryService categoryService, StorageService storageService){
        this.productRepository = productRepository;
        this.categoryService = categoryService;
        this.storageService = storageService;
    }

    public void createProduct(ProductRequest request) throws IOException {
        String productName = request.name();
        Optional<Product> existingProduct = productRepository.findByName(productName);
        if (existingProduct.isPresent()) {
            throw new DuplicateException(String.format("This product '%s' already exists", existingProduct));
        }
        Category productCategory = categoryService.findCategoryByName(request.category());
        List<String> imagePaths = new ArrayList<>();
        for (MultipartFile image : request.images()){
            imagePaths.add(storageService.storeImage(image));
        }
        Product product = new Product(productName, request.price(), productCategory, imagePaths);
        productRepository.save(product);
    }

    public ProductResponse getProductById(Long id){
        Product product = productRepository.findById(id).orElseThrow(() -> new NotFoundException(String.format("Product with id %s is not exists", id)));
        return product.toDTO();
    }

    public void deleteProductById(Long id){
        productRepository.deleteById(id);
    }

    public Page<ProductResponse> getProducts(int page, int size){
        Page<Product> products = productRepository.findAll(PageRequest.of(page, size));
        Page<Product> productPage = productRepository.findAll(PageRequest.of(page, size));

        // Map Product to ProductDTO
        List<ProductResponse> responses = productPage.getContent().stream()
                .map(Product::toDTO)
                .collect(Collectors.toList());

        return new PageImpl<>(responses, PageRequest.of(page, size), productPage.getTotalElements());
    }
}

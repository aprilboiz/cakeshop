package com.swtest.cakeshop.product;

import com.swtest.cakeshop.exception.DuplicateException;
import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.product.category.Category;
import com.swtest.cakeshop.product.category.CategoryService;
import com.swtest.cakeshop.product.dto.ProductRequest;
import com.swtest.cakeshop.product.dto.ProductResponse;
import com.swtest.cakeshop.storage.CloudinaryService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.stream.Collectors;

import java.util.*;

@Service
public class ProductServiceImpl implements ProductService {
    private final ProductRepository productRepository;
    private final CategoryService categoryService;
    private final CloudinaryService cloudinaryService;

    public ProductServiceImpl(ProductRepository productRepository, CategoryService categoryService, CloudinaryService cloudinaryService){
        this.productRepository = productRepository;
        this.categoryService = categoryService;
        this.cloudinaryService = cloudinaryService;
    }

    @Override
    public ProductResponse createProduct(ProductRequest request) throws IOException {
        String productName = request.name();
        Optional<Product> existingProduct = productRepository.findByName(productName);
        if (existingProduct.isPresent()) {
            throw new DuplicateException(String.format(
                    "This product '%s' already exists with id %d",
                    existingProduct.get().getName(),
                    existingProduct.get().getId())
            );
        }
        Category productCategory = categoryService.findCategoryByName(request.category());
        List<String> imagePaths = new ArrayList<>();
        for (MultipartFile image : request.images()){
            imagePaths.add(cloudinaryService.uploadFile(image, "images"));
        }
        Product product = new Product(productName, request.price(), productCategory, imagePaths);
        return productRepository.save(product).toDTO();
    }

    @Override
    public ProductResponse getProductById(Long id){
        Product product = productRepository
                .findById(id)
                .orElseThrow(() -> new NotFoundException(String.format("Product with id '%s' is not exists", id)));
        return product.toDTO();
    }

    @Override
    public void deleteProductById(Long id){
        Product product = productRepository
                .findById(id)
                .orElseThrow(() -> new NotFoundException(String.format("Product with id %s is not exists", id)));
        productRepository.deleteById(product.getId());
    }

    @Override
    public ProductResponse updateProduct(Long id, ProductRequest request) throws IOException{
        Product product = productRepository
                .findById(id)
                .orElseThrow(() -> new NotFoundException(String.format("Product with id %s is not exists", id)));
        Category productCategory = categoryService.findCategoryByName(request.category());
        List<String> imagePaths = new ArrayList<>();
        for (MultipartFile image : request.images()){
            imagePaths.add(cloudinaryService.uploadFile(image, "images"));
        }
        product.setName(request.name());
        product.setPrice(request.price());
        product.setCategory(productCategory);
        product.setImages(imagePaths);
        return productRepository.save(product).toDTO();
    }

    @Override
    public Page<ProductResponse> getProducts(PageRequest pageRequest){
        Page<Product> products = productRepository.findAll(pageRequest);

        // Map Product to ProductDTO
        List<ProductResponse> responses = products.getContent().stream()
                .map(Product::toDTO)
                .collect(Collectors.toList());

        return new PageImpl<>(responses, pageRequest, products.getTotalElements());
    }
}

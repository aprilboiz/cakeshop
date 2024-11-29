package com.swtest.cakeshop.product;

import com.swtest.cakeshop.product.category.CategoryService;
import com.swtest.cakeshop.product.category.dto.CategoryRequest;
import com.swtest.cakeshop.product.category.dto.CategoryResponse;
import com.swtest.cakeshop.product.dto.ProductRequest;
import com.swtest.cakeshop.product.dto.ProductResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.IOException;
import java.net.URI;
import java.util.concurrent.ExecutionException;

@RestController
@RequestMapping("/api/products")
public class ProductController {
    private final ProductService productService;
    private final CategoryService categoryService;

    public ProductController(ProductService productService, CategoryService categoryService){
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @Operation(summary = "Create a new product", tags = {"Product"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Product created successfully"),
            @ApiResponse(responseCode = "500", description = "Error saving product")
    })
    @PostMapping(consumes = "multipart/form-data")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<String> createProduct(@Valid @ModelAttribute ProductRequest product, UriComponentsBuilder ucb){
        try {
            ProductResponse createdProduct = productService.createProduct(product);
            URI newProductUri = ucb.path("/api/products/{id}")
                    .buildAndExpand(createdProduct.id())
                    .toUri();
            return ResponseEntity.created(newProductUri).build();
        } catch (IOException e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error saving product!");
        }
    }

    @Operation(summary = "Get a product by id", tags = {"Product"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Product found"),
            @ApiResponse(responseCode = "404", description = "Product not found")
    })
    @GetMapping("/{id}")
    public ResponseEntity<ProductResponse> getProductById(@PathVariable Long id){
        ProductResponse product = productService.getProductById(id);
        return ResponseEntity.ok(product);
    }

    @Operation(summary = "Get all products", tags = {"Product"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Products found")
    })
    @GetMapping
    public ResponseEntity<Page<ProductResponse>> getAllProducts(Pageable pageable){
        PageRequest pageRequest = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                pageable.getSortOr(Sort.by(Sort.Direction.ASC, "price"))
        );
        Page<ProductResponse> products = productService.getProducts(pageRequest);
        return ResponseEntity.ok(products);
    }

    @Operation(summary = "Delete a product by id, require ADMIN", tags = {"Product"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Product deleted"),
            @ApiResponse(responseCode = "404", description = "Product not found")
    })
    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Void> deleteProductById(@PathVariable Long id){
        productService.deleteProductById(id);
        return ResponseEntity.noContent().build();
    }

    @Operation(summary = "Update or create a product, require ADMIN", tags = {"Product"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Product updated"),
            @ApiResponse(responseCode = "500", description = "Error saving product")
    })
    @PutMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Void> updateOrCreateProduct(@PathVariable Long id, @Valid @RequestBody ProductRequest product){
        try {
            productService.updateProduct(id, product);
            return ResponseEntity.noContent().build();
        } catch (IOException e){
            throw new RuntimeException("Error saving product!");
        }
    }

    @Operation(summary = "Create a new category, require ADMIN", tags = {"Product"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Category created"),
            @ApiResponse(responseCode = "409", description = "Category already exists")
    })
    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/categories")
    public ResponseEntity<Void> createCategory(@Valid @RequestBody CategoryRequest request){
        categoryService.createCategory(request);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @Operation(summary = "Get all the categories", tags = {"Product"})
    @ApiResponse(responseCode = "200", description = "Get successfully")
    @GetMapping("/categories")
    public ResponseEntity<CategoryResponse> getAllCategories(){
        return ResponseEntity.ok(categoryService.getAllCategories());
    }
}

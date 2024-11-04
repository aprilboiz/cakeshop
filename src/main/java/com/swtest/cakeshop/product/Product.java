package com.swtest.cakeshop.product;

import com.swtest.cakeshop.product.category.Category;
import com.swtest.cakeshop.product.dto.ProductResponse;
import com.swtest.cakeshop.product.storing.StorageService;
import com.swtest.cakeshop.utils.ImageUtils;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    private Long id;

    private String name;
    private Double price;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;

    @ElementCollection
    List<String> images;

    public Product(String name, Double price, Category category, List<String> images){
        this.name = name;
        this.price = price;
        this.category = category;
        this.images = images;
    }

    public ProductResponse toDTO(){
        ImageUtils imageUtils = new ImageUtils();
        List<String> imageUrls = images.stream()
                .map(imageUtils::convertPathToUrl)
                .toList();
        return new ProductResponse(id, name, price, category.getName(), imageUrls);
    }
}

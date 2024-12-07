package com.swtest.cakeshop.product;

import com.swtest.cakeshop.order.OrderDetail;
import com.swtest.cakeshop.product.category.Category;
import com.swtest.cakeshop.product.dto.ProductResponse;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

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
    private Integer quantity;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;

    @ElementCollection
    List<String> images;

    @OneToMany(mappedBy = "product")
    private List<OrderDetail> orderDetails;

    public Product(String name, Double price, Integer quantity, Category category, List<String> images){
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.category = category;
        this.images = images;
    }

    public ProductResponse toDTO(){
        return new ProductResponse(id, name, price, quantity, category.getName(), images);
    }
}

package com.swtest.cakeshop.order;

import com.swtest.cakeshop.order.dto.OrderDetailResponse;
import com.swtest.cakeshop.product.Product;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "order_details")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "order_detail_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private Integer quantity;
    private Double price;

    public OrderDetailResponse toDTO() {
        return new OrderDetailResponse(
            this.product.getId().toString(),
            this.quantity,
            this.price
        );
    }
}

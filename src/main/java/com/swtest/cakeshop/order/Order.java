package com.swtest.cakeshop.order;

import com.swtest.cakeshop.order.dto.OrderResponse;
import com.swtest.cakeshop.payment.Payment;
import com.swtest.cakeshop.user.User;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.Instant;
import java.util.List;

@Data
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "order_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @CreatedDate
    private Instant createdAt;

    private Double total;
    private String shippingAddress;

    @OneToOne
    @JoinColumn(name = "payment_id")
    private Payment payment;

    @Enumerated(EnumType.STRING)
    private OrderStatus status;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;

    public OrderResponse toDTO() {
        return new OrderResponse(
            this.id.toString(),
            this.user.getId().toString(),
            this.shippingAddress,
            this.status.toString(),
            this.orderDetails.stream()
                .map(OrderDetail::toDTO)
                .toList()
        );
    }
}

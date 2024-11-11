package com.swtest.cakeshop.order;

import com.swtest.cakeshop.order.dto.OrderDetailRequest;
import com.swtest.cakeshop.order.dto.OrderRequest;
import com.swtest.cakeshop.order.dto.OrderResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface OrderService {
    OrderResponse createOrder(OrderRequest orderRequest);
    OrderResponse getOrder(Long orderId);
    Page<OrderResponse> getOrders(PageRequest pageRequest);
    OrderResponse updateOrder(Long orderId, OrderRequest orderRequest);
    void deleteOrder(Long orderId);
    void updateOrderStatus(Long orderId, String status);
}

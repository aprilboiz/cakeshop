package com.swtest.cakeshop.order;

import com.swtest.cakeshop.order.dto.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;


public interface OrderService {
    OrderResponse createOrder(OrderRequest orderRequest);
    OrderResponse getOrder(Long orderId);
    Page<OrderResponse> getOrders(PageRequest pageRequest);
    OrderResponse updateOrder(Long orderId, OrderRequest orderRequest);
    void deleteOrder(Long orderId);
    void updateOrderStatus(OrderStatusRequest request);
    OrderStatusResponse getAllOrderStatus();
}

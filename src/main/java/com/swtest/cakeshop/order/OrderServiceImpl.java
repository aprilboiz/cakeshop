package com.swtest.cakeshop.order;

import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.order.dto.OrderDetailRequest;
import com.swtest.cakeshop.order.dto.OrderRequest;
import com.swtest.cakeshop.order.dto.OrderResponse;
import com.swtest.cakeshop.payment.Payment;
import com.swtest.cakeshop.payment.PaymentMethod;
import com.swtest.cakeshop.payment.PaymentRepository;
import com.swtest.cakeshop.payment.PaymentStatus;
import com.swtest.cakeshop.product.Product;
import com.swtest.cakeshop.product.ProductRepository;
import com.swtest.cakeshop.user.User;
import com.swtest.cakeshop.user.UserService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderServiceImpl implements OrderService{
    private final OrderRepository orderRepository;
    private final UserService userService;
    private final ProductRepository productRepository;
    private final PaymentRepository paymentRepository;

    public OrderServiceImpl(OrderRepository orderRepository, UserService userService, ProductRepository productRepository, PaymentRepository paymentRepository) {
        this.orderRepository = orderRepository;
        this.userService = userService;
        this.productRepository = productRepository;
        this.paymentRepository = paymentRepository;
    }

    @Override
    public OrderResponse createOrder(OrderRequest orderRequest){
        User currentUser = userService.getCurrentUser();

        Order order = new Order();
        order.setUser(currentUser);
        order.setTotal(orderRequest.orderDetails().stream()
                .mapToDouble(orderDetailRequest -> orderDetailRequest.price() * orderDetailRequest.quantity())
                .sum());
        order.setShippingAddress(orderRequest.shippingAddress());
        order.setStatus(OrderStatus.PROCESSING);

        List<OrderDetail> orderDetails = orderRequest.orderDetails().stream()
                .map(orderDetailRequest -> {
                    Long productId = Long.valueOf(orderDetailRequest.productId());
                    Product product = productRepository
                            .findById(productId)
                            .orElseThrow(() -> new NotFoundException(String.format("Product with id %d not found", productId)));

                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setProduct(product);
                    orderDetail.setQuantity(orderDetailRequest.quantity());
                    orderDetail.setPrice(orderDetailRequest.price());
                    orderDetail.setOrder(order);
                    return orderDetail;
                })
                .toList();
        order.setOrderDetails(orderDetails);

        Payment orderPayment = new Payment();
        orderPayment.setAmount(order.getTotal());
        orderPayment.setStatus(PaymentStatus.PENDING);
        orderPayment.setMethod(PaymentMethod.valueOf(orderRequest.paymentMethod().toUpperCase()));
        paymentRepository.save(orderPayment);

        order.setPayment(orderPayment);

        return orderRepository.save(order).toDTO();
    }

    @Override
    public Page<OrderResponse> getOrders(PageRequest pageRequest){
        User currentUser = userService.getCurrentUser();
        Page<Order> orders;

        if (currentUser.getRoles().stream().anyMatch(role -> "ADMIN".equals(role.getName()))) {
            orders = orderRepository.findAll(pageRequest);
        }else {
            orders = orderRepository.findAllByUser(currentUser, pageRequest);
        }

        List<OrderResponse> orderResponses = orders.stream()
                .map(Order::toDTO)
                .toList();

        return new PageImpl<>(orderResponses, orders.getPageable(), orders.getTotalElements());
    }

    @Override
    public OrderResponse updateOrder(Long orderId, OrderRequest orderRequest) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new IllegalArgumentException(String.format("Order with id %d not found", orderId)));

        order.setShippingAddress(orderRequest.shippingAddress());

        if (orderRequest.status() != null) {
            order.setStatus(OrderStatus.valueOf(orderRequest.status()));
        }else{
            throw new IllegalArgumentException("Status is required");
        }

        List<OrderDetail> orderDetails = orderRequest.orderDetails().stream()
                .map(orderDetailRequest -> {
                    Long productId = Long.valueOf(orderDetailRequest.productId());
                    Product product = productRepository
                            .findById(productId)
                            .orElseThrow(() -> new IllegalArgumentException(String.format("Product with id %d not found", productId)));

                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setProduct(product);
                    orderDetail.setQuantity(orderDetailRequest.quantity());
                    orderDetail.setPrice(orderDetailRequest.price());
                    orderDetail.setOrder(order);
                    return orderDetail;
                })
                .toList();

        order.setOrderDetails(orderDetails);

        return orderRepository.save(order).toDTO();
    }

    @Override
    public OrderResponse getOrder(Long orderId){
        Optional<Order> order;
        User currentUser = userService.getCurrentUser();

        if (currentUser.getRoles().stream().anyMatch(role -> "ADMIN".equals(role.getName()))) {
            order = orderRepository.findById(orderId);
        }else{
            order = orderRepository.findByIdAndUser(orderId, userService.getCurrentUser());
        }

        return order.orElseThrow(() -> new NotFoundException(String.format("Order with id '%d' not found", orderId))).toDTO();
    }

    @Override
    public void deleteOrder(Long orderId){
        orderRepository.deleteById(orderId);
    }

    @Override
    public void updateOrderStatus(Long orderId, String status) {
        Order order = orderRepository.findByIdAndUser(orderId, userService.getCurrentUser())
                .orElseThrow(() -> new IllegalArgumentException(String.format("Order with id %d not found", orderId)));

        order.setStatus(OrderStatus.valueOf(status));
        orderRepository.save(order);
    }
}

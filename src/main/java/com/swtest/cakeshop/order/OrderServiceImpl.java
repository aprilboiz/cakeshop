package com.swtest.cakeshop.order;

import com.swtest.cakeshop.exception.InvalidActionException;
import com.swtest.cakeshop.exception.NotEnoughProduct;
import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.order.dto.*;
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

import java.util.Arrays;
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
        order.setStatus(OrderStatus.NEW);

        List<OrderDetail> orderDetails = orderRequest.orderDetails().stream()
                .map(orderDetailRequest -> {
                    Long requestProductId = Long.valueOf(orderDetailRequest.productId());
                    Integer requestProductQuantity = orderDetailRequest.quantity();
                    Product product = productRepository
                            .findById(requestProductId)
                            .orElseThrow(() -> new NotFoundException(String.format("Product with id %d not found", requestProductId)));

                    if (requestProductQuantity > product.getQuantity()) {
                        throw new NotEnoughProduct("The requested product is not enough product");
                    }

                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setProduct(product);
                    orderDetail.setQuantity(requestProductQuantity);
                    orderDetail.setPrice(orderDetailRequest.price());
                    orderDetail.setOrder(order);

                    product.setQuantity(product.getQuantity() - requestProductQuantity);
                    productRepository.save(product);
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
    public void updateOrderStatus(OrderStatusRequest request) throws InvalidActionException {
        Order order = orderRepository.findById(request.orderId())
                .orElseThrow(() -> new IllegalArgumentException(String.format("Order with id %d not found", request.orderId())));
        OrderStatus status = OrderStatus.valueOf(request.status());
        switch (status) {
            case DELIVERED:
                if (order.getPayment().getStatus() != PaymentStatus.PAID) {
                    throw new InvalidActionException("This action cannot be done since payment status is not PAID");
                }
                break;
            case CANCELLED:
                order.getOrderDetails().forEach((detail) -> {
                    Product product = productRepository.findById(detail.getId()).orElseThrow(() -> new NotFoundException("Not found the product associate with this order id"));
                    product.setQuantity(product.getQuantity() + detail.getQuantity());
                    productRepository.save(product);
                });
                order.getPayment().setStatus(PaymentStatus.FAILED);
                break;
            default:
                break;
        }

        order.setStatus(status);
        orderRepository.save(order);
    }

    @Override
    public OrderStatusResponse getAllOrderStatus(){
        List<String> orderStatuses = Arrays.stream(OrderStatus.values())
                .map(Enum::name)
                .toList();
        return new OrderStatusResponse(orderStatuses);
    }
}

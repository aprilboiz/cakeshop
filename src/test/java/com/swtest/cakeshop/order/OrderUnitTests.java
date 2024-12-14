package com.swtest.cakeshop.order;

import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.order.dto.*;
import com.swtest.cakeshop.payment.Payment;
import com.swtest.cakeshop.payment.PaymentMethod;
import com.swtest.cakeshop.payment.PaymentRepository;
import com.swtest.cakeshop.payment.PaymentStatus;
import com.swtest.cakeshop.product.Product;
import com.swtest.cakeshop.product.ProductRepository;
import com.swtest.cakeshop.role.Role;
import com.swtest.cakeshop.user.User;
import com.swtest.cakeshop.user.UserService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class OrderUnitTests {

    @Mock
    private OrderRepository orderRepository;
    @Mock
    private UserService userService;
    @Mock
    private ProductRepository productRepository;
    @Mock
    private PaymentRepository paymentRepository;

    private OrderServiceImpl orderService;
    private User testUser;
    private Product testProduct;
    private OrderRequest testOrderRequest;
    private Order testOrder;
    private OrderDetail testOrderDetail;
    private Payment testPayment;

    @BeforeEach
    void setUp() {
        orderService = new OrderServiceImpl(orderRepository, userService, productRepository, paymentRepository);

        testUser = new User();
        testUser.setId(1L);
        testUser.setRoles(Set.of(new Role("USER")));

        testProduct = new Product();
        testProduct.setId(1L);
        testProduct.setQuantity(3);

        OrderDetailRequest orderDetailRequest = new OrderDetailRequest("1", 2, 10.0);
        testOrderRequest = new OrderRequest(
                "123 Test St",
                "PROCESSING",
                "CREDIT_CARD",
                List.of(orderDetailRequest));

        testPayment = new Payment();
        testPayment.setMethod(PaymentMethod.CREDIT_CARD);
        testPayment.setStatus(PaymentStatus.PENDING);
        testPayment.setAmount(20.0);

        testOrderDetail = new OrderDetail();
        testOrderDetail.setProduct(testProduct);
        testOrderDetail.setQuantity(2);
        testOrderDetail.setPrice(10.0);

        testOrder = new Order();
        testOrder.setId(1L);
        testOrder.setUser(testUser);
        testOrder.setShippingAddress("123 Test St");
        testOrder.setStatus(OrderStatus.NEW);
        testOrder.setPayment(testPayment);
        testOrder.setCreatedAt(new Date().toInstant());
        testOrder.setTotal(20.0);
        testOrder.setOrderDetails(List.of(testOrderDetail));
    }

    @Test
    void createOrder_Success() {
        when(userService.getCurrentUser()).thenReturn(testUser);
        when(productRepository.findById(1L)).thenReturn(Optional.of(testProduct));
        when(paymentRepository.save(any())).thenReturn(testPayment);
        when(orderRepository.save(any())).thenReturn(testOrder);

        OrderResponse response = orderService.createOrder(testOrderRequest);

        assertNotNull(response);
        verify(orderRepository).save(any());
        verify(paymentRepository).save(any());
    }

    @Test
    void createOrder_ProductNotFound() {
        when(userService.getCurrentUser()).thenReturn(testUser);
        when(productRepository.findById(1L)).thenReturn(Optional.empty());

        assertThrows(NotFoundException.class, () -> orderService.createOrder(testOrderRequest));
    }

    @Test
    void getOrders_AdminUser() {
        User adminUser = new User();
        adminUser.setRoles(Set.of(new Role("ADMIN")));
        PageRequest pageRequest = PageRequest.of(0, 10);
        Page<Order> orderPage = new PageImpl<>(List.of(testOrder));

        when(userService.getCurrentUser()).thenReturn(adminUser);
        when(orderRepository.findAll(pageRequest)).thenReturn(orderPage);

        Page<OrderResponse> response = orderService.getOrders(pageRequest);

        assertNotNull(response);
        verify(orderRepository).findAll(pageRequest);
    }

    @Test
    void getOrders_RegularUser() {
        PageRequest pageRequest = PageRequest.of(0, 10);
        Page<Order> orderPage = new PageImpl<>(List.of(testOrder));

        when(userService.getCurrentUser()).thenReturn(testUser);
        when(orderRepository.findAllByUser(testUser, pageRequest)).thenReturn(orderPage);

        Page<OrderResponse> response = orderService.getOrders(pageRequest);

        assertNotNull(response);
        verify(orderRepository).findAllByUser(testUser, pageRequest);
    }

    @Test
    void updateOrder_Success() {
        Order existingOrder = testOrder;
        when(orderRepository.findById(1L)).thenReturn(Optional.of(existingOrder));
        when(productRepository.findById(1L)).thenReturn(Optional.of(testProduct));
        when(orderRepository.save(any())).thenReturn(existingOrder);

        OrderResponse response = orderService.updateOrder(1L, testOrderRequest);

        assertNotNull(response);
        verify(orderRepository).save(any());
    }

    @Test
    void updateOrder_OrderNotFound() {
        when(orderRepository.findById(1L)).thenReturn(Optional.empty());

        assertThrows(IllegalArgumentException.class, () -> orderService.updateOrder(1L, testOrderRequest));
    }

    @Test
    void deleteOrder_Success() {
        orderService.deleteOrder(1L);
        verify(orderRepository).deleteById(1L);
    }

    @Test
    void getAllOrderStatus_Success() {
        OrderStatusResponse response = orderService.getAllOrderStatus();
        assertNotNull(response);
        assertFalse(response.status().isEmpty());
    }
}
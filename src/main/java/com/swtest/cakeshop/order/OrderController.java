package com.swtest.cakeshop.order;

import com.swtest.cakeshop.order.dto.OrderRequest;
import com.swtest.cakeshop.order.dto.OrderResponse;
import com.swtest.cakeshop.order.dto.OrderStatusRequest;
import com.swtest.cakeshop.order.dto.OrderStatusResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PagedModel;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping("/api/orders")
public class OrderController {
    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @Operation(summary = "Create a new order", tags = {"Order"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Order created successfully"),
            @ApiResponse(responseCode = "404", description = "Product or User not found")
    })
    @PostMapping
    public ResponseEntity<Void> createOrder(@Valid @RequestBody OrderRequest orderRequest, UriComponentsBuilder ucb){
        OrderResponse createdOrder = orderService.createOrder(orderRequest);
        URI locationUri = ucb.path("/api/orders/{id}")
                .buildAndExpand(createdOrder.orderId())
                .toUri();
        return ResponseEntity.created(locationUri).build();
    }

    @Operation(summary = "Get all orders", tags = {"Order"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Get successfully", content = @Content(schema = @Schema(implementation = OrderResponse.class))),
    })
    @GetMapping
    public ResponseEntity<Page<OrderResponse>> getOrders(Pageable pageable){
        PageRequest pageRequest = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                pageable.getSortOr(Sort.by(Sort.Direction.ASC, "total"))
        );
        return ResponseEntity.ok(orderService.getOrders(pageRequest));
    }

    @Operation(summary = "Get an order by id", tags = {"Order"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Order found"),
            @ApiResponse(responseCode = "404", description = "Order not found or not belonging to that USER")
    })
    @GetMapping("/{id}")
    public ResponseEntity<OrderResponse> getOrder(@PathVariable Long id){
        return ResponseEntity.ok(orderService.getOrder(id));
    }

    @Operation(summary = "Delete an order by id, require ADMIN", tags = {"Order"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Order deleted"),
            @ApiResponse(responseCode = "404", description = "Order not found")
    })
    @PreAuthorize("hasRole('ADMIN')")
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteOrder(@PathVariable Long id){
        orderService.deleteOrder(id);
        return ResponseEntity.noContent().build();
    }

    @Operation(summary = "Get all available order status, require ADMIN", tags = {"Order"})
    @ApiResponse(responseCode = "200", description = "Get successfully")
    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/status")
    public ResponseEntity<OrderStatusResponse> getAllOrderStatus(){
        return ResponseEntity.ok(orderService.getAllOrderStatus());
    }

    @Operation(summary = "Update an order's status, require ADMIN", tags = {"Order"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Updated successfully"),
            @ApiResponse(responseCode = "404", description = "Order not found")
    })
    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/status")
    public ResponseEntity<Void> updateOrderStatus(@Valid @RequestBody OrderStatusRequest request){
        orderService.updateOrderStatus(request);
        return ResponseEntity.noContent().build();
    }
}

package org.example.structural.order.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.dto.OrderRequest;
import org.example.structural.order.dto.OrderResponse;
import org.example.structural.order.service.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/orders")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping
    public ResponseEntity<OrderResponse> createOrder(@RequestBody OrderRequest request) {
        log.info("Received order request for customer: {}", request.getCustomerName());
        OrderResponse response = orderService.createOrder(request);
        
        if (response.getId() == null) {
            return ResponseEntity.badRequest().body(response);
        }
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<OrderResponse> getOrder(@PathVariable Long id) {
        OrderResponse response = orderService.getOrder(id);
        
        if (response.getId() == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(response);
    }

    @GetMapping
    public ResponseEntity<List<OrderResponse>> getAllOrders() {
        return ResponseEntity.ok(orderService.getAllOrders());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<OrderResponse> cancelOrder(@PathVariable Long id) {
        OrderResponse response = orderService.cancelOrder(id);
        
        if (response.getId() == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(response);
    }

    @PostMapping("/undo")
    public ResponseEntity<String> undoLastAction() {
        orderService.undoLastAction();
        return ResponseEntity.ok("Last action undone");
    }
}

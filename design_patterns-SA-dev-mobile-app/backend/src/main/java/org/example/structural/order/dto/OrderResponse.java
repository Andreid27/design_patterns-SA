package org.example.structural.order.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderResponse {
    private Long id;
    private String customerName;
    private String status;
    private Long bookId;
    private String bookTitle;
    private double unitPrice;
    private int quantity;
    private double totalAmount;
    private String paymentMethod;
    private String message;
}

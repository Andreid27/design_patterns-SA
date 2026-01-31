package org.example.structural.order.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderRequest {
    private String customerName;
    private Long bookId;
    private Integer quantity;
    private String paymentMethod;
}

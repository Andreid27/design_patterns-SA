package org.example.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "orders")
@NoArgsConstructor
@AllArgsConstructor
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String customerName;

    @Column(nullable = false)
    private String status;

    @Column(nullable = false)
    private double totalAmount;

    @Column
    private String paymentMethod;

    public Order(String customerName, double totalAmount) {
        this.customerName = customerName;
        this.totalAmount = totalAmount;
        this.status = "PENDING";
    }
}

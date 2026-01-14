package org.example;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.entity.Product;
import org.example.repository.ProductRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@Slf4j
@SpringBootApplication
@RequiredArgsConstructor
public class BehavioralPatternsApplication {

    public static void main(String[] args) {
        SpringApplication.run(BehavioralPatternsApplication.class, args);
    }

    @Bean
    CommandLineRunner initData(ProductRepository productRepository) {
        return args -> {
            productRepository.save(new Product(null, "Laptop", 999.99, 10));
            productRepository.save(new Product(null, "Smartphone", 699.99, 25));
            productRepository.save(new Product(null, "Headphones", 149.99, 50));
            log.info("Sample products initialized");
        };
    }
}

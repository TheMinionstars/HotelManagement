package com.swp.HotelManagement.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer customerId;
    private String customerName;
    private String address;
    private String phone;
    private String email;
    private String username;
    private String password;

    @OneToOne(mappedBy = "customer")
    private User user;


    // Constructors, getters, and setters
}
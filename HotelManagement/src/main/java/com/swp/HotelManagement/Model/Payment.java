package com.swp.HotelManagement.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Payment {
    @Id
    private Integer paymentId;

    @ManyToOne
    @JoinColumn(name = "bookingId")
    private Booking booking;

    private Date paymentDate;
    private String paymentDetail;
    private Double amount;
    private String status;

    // Constructors, getters, and setters
}
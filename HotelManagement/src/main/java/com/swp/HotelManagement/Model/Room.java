package com.swp.HotelManagement.Model;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Room {
    @Id
    private Integer roomId;

    @ManyToOne
    @JoinColumn(name = "roomClassId")
    private RoomClass roomClass;

    private String description;
    private String price;

    // Constructors, getters, and setters
}
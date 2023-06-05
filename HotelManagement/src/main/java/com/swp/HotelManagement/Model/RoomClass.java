package com.swp.HotelManagement.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RoomClass {
    @Id
    private Integer roomClassId;
    private String roomClassName;

    // Constructors, getters, and setters
}

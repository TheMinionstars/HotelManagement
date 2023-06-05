package com.swp.HotelManagement.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Blog {
    @Id
    private Integer blogId;
    private String title;
    private String content;
    private Date dateCreated;

    // Constructors, getters, and setters
}
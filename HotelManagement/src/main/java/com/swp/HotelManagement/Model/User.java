package com.swp.HotelManagement.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;
    private String fullname;
    private String address;
    private String phone;
    private String email;
    private String username;
    private String password;
    private int role;

    @OneToMany(mappedBy = "user")
    private List<Blog> blogs;


}
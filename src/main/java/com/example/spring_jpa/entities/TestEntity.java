package com.example.spring_jpa.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "customer")
public class TestEntity {
    public long getId() {
        return id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "name", nullable = false)
    private String name;

    public void setName(String name) {
        this.name = name;
    }
}

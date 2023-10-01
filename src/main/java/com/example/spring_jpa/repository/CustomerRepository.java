package com.example.spring_jpa.repository;

import com.example.spring_jpa.entities.TestEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<TestEntity,Long> { }

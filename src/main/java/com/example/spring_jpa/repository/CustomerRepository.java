package com.example.spring_jpa.repository;

import com.example.spring_jpa.entities.TestEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

public interface CustomerRepository extends CrudRepository<TestEntity,Long> { }

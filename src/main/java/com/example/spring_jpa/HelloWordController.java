package com.example.spring_jpa;

import com.example.spring_jpa.dto.test.TestSaveModel;
import com.example.spring_jpa.entities.TestEntity;
import com.example.spring_jpa.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWordController {
    @Autowired
    private CustomerRepository customerRepository;

    @GetMapping("/helloWorld")
    public String helloWorld(){
        return "HELLO THERE! \n GENERAL KENOBI";
    }

    @PostMapping("/test")
    public long testSave(@RequestBody TestSaveModel body){
        TestEntity testCustomer = new TestEntity();
        testCustomer.setName(body.getName());
        customerRepository.save(testCustomer);
        return testCustomer.getId();
    }
}

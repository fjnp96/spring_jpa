package com.example.spring_jpa;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWordController {

    @GetMapping("/helloWorld")
    public String helloWorld(){
        return "HELLO THERE! \n GENERAL KENOBI";
    }
}

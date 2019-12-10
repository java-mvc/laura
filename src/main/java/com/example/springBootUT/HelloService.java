package com.example.springBootUT;

import org.springframework.stereotype.Service;

@Service
public class HelloService {
    public String sayHi() {
        return "hello springboot service test";
    }
}

package com.gradle.controller;

//MainController.java
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class HomeController {
    @RequestMapping("/")
    public String index(){
        return "slack trigger test";
    }
}

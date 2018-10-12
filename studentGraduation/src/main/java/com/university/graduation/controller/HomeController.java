package com.university.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {


    @RequestMapping("home/console.html")
    public String console(){
        return "home/console";
    }

    @RequestMapping("home/homepage1.html")
    public String homepage1(){
        return "home/homepage1";
    }

    @RequestMapping("home/homepage2.html")
    public String homepage2(){
        return "home/homepage2";
    }
}

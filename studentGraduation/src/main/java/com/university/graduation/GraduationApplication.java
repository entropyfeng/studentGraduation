package com.university.graduation;

import org.jsets.shiro.config.EnableJsetsShiro;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@EnableJsetsShiro
@SpringBootApplication
public class GraduationApplication {

    public static void main(String[] args) {
        SpringApplication.run(GraduationApplication.class, args);
    }
}

package com.university.graduation;

import com.university.graduation.service.ShortMessageService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MessageTest {

    @Autowired
    ShortMessageService shortMessageService;
    @Test
   public void send(){
        shortMessageService.sendMessage("");

    }
}

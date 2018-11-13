package com.university.graduation;

import com.university.graduation.service.FileService;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class GraduationApplicationTests {
    @Test
   public void pr(){
        System.out.println("test begin");
    }

    @Autowired
    FileService pictureService;
@Test
  public   void haha()throws IOException{

    }


}

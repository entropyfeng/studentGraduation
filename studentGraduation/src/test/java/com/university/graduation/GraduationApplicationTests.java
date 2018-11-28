package com.university.graduation;

import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.university.graduation.dao.FastDfsMapper;
import com.university.graduation.domain.bo.FastDfsMap;
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


    @Autowired
    FastFileStorageClient fastFileStorageClient;

    @Autowired
    FastDfsMapper fastDfsMaper;
@Test
   public void delete(){
   // fastFileStorageClient.deleteFile("group1/M00/00/00/rBJ5wVv03MKALd7IAAFWTW00sLM444.jpg");
    for (int i=1;i<=37;i++){
       String url= fastDfsMaper.getFastDfsName(String.valueOf(i));
       fastFileStorageClient.deleteFile(url);
    }

}


}

package com.university.graduation.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public interface FileService {

   String uploadPicture(MultipartFile file ,String trueFileName)throws Exception ;

   String uploadPicture(File file) throws  Exception;
   byte[] downloadPicture(String name) throws Exception;

   void deletePicture(String name) throws Exception;
}

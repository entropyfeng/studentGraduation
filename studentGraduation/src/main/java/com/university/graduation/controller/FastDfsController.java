package com.university.graduation.controller;

import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.FileService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class FastDfsController {
    @Autowired
    private FastFileStorageClient fastFileStorageClient;

    @Autowired
    private FileService pictureService;

    @ResponseBody
    @PostMapping("/student/photo/upload")
    public Message upload(@RequestParam MultipartFile file, @Param("studentId")String studentId) {

        System.out.println(studentId);
        studentId+=".jpg";
        try {

            pictureService.uploadPicture(file,studentId);
        } catch (Exception e) {
          return new Message().error(1111,e.getMessage());
        }

        return new Message().ok(6666,"上传成功");
    }

    @ResponseBody
    @DeleteMapping("/student/photo/delete")
    public Message delete(@RequestParam String path) {
        try {
            pictureService.deletePicture(path);
        } catch (Exception e) {
            return new Message().error(1111,e.getMessage());
        }

        return new Message().ok(6666,"上传成功");
    }


    @GetMapping("/student/photo/get")
    public void downLoad(@RequestParam String filename, HttpServletResponse response) throws IOException {
        byte[] bytes=null;
        Message message=new Message();
        // 获取文件
        try {
            bytes = pictureService.downloadPicture(filename);
        }catch (Exception e){
            message.error(1111,e.getMessage());
        }

        if(bytes==null){
            message.error(1111,"下载失败");
        }

        //设置相应类型application/octet-stream        （注：applicatoin/octet-stream 为通用，一些其它的类型苹果浏览器下载内容可能为空）
        response.reset();
        response.setContentType("image/jpeg");
        response.setHeader("Access-Control-Allow-Origin","http://localhost:8081");
        response.setHeader("Access-Control-Allow-Credentials","true");
        //response.setContentType("applicatoin/octet-stream");
        //设置头信息                 Content-Disposition为属性名  附件形式打开下载文件   指定名称  为 设定的fileName
       // response.setHeader("Content-Disposition", "inline;filename=" + URLEncoder.encode(filename, "UTF-8"));
        // 写入到流
        ServletOutputStream out = response.getOutputStream();
        out.write(bytes);
        out.close();
    }

}

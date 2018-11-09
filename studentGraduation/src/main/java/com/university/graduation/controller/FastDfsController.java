package com.university.graduation.controller;

import com.github.tobato.fastdfs.domain.MataData;
import com.github.tobato.fastdfs.domain.StorePath;
import com.github.tobato.fastdfs.proto.storage.DownloadByteArray;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Set;

@RestController
public class FastDfsController {
@Autowired
    private FastFileStorageClient fastFileStorageClient;

@PostMapping("/student/photo/upload")
    public StorePath upload(@RequestParam MultipartFile file){
    StorePath storePath=null;
    Set<MataData> metaData =new HashSet<>();
    try {
      storePath  =fastFileStorageClient.uploadFile(file.getInputStream(),file.getSize(),FilenameUtils.getExtension(file.getOriginalFilename()),metaData);

    }catch (IOException e){
        e.printStackTrace();
    }
return storePath;
}

    @DeleteMapping("/student/photo/delete")
    public String delete(@RequestParam String path) {

        // 第一种删除：参数：完整地址
        fastFileStorageClient.deleteFile(path);

        // 第二种删除：参数：组名加文件路径
        // fastFileStorageClient.deleteFile(group,path);

        return "恭喜恭喜，删除成功！";
    }

    @GetMapping("/student/photo/download")
    public void downLoad(@RequestParam String group, @RequestParam String path, @RequestParam String fileName, HttpServletResponse response) throws IOException {

        // 获取文件
        byte[] bytes = fastFileStorageClient.downloadFile(group, path, new DownloadByteArray());

        //设置相应类型application/octet-stream        （注：applicatoin/octet-stream 为通用，一些其它的类型苹果浏览器下载内容可能为空）
        response.reset();
        response.setContentType("applicatoin/octet-stream");
        //设置头信息                 Content-Disposition为属性名  附件形式打开下载文件   指定名称  为 设定的fileName
        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
        // 写入到流
        ServletOutputStream out = response.getOutputStream();
        out.write(bytes);
        out.close();
    }


}

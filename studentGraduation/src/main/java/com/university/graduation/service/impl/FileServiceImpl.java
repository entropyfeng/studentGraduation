package com.university.graduation.service.impl;

import com.github.tobato.fastdfs.domain.StorePath;
import com.github.tobato.fastdfs.proto.storage.DownloadByteArray;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.university.graduation.dao.FastDfsMapper;
import com.university.graduation.service.FileService;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

@Service
public class FileServiceImpl implements FileService {

    private Logger logger = LoggerFactory.getLogger(FileServiceImpl.class);
    @Autowired
    private FastFileStorageClient fastFileStorageClient;
    @Autowired
    private FastDfsMapper fastDfsMapper;

    @Override
    public String uploadPicture(MultipartFile file ,String trueFileName) throws Exception {
        if (file == null) {
            throw new Exception("上传失败：未找到该文件");
        }

        String fileUrl=fastDfsMapper.getFastDfsName(trueFileName);

        //FilenameUtils.getExtension(file.getOriginalFilename()) 作用是获取后缀名
        StorePath storePath = fastFileStorageClient.uploadFile(file.getInputStream(), file.getSize(), FilenameUtils.getExtension(file.getOriginalFilename()), null);

        String fullPath = storePath.getFullPath();
        //如果数据库存在 删除fastDfs中老的数据 并更新数据库 否则直接添加
        if(fileUrl!=null){
            fastFileStorageClient.deleteFile(fileUrl);
            fastDfsMapper.updateMap(trueFileName,fullPath);
        }else {
            fastDfsMapper.setMap(trueFileName, fullPath);
        }



        return fullPath;

    }

    @Override
    public String uploadPicture(File file) throws Exception {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            throw new FileNotFoundException("上传失败：未找到该文件");
        }
        StorePath storePath = fastFileStorageClient.uploadFile(fileInputStream, file.length(), FilenameUtils.getExtension(file.getName()), null);
        String fullPath = storePath.getFullPath();
        fastDfsMapper.setMap(file.getName(), fullPath);
        return storePath.getFullPath();
    }

    @Override
    public byte[] downloadPicture(String name) throws Exception {
        System.out.println(name);
        String fileUrl = fastDfsMapper.getFastDfsName(name);
        if (fileUrl == null) {
            throw new Exception("下载失败：未找到该文件");
        }
        byte files[];
        int pos = fileUrl.indexOf("/");
        String group = fileUrl.substring(0, pos);
        String path = fileUrl.substring(pos + 1, fileUrl.length());
        files = fastFileStorageClient.downloadFile(group, path, new DownloadByteArray());


        return files;
    }

    @Override
    public void deletePicture(String name) throws Exception {

        String fileUrl = fastDfsMapper.getFastDfsName(name);
        if (fileUrl == null) {
            throw new Exception("删除失败：未找到该文件");
        }
        fastFileStorageClient.deleteFile(fileUrl);

    }
    private void deleteFile(String fileUrl){
        StorePath storePath=StorePath.praseFromUrl(fileUrl);
        fastFileStorageClient.deleteFile(storePath.getGroup(),storePath.getPath());
    }



}

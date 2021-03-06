package com.university.graduation.service.impl;

import com.university.graduation.dao.StudentInfoMapper;
import com.university.graduation.domain.vo.StudentInfo;
import com.university.graduation.service.FileService;
import com.university.graduation.service.StudentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentInfoServiceImpl implements StudentInfoService {

    @Autowired
    StudentInfoMapper studentInfoMapper;

    @Autowired
    FileService fileService;
    @Override
    public List<StudentInfo> getStudentInfo() {

        List<StudentInfo> studentInfoList=studentInfoMapper.selectStudentInfo();

        return studentInfoList;

    }

    @Override
    public List<StudentInfo> getStudentInfoByCondition(String studentId, String studentName) {

        if(studentId==null||studentId.equals("")){
            studentId=null;
        }
        if(studentName==null||studentName.equals("")){
            studentName=null;
        }
        return studentInfoMapper.selectStudentInfoByCondition(studentId,studentName);
    }

    @Override
    public Integer getStudentNumbers() {
       return  studentInfoMapper.selectStudentCounts();
    }
}

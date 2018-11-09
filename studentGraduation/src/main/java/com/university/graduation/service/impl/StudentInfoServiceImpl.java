package com.university.graduation.service.impl;

import com.university.graduation.dao.StudentInfoMapper;
import com.university.graduation.domain.vo.StudentInfo;
import com.university.graduation.service.StudentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentInfoServiceImpl implements StudentInfoService {

    @Autowired
    StudentInfoMapper studentInfoMapper;
    @Override
    public List<StudentInfo> getStudentInfo() {
        return studentInfoMapper.selectStudentInfo();

    }
}

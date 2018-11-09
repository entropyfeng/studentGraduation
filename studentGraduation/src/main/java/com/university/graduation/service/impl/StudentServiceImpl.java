package com.university.graduation.service.impl;

import com.university.graduation.dao.StudentMapper;
import com.university.graduation.domain.bo.Student;
import com.university.graduation.domain.bo.StudentExample;
import com.university.graduation.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentMapper studentMapper;
    @Override
    public List<Student> getAllStudentInformation() {
        StudentExample studentExample=new StudentExample();
        studentExample.createCriteria();
      return studentMapper.selectByExample(studentExample);

    }
}

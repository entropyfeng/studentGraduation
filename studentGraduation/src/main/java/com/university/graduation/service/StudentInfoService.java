package com.university.graduation.service;

import com.university.graduation.domain.vo.StudentInfo;

import java.util.List;

public interface StudentInfoService {

    List<StudentInfo> getStudentInfo();

    List<StudentInfo> getStudentInfoByCondition(String studentId,String studentName);

    Integer getStudentNumbers();
}

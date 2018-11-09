package com.university.graduation.dao;

import com.university.graduation.domain.vo.StudentInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StudentInfoMapper {
List<StudentInfo> selectStudentInfo();
}

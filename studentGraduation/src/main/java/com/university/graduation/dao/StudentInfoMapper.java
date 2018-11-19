package com.university.graduation.dao;

import com.university.graduation.domain.vo.StudentInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StudentInfoMapper {
List<StudentInfo> selectStudentInfo();

Integer selectStudentCounts();
List<StudentInfo> selectStudentInfoByCondition(@Param("studentId")String studentId,
                                               @Param("studentName")String studentName );
}

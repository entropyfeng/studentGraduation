package com.university.graduation.dao;


import java.util.List;

import com.university.graduation.domain.bo.GraduationFlow;
import com.university.graduation.domain.bo.GraduationFlowExample;
import org.apache.ibatis.annotations.Param;

public interface GraduationFlowMapper {
    int countByExample(GraduationFlowExample example);

    int deleteByExample(GraduationFlowExample example);

    int deleteByPrimaryKey(Integer graduationFlowId);

    int insert(GraduationFlow record);

    int insertSelective(GraduationFlow record);

    List<GraduationFlow> selectByExample(GraduationFlowExample example);

    GraduationFlow selectByPrimaryKey(Integer graduationFlowId);

    int updateByExampleSelective(@Param("record") GraduationFlow record, @Param("example") GraduationFlowExample example);

    int updateByExample(@Param("record") GraduationFlow record, @Param("example") GraduationFlowExample example);

    int updateByPrimaryKeySelective(GraduationFlow record);

    int updateByPrimaryKey(GraduationFlow record);
}
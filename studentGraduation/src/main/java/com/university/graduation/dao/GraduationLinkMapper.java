package com.university.graduation.dao;


import java.util.List;

import com.university.graduation.domain.bo.GraduationLink;
import com.university.graduation.domain.bo.GraduationLinkExample;
import org.apache.ibatis.annotations.Param;

public interface GraduationLinkMapper {
    int countByExample(GraduationLinkExample example);

    int deleteByExample(GraduationLinkExample example);

    int deleteByPrimaryKey(Integer graduationLinkId);

    int insert(GraduationLink record);

    int insertSelective(GraduationLink record);

    List<GraduationLink> selectByExample(GraduationLinkExample example);

    GraduationLink selectByPrimaryKey(Integer graduationLinkId);

    int updateByExampleSelective(@Param("record") GraduationLink record, @Param("example") GraduationLinkExample example);

    int updateByExample(@Param("record") GraduationLink record, @Param("example") GraduationLinkExample example);

    int updateByPrimaryKeySelective(GraduationLink record);

    int updateByPrimaryKey(GraduationLink record);
}
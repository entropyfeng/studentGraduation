package com.university.graduation.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface FastDfsMapper {

   String getTrueName(@Param("fastDfsName")String fastDfsName);

   Integer setMap(@Param("trueName")String trueName,@Param("fastDfsName")String fastDfsName);

   String getFastDfsName(@Param("trueName")String trueName);

   Integer updateMap(@Param("trueName")String trueName,@Param("fastDfsName")String fastDfsName);
}
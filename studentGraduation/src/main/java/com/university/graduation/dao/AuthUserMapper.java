package com.university.graduation.dao;


import com.university.graduation.domain.bo.AuthUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

import java.util.List;

@Mapper
public interface AuthUserMapper {

    int deleteByAppId(String appId) throws DataAccessException;

    int deleteByUsername(String username) throws DataAccessException;
    int insert(AuthUser record) throws DataAccessException;

    int insertSelective(AuthUser record) throws DataAccessException;

    String selectAppIdByUsername(String username)throws DataAccessException;
    String selectAppIdByEmail(String email)throws DataAccessException;
    String selectAppIdByPhoneNumber(String phoneNumber)throws DataAccessException;

   int setPasswordByAppId(@Param("appId") String appId, @Param("password") String password)throws  DataAccessException;
    AuthUser selectByUsername(String username)throws DataAccessException;

    AuthUser selectByPhoneNumber(String phoneNumber)throws DataAccessException;

    AuthUser selectByEmail(String email)throws DataAccessException;

    int updateByPrimaryKeySelective(AuthUser record) throws DataAccessException;

    int updateByAppId(AuthUser record) throws DataAccessException;

    String selectUserRoles(String appId) throws DataAccessException;

    AuthUser selectByAppId(String appId) throws DataAccessException;

    List<AuthUser> selectUserList() throws DataAccessException;

    List<AuthUser> selectUserListByRoleId(Integer roleId) throws DataAccessException;

    List<AuthUser> selectUserListExtendByRoleId(Integer roleId) throws DataAccessException;
}
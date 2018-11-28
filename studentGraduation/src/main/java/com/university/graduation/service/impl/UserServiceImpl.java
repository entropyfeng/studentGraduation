package com.university.graduation.service.impl;


import com.university.graduation.dao.AuthUserMapper;
import com.university.graduation.dao.AuthUserRoleMapper;
import com.university.graduation.domain.bo.AuthRole;
import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.bo.AuthUserRole;
import com.university.graduation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/* *

 * @Description 
 * @Date 21:15 2018/3/17
 */
@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    private AuthUserMapper userMapper;

    @Autowired
    private AuthUserRoleMapper authUserRoleMapper;

    @Override
    public String getAppIdByUsername(String username) {

        return userMapper.selectAppIdByUsername(username);

    }

    @Override
    public String getAppIdByEmail(String email) {
        return userMapper.selectAppIdByEmail(email);
    }

    @Override
    public String getAppIdByPhoneNumber(String phoneNumber) {
        return userMapper.selectAppIdByPhoneNumber(phoneNumber);
    }

    @Override
    public String loadAccountRole(String appId) throws DataAccessException {

        return userMapper.selectUserRoles(appId);
    }

    @Override
    public AuthRole getAuthRoleByAppId(String appId) {
        return userMapper.selectRoleByAppId(appId);
    }

    @Override
    public boolean addUser(AuthUser authUser) {
        return false;
    }

    @Override
    public boolean updatePasswordByAppId(String appId, String password) {


        return 1==userMapper.setPasswordByAppId(appId,password);
    }

    @Override
    public List<AuthUser> getUserList() throws DataAccessException {
        return userMapper.selectUserList();
    }

    @Override
    public List<AuthUser> getUserListByRoleId(Integer roleId) throws DataAccessException {
        return userMapper.selectUserListByRoleId(roleId);
    }

    @Override
    public boolean authorityUserRole(String appId, int roleId) throws DataAccessException {
        AuthUserRole authUserRole = new AuthUserRole();
        authUserRole.setRoleId(roleId);
        authUserRole.setUserId(appId);
        authUserRole.setCreateTime(new Date());
        authUserRole.setUpdateTime(new Date());
        return authUserRoleMapper.insert(authUserRole) == 1? Boolean.TRUE :Boolean.FALSE;
    }

    @Override
    public boolean deleteAuthorityUserRole(String appId, int roleId) throws DataAccessException {
        AuthUserRole authUserRole = new AuthUserRole();
        authUserRole.setUserId(appId);
        authUserRole.setRoleId(roleId);
        return authUserRoleMapper.deleteByUniqueKey(authUserRole) == 1? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public AuthUser getUserByAppId(String appId) throws DataAccessException {

        return userMapper.selectByAppId(appId);
    }

    @Override
    public AuthUser getUserByPhoneNumber(String phone) {
        return userMapper.selectByPhoneNumber(phone);
    }

    @Override
    public Integer updateUser(AuthUser authUser) {
      return   userMapper.updateByAppId(authUser);
    }

    @Override
    public List<AuthUser> getNotAuthorityUserListByRoleId(Integer roleId) throws DataAccessException {

        return userMapper.selectUserListExtendByRoleId(roleId);
    }
}

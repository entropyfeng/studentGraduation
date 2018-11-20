package com.university.graduation.service;


import com.university.graduation.domain.bo.AuthRole;
import com.university.graduation.domain.bo.AuthUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/* *

 * @Description 
 * @Date 21:14 2018/3/17
 */
public interface UserService {

    /**
     * 根据username获得appId
     * @return
     */
    String  getAppIdByUsername(String username);

    String getAppIdByEmail(String email);

    String getAppIdByPhoneNumber(String phoneNumber);

    String loadAccountRole(String appId);

    AuthRole getAuthRoleByAppId(String appId);

    boolean addUser(AuthUser authUser);

    boolean updatePasswordByAppId(String appId, String password);

    List<AuthUser> getUserList();

    List<AuthUser> getUserListByRoleId(Integer roleId);

    boolean authorityUserRole(String appId, int roleId);

    boolean deleteAuthorityUserRole(String uid, int roleId);

    AuthUser getUserByAppId(String appId);

    Integer updateUser(AuthUser authUser);
    List<AuthUser> getNotAuthorityUserListByRoleId(Integer roleId);
}

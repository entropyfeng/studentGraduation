package com.university.graduation.service;



import com.university.graduation.domain.bo.AuthRole;

import java.util.List;

/* *

 * @Description 
 * @Date 9:10 2018/3/20
 */
public interface RoleService {


    boolean authorityRoleResource(int roleId, int resourceId);

    boolean addRole(AuthRole role);

    boolean updateRole(AuthRole role);

    boolean deleteRoleByRoleId(Integer roleId);

    boolean deleteAuthorityRoleResource(Integer roleId, Integer resourceId);

    List<AuthRole> getRoleList();
}

package com.university.graduation.service.impl;


import com.university.graduation.dao.AuthRoleMapper;
import com.university.graduation.dao.AuthRoleResourceMapper;
import com.university.graduation.domain.bo.AuthRole;
import com.university.graduation.domain.bo.AuthRoleResource;
import com.university.graduation.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/* *

 * @Description 
 * @Date 12:28 2018/3/26
 */
@Service("RoleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private AuthRoleResourceMapper authRoleResourceMapper;

    @Autowired
    private AuthRoleMapper authRoleMapper;

    @Override
    public boolean authorityRoleResource(int roleId, int resourceId) throws DataAccessException {
        AuthRoleResource authRoleResource = new AuthRoleResource();
        authRoleResource.setRoleId(roleId);
        authRoleResource.setResourceId(resourceId);
        authRoleResource.setCreateTime(new Date());
        authRoleResource.setUpdateTime(new Date());
        return authRoleResourceMapper.insert(authRoleResource) == 1? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean addRole(AuthRole role) throws DataAccessException {
        int num = authRoleMapper.insertSelective(role);
        return num == 1? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean updateRole(AuthRole role) throws DataAccessException {
        int num = authRoleMapper.updateByPrimaryKeySelective(role);
        return num == 1? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean deleteRoleByRoleId(Integer roleId) throws DataAccessException {
        int num = authRoleMapper.deleteByPrimaryKey(roleId);
        return num == 1? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean deleteAuthorityRoleResource(Integer roleId, Integer resourceId) throws DataAccessException {
        int num = authRoleResourceMapper.deleteByUniqueKey(roleId, resourceId);
        return num == 1? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public List<AuthRole> getRoleList() throws DataAccessException {
        return authRoleMapper.selectRoles();
    }
}

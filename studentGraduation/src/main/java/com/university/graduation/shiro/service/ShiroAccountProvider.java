package com.university.graduation.shiro.service;

import com.university.graduation.shiro.model.Account;
import org.apache.shiro.authc.AuthenticationException;

import org.springframework.stereotype.Service;

import java.util.Set;
@Service
public interface ShiroAccountProvider {
    /**
     * 根据用户名获取账号信息
     * @return 账号信如果查找不到用户返回null或者直接抛出AuthenticationException
     * @param account 账号
     */
    public Account loadAccount(String account) throws AuthenticationException;
    /**
     * 根据用户名称加载用户所有的角色
     * @param account 账号
     * @return 角色列表
     */
    public Set<String> loadRoles(String account);
    /**
     * 根据用户名称加载用户所有的权限
     * @param account 账号
     * @return 权限列表
     */
    public Set<String> loadPermissions(String account);
}

package com.university.graduation.shiro.service;

import javax.naming.AuthenticationException;
import java.util.Set;

/**
 * 信息安全服务，应用程序必须实现这个接口，为安全认证提供必要的信息
 */
public interface ShiroStatelessAccountProvider {
    /**
     *
     * @param appId 客户id
     * @return false or AuthenticationException 不予通过验证
     * @throws AuthenticationException 验证异常
     */
     boolean checkAccount(String appId)throws AuthenticationException;

    /**
     * 获取客户端的签名私钥
     * @param appId 客户标识
     * @return 如果没有私钥返回空 ，使用全局秘钥
     */
     String loadAppKey(String appId);

    /**
     * 根据客户标识加载持有角色
     * @param appId 客户标识
     * @return 角色列表
     */
    public Set<String> loadRoles(String appId);

    /**
     * 根据客户标识加载持有权限
     * @param appId 客户标识
     * @return 角色列表
     */
    public Set<String> loadPermissions(String appId);

}

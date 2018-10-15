package com.university.graduation.shiro.realm;


import com.university.graduation.shiro.config.MessageConfig;
import com.university.graduation.shiro.model.Account;
import com.university.graduation.shiro.service.ShiroAccountProvider;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;

/**
 * 基于用户名密码的realm
 */
public class PasswordRealm extends AuthorizingRealm {
    @Autowired
    private MessageConfig messageConfig;
    @Autowired
    private ShiroAccountProvider shiroAccountProvider;



    /**
     * 认证
     * @param authenticationToken token
     * @return SimpleAuthenticationInfo 验证信息
     * @throws AuthenticationException 验证异常
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        if(null==authenticationToken.getPrincipal()||null==authenticationToken.getCredentials()){
            throw new AuthenticationException(messageConfig.getMsgAccountPasswordEmpty());
        }
        String account = (String) authenticationToken.getPrincipal();
        Account accountEntity=shiroAccountProvider.loadAccount(account);


        if (null == accountEntity) {
            throw new AuthenticationException(messageConfig.getMsgAccountNotExist());
        }
        return new SimpleAuthenticationInfo(account,accountEntity.getPassword(), getName());
    }

    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String account = (String) principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo info =  new SimpleAuthorizationInfo();
        Set<String> roles = shiroAccountProvider.loadRoles(account);
        Set<String> permissions = shiroAccountProvider.loadPermissions(account);
        if(null!=roles&&!roles.isEmpty())
            info.setRoles(roles);
        if(null!=permissions&&!permissions.isEmpty())
            info.setStringPermissions(permissions);
        return info;
    }



}

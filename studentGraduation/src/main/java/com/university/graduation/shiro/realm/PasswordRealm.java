package com.university.graduation.shiro.realm;


import com.university.graduation.shiro.config.MessageConfig;
import com.university.graduation.shiro.model.Account;
import com.university.graduation.shiro.service.ShiroAccountProvider;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 基于用户名密码的realm
 */
public class PasswordRealm extends AuthorizingRealm {
    @Autowired
    private MessageConfig messageConfig;
    @Autowired
    private ShiroAccountProvider shiroAccountProvider;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    /**
     * 认证
     * @param authenticationToken token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        if(null==authenticationToken.getPrincipal()||null==authenticationToken.getCredentials()){
            throw new AuthenticationException(messageConfig.getMsgAccountPasswordEmpty());
        }
        String account = (String) authenticationToken.getPrincipal();
        Account accountEntity= shiroAccountProvider.loadAccount(account);

        if (null == accountEntity) {
            throw new AuthenticationException(messageConfig.getMsgAccountNotExist());
        }
        return new SimpleAuthenticationInfo(account,accountEntity.getPassword(), getName());
    }
}

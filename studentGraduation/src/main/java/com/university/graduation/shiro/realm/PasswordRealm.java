package com.university.graduation.shiro.realm;


import com.university.graduation.domain.vo.Account;
import com.university.graduation.shiro.provider.AccountProvider;
import com.university.graduation.shiro.token.PasswordToken;
import com.university.graduation.util.MD5Util;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

/* *
 * @Author tomsun28
 * @Description 这里是登录认证realm
 * @Date 21:08 2018/2/10
 */
public class PasswordRealm extends AuthorizingRealm {


    private AccountProvider accountProvider;

    //此Realm只支持PasswordToken
    public Class<?> getAuthenticationTokenClass() {
        return PasswordToken.class;
    }


    // 这里只需要认证登录，成功之后派发 json web token 授权在那里进行
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        if (!(authenticationToken instanceof PasswordToken)) return null;

        if(null==authenticationToken.getPrincipal()||null==authenticationToken.getCredentials()){
            throw new UnknownAccountException();
        }
        String username = (String)authenticationToken.getPrincipal();
        Account account = accountProvider.loadAccountByUsername(username);
        if (account != null) {
            // 用盐对密码进行MD5加密
            ((PasswordToken) authenticationToken).setPassword(MD5Util.md5(((PasswordToken) authenticationToken).getPassword()+account.getSalt()));
            return new SimpleAuthenticationInfo(username,account.getPassword(),getName());
        } else {
            return new SimpleAuthenticationInfo(username,"",getName());
        }

    }

    public void setAccountProvider(AccountProvider accountProvider) {
        this.accountProvider = accountProvider;
    }
}

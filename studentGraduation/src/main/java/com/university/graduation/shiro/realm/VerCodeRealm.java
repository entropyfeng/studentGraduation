package com.university.graduation.shiro.realm;

import com.university.graduation.shiro.token.VerCodeToken;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.data.redis.core.StringRedisTemplate;

public class VerCodeRealm extends AuthorizingRealm {



    private StringRedisTemplate redisTemplate;

    //此Realm只支持VerCodeToken
    public Class<?> getAuthenticationTokenClass() {
        return VerCodeToken.class;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        if (!(authenticationToken instanceof VerCodeToken)) return null;

        if(null==authenticationToken.getPrincipal()||null==authenticationToken.getCredentials()){
            throw new UnknownAccountException();
        }
      String phoneNumber=(String) authenticationToken.getPrincipal();
     String trueVerCode=  redisTemplate.opsForValue().get("SHORT_MESSAGE_" + phoneNumber);
     return new SimpleAuthenticationInfo(phoneNumber,trueVerCode,getName());

    }
    public void setRedisTemplate(StringRedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

}

package com.university.graduation.shiro.realm;

import com.university.graduation.shiro.config.MessageConfig;
import com.university.graduation.shiro.token.JwtToken;
import com.university.graduation.shiro.util.Commons;
import io.jsonwebtoken.MalformedJwtException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;
import java.util.Set;

public class JwtRealm extends AuthorizingRealm {
    @Autowired
    MessageConfig messageConfig;



    /**
     *  认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        // 只认证JwtToken
        if(!(token instanceof JwtToken)) return null;
        String jwt = ((JwtToken)token).getJwt();
        String payload = null;
        try{
            // 预先解析Payload
            // 没有做任何的签名校验
            payload = Commons.parseJwtPayload(jwt);
        } catch(MalformedJwtException e){
            throw new AuthenticationException(messageConfig.getMsgJwtMalformed());
        } catch(Exception e){
            throw new AuthenticationException(messageConfig.getMsgJwtError());
        }
        if(null == payload){
            throw new AuthenticationException(messageConfig.getMsgJwtError());
        }
        return new SimpleAuthenticationInfo("jwt:"+payload,jwt,this.getName());
    }

    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        String payload = (String) principals.getPrimaryPrincipal();
        // likely to be json, parse it:
        if (payload.startsWith("jwt:") && payload.charAt(4) == '{'
                && payload.charAt(payload.length() - 1) == '}') {

            Map<String, Object> payloadMap = Commons.readValue(payload.substring(4));
            Set<String> roles = Commons.split((String)payloadMap.get("roles"));
            Set<String> permissions = Commons.split((String)payloadMap.get("perms"));
            SimpleAuthorizationInfo info =  new SimpleAuthorizationInfo();
            if(null!=roles&&!roles.isEmpty())
                info.setRoles(roles);
            if(null!=permissions&&!permissions.isEmpty())
                info.setStringPermissions(permissions);
            return info;
        }
        return null;
    }


}

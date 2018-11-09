package com.university.graduation.shiro.realm;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.university.graduation.domain.vo.JwtAccount;
import com.university.graduation.shiro.token.JwtToken;
import com.university.graduation.util.JsonWebTokenUtil;
import com.university.graduation.util.RequestResponseUtil;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.UnsupportedJwtException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;


public class JwtRealm extends AuthorizingRealm {

    public Class<?> getAuthenticationTokenClass() {
        // 此realm只支持jwtToken
        return JwtToken.class;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String strJwtAccount= (String)principalCollection.getPrimaryPrincipal();
        System.out.println(strJwtAccount);
       Map<String,String> maps=(Map<String,String>)JSONObject.parseObject(strJwtAccount,Map.class);

        Set<String> roles = JsonWebTokenUtil.split(maps.get("roles"));
        Set<String> permissions = JsonWebTokenUtil.split(maps.get("perms"));
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        if (null != roles && !roles.isEmpty()) info.setRoles(roles);
        if (null != permissions && !permissions.isEmpty()) info.setStringPermissions(permissions);
        return info;
    }

    /**
     * @param authenticationToken 用户传递给后台的参数
     * @return 一般来说是从数据库查询出来的参数 返回后交给JwtMatcher进行匹配
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken)  {

        if (!(authenticationToken instanceof JwtToken)) {
            return null;
        }
        JwtToken jwtToken = (JwtToken) authenticationToken;

        String perms=jwtToken.getPerms();
        String roles=jwtToken.getRoles();
        Map<String,String> maps= new HashMap<String,String>();
        maps.put("perms",perms);
        maps.put("roles",roles);
      String str=JSON.toJSONString(maps);
      return new SimpleAuthenticationInfo(str,str ,this.getName());
    }
}

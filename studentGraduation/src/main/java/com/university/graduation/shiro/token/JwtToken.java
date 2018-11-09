package com.university.graduation.shiro.token;

import org.apache.shiro.authc.AuthenticationToken;

/* *
 * @Author tomsun28
 * @Description JWT token
 * @Date 19:37 2018/2/10
 */
public class JwtToken implements AuthenticationToken{

    private static final long serialVersionUID = 1L;


    private String roles;
    private String perms;
    public JwtToken(String roles,String perms) {
        this.perms=perms;
        this.roles=roles;
    }

    public Object getPrincipal() {
        return this.roles;
    }

    public Object getCredentials() {
        return this.perms;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms;
    }

}

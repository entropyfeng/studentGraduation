package com.university.graduation.shiro.token;

import org.jsets.shiro.token.StatelessToken;

/**
 * JWT(json web token)令牌
 */
public class JwtToken extends StatelessToken {

    private String jwt;

    public JwtToken(String host,String jwt){
        super(host);
        this.jwt = jwt;
    }

    @Override
    public Object getPrincipal() {
        return this.jwt;
    }

    @Override
    public Object getCredentials() {
        return Boolean.TRUE;
    }

    public String getJwt() {
        return jwt;
    }

    public void setJwt(String jwt) {
        this.jwt = jwt;
    }
}
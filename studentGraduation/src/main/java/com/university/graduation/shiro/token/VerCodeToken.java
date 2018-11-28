package com.university.graduation.shiro.token;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * 验证码登录
 */
public class VerCodeToken implements AuthenticationToken {

    private String phoneNumber;
    private String verCode;

    public VerCodeToken(String phoneNumber, String verCode) {
        this.phoneNumber = phoneNumber;
        this.verCode = verCode;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getVerCode() {
        return verCode;
    }

    public void setVerCode(String verCode) {
        this.verCode = verCode;
    }

    @Override
    public Object getPrincipal() {
        return phoneNumber;

    }

    @Override
    public Object getCredentials() {
        return verCode;
    }
}

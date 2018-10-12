package com.university.graduation.shiro.token;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * 无状态令牌抽象类
 *
 */
public abstract class StatelessToken implements AuthenticationToken {
    private String host;// 客户IP

    public StatelessToken(String host){
        this.host = host;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

}

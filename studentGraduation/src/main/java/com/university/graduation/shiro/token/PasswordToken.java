package com.university.graduation.shiro.token;

import com.university.graduation.util.AESUtil;
import com.university.graduation.util.RSAUtil;
import org.apache.shiro.authc.AuthenticationToken;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 12:34 2018/2/27
 */
public class PasswordToken implements AuthenticationToken{

    private static final long serialVersionUID = 1L;
    private String username;
    private String password;
    private String timestamp;
    private String host;
    private String privateKey;

    public PasswordToken(String username, String password, String timestamp, String host,String privateKey) throws Exception {
        this.username = username;
        this.timestamp = timestamp;
        this.host = host;
        this.password = RSAUtil.RSADecode(password,privateKey);
        this.privateKey = privateKey;

    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPassword() {
        return this.password;
    }

    public Object getPrincipal() {
        return this.username;
    }

    public Object getCredentials() {
        return this.password;
    }

    public String getAppId() {
        return username;
    }

    public void setAppId(String appId) {
        this.username = appId;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getTokenKey() {
        return privateKey;
    }

    public void setTokenKey(String privateKey) {
        this.privateKey = privateKey;
    }
}

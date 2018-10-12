package com.university.graduation.shiro.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "shiro")
public class ShiroProperties {

    /**
     * 加密所需要的算法
     */
    @Value("${shiro.passwordAlg}")
    private String passwordAlg;

    /**
     * 加密所需要的盐
     */
    @Value("${shiro.passwordSalt}")
    private String passwordSalt;
    /**
     * 加密次数
     */
    @Value("${shiro.passwordIterations}")
    private Integer passwordIterations;

    /**
     * hmac 秘钥
     */
    @Value("${shiro.hmacSecretKey}")
    private String hmacSecretKey;

    /**
     * hmac 算法
     */
    @Value("${shiro.hmacAlg}")

    private String hmacAlg;

    /**
     * jwt 秘钥
     */
    @Value("${shiro.jwtSecretKey}")
    private String jwtSecretKey;

    public String getPasswordAlg() {
        return passwordAlg;
    }

    public void setPasswordAlg(String passwordAlg) {
        this.passwordAlg = passwordAlg;
    }

    public String getPasswordSalt() {
        return passwordSalt;
    }

    public void setPasswordSalt(String passwordSalt) {
        this.passwordSalt = passwordSalt;
    }

    public Integer getPasswordIterations() {
        return passwordIterations;
    }

    public void setPasswordIterations(Integer passwordIterations) {
        this.passwordIterations = passwordIterations;
    }

    public String getHmacSecretKey() {
        return hmacSecretKey;
    }

    public void setHmacSecretKey(String hmacSecretKey) {
        this.hmacSecretKey = hmacSecretKey;
    }

    public String getHmacAlg() {
        return hmacAlg;
    }

    public void setHmacAlg(String hmacAlg) {
        this.hmacAlg = hmacAlg;
    }

    public String getJwtSecretKey() {
        return jwtSecretKey;
    }

    public void setJwtSecretKey(String jwtSecretKey) {
        this.jwtSecretKey = jwtSecretKey;
    }



}

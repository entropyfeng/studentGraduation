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
     * hmac 算法
     */
    @Value("${shiro.hmacAlg}")

    private String hmacAlg;


    /**
     * hmac 秘钥
     */
    @Value("${shiro.hmacSecretKey}")
    private String hmacSecretKey;

    /**
     * jwt 秘钥
     */
    @Value("${shiro.jwtSecretKey}")
    private String jwtSecretKey;




    private boolean jcaptchaEnable = Boolean.FALSE; // 是否启用验证码
    private boolean keepOneEnabled = Boolean.FALSE; // 是否启用账号唯一用户登陆
    private boolean forceLogoutEnable = Boolean.FALSE; // 是否启用强制用户下线
    private boolean authCacheEnabled = Boolean.FALSE;// 是否启用认证授权缓存
    private boolean hmacEnabled = Boolean.FALSE; // 是否启用HMAC鉴权
    private boolean hmacBurnEnabled = Boolean.FALSE; // 是否启用HMAC签名即时失效
    private boolean jwtEnabled = Boolean.FALSE; // 是否启用JWT鉴权
    private boolean jwtBurnEnabled = Boolean.FALSE; // 是否启用JWT令牌即时失效













    // ATTRIBUTE名称
    public static final String ATTRIBUTE_SESSION_CURRENT_USER = "shiro_current_user";
    public static final String ATTRIBUTE_SESSION_CURRENT_USER_ACCOUNT = "shiro_current_user_account";
    public static final String ATTRIBUTE_SESSION_KICKOUT = "shiro_kickout_attribute";
    public static final String ATTRIBUTE_SESSION_FORCE_LOGOUT = "shiro_force_logout_attribute";
    public static final String ATTRIBUTE_REQUEST_AUTH_MESSAGE = "shiro_auth_message";
    //  PARAM名称
    public static final String PARAM_JCAPTCHA = "jcaptcha";
    public static final String PARAM_HMAC_APP_ID = "hmac_app_id";
    public static final String PARAM_HMAC_TIMESTAMP = "hmac_timestamp";
    public static final String PARAM_HMAC_DIGEST = "hmac_digest";
    public static final String PARAM_JWT = "jwt";
    // 缓存名称
    public static final String CACHE_NAME_PASSWORD_RETRY = "shiro-passwordRetryCache";
    public static final String CACHE_NAME_KEEP_ONE_USER = "shiro-keepOneUserCache";
    public static final String CACHE_NAME_AUTHENTICATION = "shiro-authenticationCache";
    public static final String CACHE_NAME_AUTHORIZATION = "shiro-authorizationCache";
    public static final String CACHE_NAME_TOKEN_BURNERS = "shiro-tokenBurnersCache";

    // HASH加密算法
    public static final String HASH_ALGORITHM_NAME_MD5 = "MD5";
    public static final String HASH_ALGORITHM_NAME_SHA1 = "SHA-1";
    public static final String HASH_ALGORITHM_NAME_SHA256 = "SHA-256";
    public static final String HASH_ALGORITHM_NAME_SHA512 = "SHA-512";
    // HMACA签名算法
    public static final String HMAC_ALGORITHM_NAME_MD5 = "HmacMD5";// 128位
    public static final String HMAC_ALGORITHM_NAME_SHA1 = "HmacSHA1";// 126
    public static final String HMAC_ALGORITHM_NAME_SHA256 = "HmacSHA256";// 256
    public static final String HMAC_ALGORITHM_NAME_SHA512 = "HmacSHA512";// 512

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

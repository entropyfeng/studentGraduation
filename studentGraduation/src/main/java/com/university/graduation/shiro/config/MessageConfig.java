package com.university.graduation.shiro.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

/**
 * 用户提示信息配置
 */
@Configuration
public class MessageConfig {

    private MessageConfig(){};

    private static class MessagesHolder{
        private static MessageConfig MESSAGES = new MessageConfig();
    }
    protected static MessageConfig ins(){
        return MessagesHolder.MESSAGES;
    }

    // 验证码为空
    public static final String MSG_CAPTCHA_EMPTY = "验证码不能为空";
    // 验证码错误
    public static final String MSG_CAPTCHA_ERROR = "验证码错误";
    // 账号密码为空
    public static final String MSG_ACCOUNT_PASSWORD_EMPTY = "账号和密码均不能为空";
    // 账号不存在
    public static final String MSG_ACCOUNT_NOT_EXIST = "账号不存在";
    // 账号异常
    public static final String MSG_ACCOUNT_EXCEPTION = "账号异常";
    // 账号或密码错误
    public static final String MSG_ACCOUNT_PASSWORD_ERROR = "账号或密码错误";
    // 密码重试错误
    public static final String MSG_PASSWORD_RETRY_ERROR = "密码输入错误 {total} 次账号将被锁定, 您还能再试 {remain} 次";
    // 验证码为空
    public static final String MSG_BURNED_TOKEN = "签名/令牌已经作废";
    // 找不到秘钥
    public static final String MSG_NO_SECRET_KEY = "找不验签秘钥";
    // 签名无效
   public static final String MSG_HMAC_ERROR = "hmac签名无效";
    // 签名过期
    public static final String MSG_HMAC_TIMEOUT = "hmac签名超时失效";
    // 令牌无效
    public static final String MSG_JWT_ERROR = "jwt无效";
    // 令牌过期
    public static final String MSG_JWT_TIMEOUT = "jwt令牌超时失效";
    // 令牌格式错误
    public static final String MSG_JWT_MALFORMED = "jwt格式错误";
    // 令牌签名无效
    public static final String MSG_JWT_SIGNATURE = "jwt签名无效";
    // REST编码-身份验证成功
    public static final String REST_CODE_AUTH_SUCCEED = "auth:succeed";
    // REST消息-身份验证成功
    public static final String REST_MESSAGE_AUTH_SUCCEED = "身份验证成功";
    // REST编码-身份验证失败
    public static final String REST_CODE_AUTH_LOGIN_ERROR = "auth:login_error";
    // REST消息-身份验证失败
    public static final String REST_MESSAGE_AUTH_LOGIN_ERROR = "身份验证失败";
    // REST编码-需要身份验证
    public static final String REST_CODE_AUTH_UNAUTHORIZED = "auth:unauthorized";
    // REST消息-需要身份验证
    public static final String REST_MESSAGE_AUTH_UNAUTHORIZED = "需要身份验证";
    // REST编码-权限不足
    public static final String REST_CODE_AUTH_FORBIDDEN = "auth:forbidden";
    // REST消息-权限不足
    public static final String REST_MESSAGE_AUTH_FORBIDDEN = "权限不足";
    // REST编码-无用户
    public static final String REST_CODE_AUTH_USER_NOT_FOUND = "auth:user_not_found";
    // REST编码-密码错误
    public static final String REST_CODE_AUTH_NO_PERMISSION = "auth:bad_password";
    // REST编码-未知错误
    public static final String REST_CODE_INTERNAL_UNKNOWN_ERROR = "internal:unknown_error";



}
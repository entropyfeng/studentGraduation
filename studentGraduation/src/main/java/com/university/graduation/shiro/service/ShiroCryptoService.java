package com.university.graduation.shiro.service;

import com.university.graduation.shiro.config.ShiroProperties;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 加密服务
 */
@Service
public class ShiroCryptoService {
/*
    @Autowired
    ShiroProperties shiroProperties;

    *//**
     * 散列算法 生成数据的摘要信息，是一种不可逆的算法，一般适合存储密码之类的数据，
     * @param plaintext 明文
     *//*
    public String generatePassword(String plaintext) {
        return new SimpleHash(this.shiroProperties.getPasswordAlg()
                ,plaintext
                ,this.shiroProperties.getPasswordSalt()
                ,this.shiroProperties.getPasswordIterations()
        ).toHex();
    }

    *//**
     * 生成HMAC摘要
     *
     * @param plaintext 明文
     *//*
    public String hmacDigest(String plaintext) {
        return hmacDigest(plaintext,this.shiroProperties.getHmacSecretKey());
    }

    *//**
     * 生成HMAC摘要
     *
     * @param plaintext 明文
     *//*
    public String hmacDigest(String plaintext,String appKey) {
        return CryptoUtil.hmacDigest(plaintext,appKey,this.shiroProperties.getHmacAlg());
    }

    *//**
     * 验签JWT
     *
     * @param jwt json web token
     *//*
    public StatelessLogined parseJwt(String jwt) {
        return parseJwt(jwt,this.shiroProperties.getJwtSecretKey());
    }

    *//**
     * 验签JWT
     *
     * @param jwt json web token
     *//*
    public StatelessLogined parseJwt(String jwt,String appKey) {
        Claims claims = Jwts.parser()
                .setSigningKey(DatatypeConverter.parseBase64Binary(appKey))
                .parseClaimsJws(jwt)
                .getBody();
        StatelessLogined statelessAccount = new StatelessLogined();
        statelessAccount.setTokenId(claims.getId());// 令牌ID
        statelessAccount.setAppId(claims.getSubject());// 客户标识
        statelessAccount.setIssuer(claims.getIssuer());// 签发者
        statelessAccount.setIssuedAt(claims.getIssuedAt());// 签发时间
        statelessAccount.setAudience(claims.getAudience());// 接收方
        statelessAccount.setRoles(claims.get("roles", String.class));// 访问主张-角色
        statelessAccount.setPerms(claims.get("perms", String.class));// 访问主张-权限
        return statelessAccount;
    }*/

}

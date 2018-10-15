package com.university.graduation.shiro.service;

import com.university.graduation.shiro.config.ShiroProperties;
import com.university.graduation.shiro.model.StatelessLogined;
import com.university.graduation.shiro.util.CryptoUtil;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.apache.shiro.crypto.hash.SimpleHash;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.bind.DatatypeConverter;

/**
 * 加密服务
 */
@Service
public class ShiroCryptoService {
    @Autowired
    ShiroProperties shiroProperties;



    /**
     * 散列算法 生成数据的摘要信息，是一种不可逆的算法，一般适合存储密码之类的数据
     * @param plaintext 明文
     * @return 加密后的密码
     */
    public String generatePassword(String plaintext) {
        return new SimpleHash(this.shiroProperties.getPasswordAlg()
                ,plaintext
                ,this.shiroProperties.getPasswordSalt()
                ,this.shiroProperties.getPasswordIterations()
        ).toHex();
    }


    public String hmacDigest(String plaintext) {
        return hmacDigest(plaintext,this.shiroProperties.getHmacSecretKey());
    }

    /**
     *
     * @param plaintext 明文
     * @param appKey 秘钥
     * @return 生成的Hmac摘要
     */
    public String hmacDigest(String plaintext,String appKey) {
        return CryptoUtil.hmacDigest(plaintext,appKey,this.shiroProperties.getHmacAlg());
    }

    /**
     *默认解析Jwt 即使用全局的 jwtSecretKey
     * @param jwt jwt 字符串
     * @return
     */
    public StatelessLogined parseJwt(String jwt) {
        return parseJwt(jwt,this.shiroProperties.getJwtSecretKey());
    }

    /**
     *使用单独的jwtSecretKey
     * @param jwt json 字符串
     * @param appKey 秘钥
     * @return 无状态账号
     */

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
    }

}

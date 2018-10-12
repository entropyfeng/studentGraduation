package com.university.graduation.shiro.util;

import io.jsonwebtoken.CompressionCodecs;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import java.util.Date;
import java.util.UUID;

/**
 * 安全加密工具类
 *
 */
//@SuppressWarnings("all")
public  class CryptoUtil {
    // HMAC 加密算法名称
    public static final String HMAC_MD5 = "HmacMD5";// 128位
    public static final String HMAC_SHA1 = "HmacSHA1";// 126位
    public static final String HMAC_SHA256 = "HmacSHA256";// 256位
    public static final String HMAC_SHA512 = "HmacSHA512";// 512位


    /**
     * 签发jwt
     * @param jwtSecretKey 加密秘钥
     * @param subject 签发主体
     * @param issuer 签发人
     * @param period 有效时间（单位毫秒）
     * @param roles  访问主张-角色
     * @param permissions 访问主张-权限
     * @param algorithm 加密算法
     * @return jwt 字符串
     */
   public static String issueJwt(String jwtSecretKey
            ,String subject,String issuer,Long period,String roles
            ,String permissions,SignatureAlgorithm algorithm) {

        // 当前时间戳(精确到毫秒)
        long currentTimeMillis = System.currentTimeMillis();
        // 将秘钥解析成以Base64编码的字符串
        byte[] secretKeyBytes = DatatypeConverter.parseBase64Binary(jwtSecretKey);
        JwtBuilder jwt  =  Jwts.builder();
        //生成Id
        jwt.setId(UUID.randomUUID().toString());
        // 用户名
        jwt.setSubject(subject);
        // 签发者
        if(null!=issuer&&!"".equals(issuer)) jwt.setIssuer(issuer);
        // 签发时间
        jwt.setIssuedAt(new Date(currentTimeMillis));
        // 有效时间
        if(null != period){
            Date expiration = new Date(currentTimeMillis+period);
            jwt.setExpiration(expiration);
        }
        // 访问主张-角色
        if(null!=roles&&!"".equals(roles)) jwt.claim("roles", roles);
        // 访问主张-权限
        if(null!=permissions&&!"".equals(permissions)) jwt.claim("perms", permissions);
        /**
         * 使用DeflateCompressionCodec()压缩jwt
         */
        jwt.compressWith(CompressionCodecs.DEFLATE);
        jwt.signWith(algorithm, secretKeyBytes);
        return jwt.compact();
    }

    /**
     * 生成Hmac 摘要
     * @param plaintext 明文
     * @param secretKey 秘钥
     * @param algName 算法名称
     * @return Hmac 摘要
     */
    public static String hmacDigest(String plaintext,String secretKey,String algName) {
        try {
            Mac mac = Mac.getInstance(algName);
            byte[] secretByte = secretKey.getBytes();
            byte[] dataBytes = plaintext.getBytes();
            SecretKey secret = new SecretKeySpec(secretByte,algName);
            mac.init(secret);
            byte[] doFinal = mac.doFinal(dataBytes);
            return byte2HexStr(doFinal);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }


    /**
     * 字节数组转字符串
     *
     * @param bytes 字节数组
     * @return 字符串
     */
    private static String byte2HexStr(byte[] bytes) {
        StringBuilder hs = new StringBuilder();
        String stmp;
        for (int n = 0; bytes!=null && n < bytes.length; n++) {
            stmp = Integer.toHexString(bytes[n] & 0XFF);
            if (stmp.length() == 1)
                hs.append('0');
            hs.append(stmp);
        }
        return hs.toString().toUpperCase();
    }

    public static void main(String[] args) {
        String test="我是一只鸡";
        System.out.println(test.getBytes());

    }

}

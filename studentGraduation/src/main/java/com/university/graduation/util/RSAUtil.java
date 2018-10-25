package com.university.graduation.util;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import javax.crypto.Cipher;

import java.security.*;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;

/**
 * 非对称加密算法 RSA
 * 使用RSA明文长度不得超过秘钥长度否则会抛诸如
 * javax.crypto.IllegalBlockSizeException: Data must not be longer than xxxx bytes 的异常)。
 */
public class RSAUtil {
    private static final Logger logger = LoggerFactory.getLogger(RSAUtil.class);
    private static final String RSA_ALGORITHM = "RSA";
    private static final int KEY_SIZE = 1024;
    private static KeyPairGenerator keyPairGenerator;

    public static Map<String, String> createKeys() {
        try {
            keyPairGenerator = KeyPairGenerator.getInstance(RSA_ALGORITHM);
        } catch (NoSuchAlgorithmException e) {
            logger.warn(e.getMessage());
        }
        keyPairGenerator.initialize(KEY_SIZE, new SecureRandom());
        KeyPair keyPair = keyPairGenerator.generateKeyPair();
        Key publicKey = keyPair.getPublic();
        Key privateKey = keyPair.getPrivate();

        String publicKeyStr = Base64.encodeBase64URLSafeString(publicKey.getEncoded());
        String privateKeyStr = Base64.encodeBase64URLSafeString(privateKey.getEncoded());
        Map<String, String> map = new HashMap<>();
        map.put("publicKey", publicKeyStr);
        map.put("privateKey", privateKeyStr);
        return map;

    }

    public static String RSADecode(String data, String privateKey) {

        try {
            //解析字符串

            KeyFactory keyFactory = KeyFactory.getInstance(RSA_ALGORITHM);
            PKCS8EncodedKeySpec pkcs8EncodedKeySpec = new PKCS8EncodedKeySpec(Base64.decodeBase64(privateKey));
            RSAPrivateKey rsaPrivateKey = (RSAPrivateKey) keyFactory.generatePrivate(pkcs8EncodedKeySpec);

            Cipher cipher = Cipher.getInstance(RSA_ALGORITHM);
            cipher.init(Cipher.DECRYPT_MODE, rsaPrivateKey);
            return new String(cipher.doFinal(Base64.decodeBase64(data)));

        } catch (Exception e) {
            logger.warn(e.getMessage());
            return null;
        }
    }

    public static String RSAEncode(String data, String publicKey) {

        try {

            //将字符串形式解析成类
            KeyFactory keyFactory = KeyFactory.getInstance(RSA_ALGORITHM);
            X509EncodedKeySpec keySpec = new X509EncodedKeySpec(Base64.decodeBase64(publicKey));
            RSAPublicKey rsaPublicKey = (RSAPublicKey) keyFactory.generatePublic(keySpec);

            Cipher cipher = Cipher.getInstance(RSA_ALGORITHM);
            cipher.init(Cipher.ENCRYPT_MODE, rsaPublicKey);

            return Base64.encodeBase64URLSafeString(cipher.doFinal(data.getBytes()));

        } catch (Exception e) {
           logger.warn(e.getMessage());
           return null;
        }
    }

    public static void main(String[] args) {
        Map<String, String> map = createKeys();
        String publicKey = map.get("publicKey");
        String privateKey = map.get("privateKey");
        System.out.println("public: " + publicKey);
        System.out.println("private: " + privateKey);
        String plainData = "我随手一打就是标准的十五字";
        String secretData = RSAUtil.RSAEncode(plainData, publicKey);

        String result = RSADecode(secretData, privateKey);
        System.out.println(result);

    }
}

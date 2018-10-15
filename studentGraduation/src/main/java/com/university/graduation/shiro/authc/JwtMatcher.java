package com.university.graduation.shiro.authc;

import com.university.graduation.shiro.cache.CacheDelegator;
import com.university.graduation.shiro.config.MessageConfig;
import com.university.graduation.shiro.config.ShiroProperties;
import com.university.graduation.shiro.model.StatelessLogined;
import com.university.graduation.shiro.service.ShiroCryptoService;
import com.university.graduation.shiro.service.ShiroStatelessAccountProvider;
import com.university.graduation.shiro.util.Commons;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.SignatureException;
import jdk.internal.joptsimple.internal.Strings;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * JWT 匹配器
 */
public class JwtMatcher implements CredentialsMatcher {

    @Autowired
    private ShiroProperties shiroProperties;


    private ShiroStatelessAccountProvider shiroStatelessAccountProvider;

    @Autowired
    private CacheDelegator cacheDelegator;

    @Autowired
    private ShiroCryptoService shiroCryptoService;

    @Override
    public boolean doCredentialsMatch(AuthenticationToken authenticationToken, AuthenticationInfo authenticationInfo) {
       String  jwt=(String)authenticationInfo.getCredentials();
        StatelessLogined statelessAccount=null;
        try {
            //如果存在公共的秘钥
            if (Commons.hasLen(shiroProperties.getJwtSecretKey())){
                statelessAccount=shiroCryptoService.parseJwt(jwt);
            }else {
                String appId=(String) Commons.readValue(Commons.parseJwtPayload(jwt)).get("subject");
                String appKey=shiroStatelessAccountProvider.loadAppKey(appId);

                if(Strings.isNullOrEmpty(appKey)){
                    //找不到签名秘钥
                    throw new AuthenticationException(MessageConfig.MSG_NO_SECRET_KEY);
                }
                statelessAccount=shiroCryptoService.parseJwt(jwt,appKey);
            }
            //签名异常
        }catch (SignatureException e){
            throw new AuthenticationException(shiroProperties.getJwtSecretKey());
            //Jwt过期异常
        }catch (ExpiredJwtException e){
            throw new AuthenticationException(MessageConfig.MSG_JWT_TIMEOUT);
        }catch (Exception e){
            //jwt无效
            throw new AuthenticationException(MessageConfig.MSG_JWT_ERROR);
        }
        if(null==statelessAccount){
            throw  new AuthenticationException(MessageConfig.MSG_JWT_ERROR);
        }


        String tokenId=statelessAccount.getTokenId();dd

        return false;
    }




    public void setShiroStatelessAccountProvider(ShiroStatelessAccountProvider shiroStatelessAccountProvider) {
        this.shiroStatelessAccountProvider = shiroStatelessAccountProvider;
    }

}

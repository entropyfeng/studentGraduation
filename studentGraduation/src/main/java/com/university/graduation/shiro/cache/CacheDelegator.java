package com.university.graduation.shiro.cache;

import com.university.graduation.shiro.config.ShiroProperties;
import com.university.graduation.shiro.util.Commons;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * Cache 功能委托类
 */


public class CacheDelegator {



    private CacheManager cacheManager;
    private short cacheType;
    //作用是做为锁
    private final Object cacheMonitor=new Object();


    /**
     * 获取并增加密码重试次数
     */
    public int incPasswdRetryCount(String account){
        //获得shiro-passwordRetryCache缓存
        Cache<String,Integer> cache = this.cacheManager.getCache(ShiroProperties.CACHE_NAME_PASSWORD_RETRY);
        synchronized (cacheMonitor) {
            Integer count = cache.get(account);
            if (null == count) {
                count =0;
            }
            cache.put(account,count);
            return count;
        }
    }
    /**
     * 清扫密码重试次数
     */
    public void cleanPasswdRetryCount(String account){
        Cache<String,AtomicInteger> cache = cacheManager.getCache(ShiroProperties.CACHE_NAME_PASSWORD_RETRY);
        cache.remove(account);
    }

    /**
     * 获取保持登陆状态的用户
     */
    public String getKeepUser(String account){
        Cache<String,String> cache = this.cacheManager.getCache(ShiroProperties.CACHE_NAME_KEEP_ONE_USER);
        return cache.get(account);
    }

    /**
     * 缓存保持登陆状态的用户
     */
    public String putKeepUser(String account,String sessionId){
        Cache<String,String> cache =  this.cacheManager.getCache(ShiroProperties.CACHE_NAME_KEEP_ONE_USER);
        return cache.put(account, sessionId);
    }

    /**
     * 清扫账号对应的认证、授权缓存
     */
    public void clearAuthCache(String account,String realmName){
        synchronized (cacheMonitor) {
            // "shiro-authenticationCache"; 验证缓存
            Cache<String, AuthenticationInfo> authenticationCache = cacheManager.getCache(ShiroProperties.CACHE_NAME_AUTHENTICATION);
           //shiro-authorizationCache 授权缓存
            Cache<Object,AuthorizationInfo> authorizationCache = cacheManager.getCache(ShiroProperties.CACHE_NAME_AUTHORIZATION);
            authenticationCache.remove(account);
            authorizationCache.remove(new SimplePrincipalCollection(account,realmName));
        }
    }

    /**
     * 是否销毁(作废)的token
     */
    public boolean cutBurnedToken(String token){
        if(Commons.CACHE_TYPE_MAP == this.cacheType) return false;
        //shiro-tokenBurnersCache
        Cache<String,Integer> cache =  cacheManager.getCache(ShiroProperties.CACHE_NAME_TOKEN_BURNERS);
        Integer burned = cache.get(token);
        if(null == burned){
            cache.put(token, 0);
            if(Commons.CACHE_TYPE_REDIS == this.cacheType){
                RedisCacheManager redisCacheManager = (RedisCacheManager)cacheManager;
                redisCacheManager.setRedisTimeout(ShiroProperties.CACHE_NAME_TOKEN_BURNERS,86400l);
            }
            return false;
        }
        return true;
    }

    public void setCacheManager(CacheManager cacheManager) {
        this.cacheManager = cacheManager;
    }

    public void setCacheType(short cacheType) {
        this.cacheType = cacheType;
    }

}

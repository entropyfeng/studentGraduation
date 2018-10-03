package com.university.graduation.config;


import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import com.university.graduation.shiro.MyShiroRealm;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.mgt.SecurityManager;


import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;

import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;

import org.apache.shiro.web.servlet.SimpleCookie;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;



import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {
    /**
     * 添加ShiroDialect 可以在thymeleaf中使用shiro标签
     *
     * @return
     */

    @Bean
    public ShiroDialect shiroDialect() {
        return new ShiroDialect();
    }


    @Bean
    public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
        System.out.println("-----------shiro Filter-------");
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        //拦截器.
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();
        //配置退出过滤器,其中的具体的退出代码Shiro已经替我们实现了
        filterChainDefinitionMap.put("/logout", "logout");
        filterChainDefinitionMap.put("/user/login", "anon");
        // authc:所有url都必须认证通过才可以访问; anon:所有url都都可以匿名访问
        filterChainDefinitionMap.put("/user/**", "anon");
        filterChainDefinitionMap.put("/test", "authc");
        filterChainDefinitionMap.put("/page", "authc");
        // 如果不设置默认会自动寻找Web工程根目录下的"/login.jsp"页面
         shiroFilterFactoryBean.setLoginUrl("/login");
        shiroFilterFactoryBean.setUnauthorizedUrl("/fail");//未授权跳转
        //登录成功跳转的链接 (这个不知道怎么用，我都是自己实现跳转的)
        shiroFilterFactoryBean.setSuccessUrl("/main");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }

    /**
     * 凭证匹配器
     * 由于我们的密码校验交给Shiro的SimpleAuthenticationInfo进行处理了
     *
     * @return
     */
    @Bean
    public HashedCredentialsMatcher hashedCredentialsMatcher() {
        System.out.println("In hashedCredentialsMatcher()");
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName("md5");//散列算法:这里使用MD5算法;
        hashedCredentialsMatcher.setHashIterations(2);//散列的次数，比如散列两次，相当于 md5(md5(""));
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        return hashedCredentialsMatcher;
    }


    @Bean
    public MyShiroRealm myShiroRealm() {
        MyShiroRealm myShiroRealm = new MyShiroRealm();
        //使用加密
        myShiroRealm.setCredentialsMatcher(hashedCredentialsMatcher());
        return myShiroRealm;
    }

    @Bean
    public SecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(myShiroRealm());

        securityManager.setRememberMeManager(rememberMeManager());
        return securityManager;
    }

    /**
     * 异常处理
     *
     * @return
     *//*
    @Bean
    public HandlerExceptionResolver solver() {
        HandlerExceptionResolver handlerExceptionResolver = new HandlerExceptionResolver() {
        } return handlerExceptionResolver;
    }
*/
    /**
     * Cookie对象
     *
     * @return
     */
    @Bean
    public SimpleCookie rememberMeCookie() {
        System.out.println("ShiroConfig.rememberMeCookie");
        SimpleCookie simpleCookie = new SimpleCookie("rememberMe");
        //有效期为1天单位秒
        simpleCookie.setMaxAge(60 * 60 * 24);
        return simpleCookie;

    }

    /**
     * Cookie管理对象
     *
     * @return
     */
    @Bean
    public CookieRememberMeManager rememberMeManager() {
        System.out.println("ShiroConfig.rememberMeManage");
        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        cookieRememberMeManager.setCookie(rememberMeCookie());
        return cookieRememberMeManager;
    }

    /**
     * 开启shiro aop注解支持
     * 使用代理方式，所以需要开启代码支持
     *
     * @return
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor() {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager());
        return authorizationAttributeSourceAdvisor;

    }


}

package com.university.graduation.shiro.realm;



import com.university.graduation.shiro.matcher.JwtMatcher;
import com.university.graduation.shiro.matcher.PasswordMatcher;
import com.university.graduation.shiro.matcher.VerCodeMatcher;
import com.university.graduation.shiro.provider.AccountProvider;
import com.university.graduation.shiro.token.JwtToken;
import com.university.graduation.shiro.token.PasswordToken;
import com.university.graduation.shiro.token.VerCodeToken;
import org.apache.shiro.realm.Realm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* *
 * @Author tomsun28
 * @Description realm管理器
 * @Date 17:52 2018/3/3
 */
@Component
public class RealmManager {

    private PasswordMatcher passwordMatcher;
    private JwtMatcher jwtMatcher;
    private AccountProvider accountProvider;
    private VerCodeMatcher verCodeMatcher;
    private StringRedisTemplate stringRedisTemplate;
    @Autowired
    public RealmManager(AccountProvider accountProvider, StringRedisTemplate stringRedisTemplate,PasswordMatcher passwordMatcher, VerCodeMatcher verCodeMatcher, JwtMatcher jwtMatcher) {
        this.accountProvider = accountProvider;
        this.passwordMatcher = passwordMatcher;
        this.jwtMatcher = jwtMatcher;
        this.verCodeMatcher=verCodeMatcher;
        this.stringRedisTemplate=stringRedisTemplate;
    }

    public List<Realm> initGetRealm() {
        List<Realm> realmList = new LinkedList<>();
        //------verCode
        VerCodeRealm verCodeRealm =new VerCodeRealm();
        verCodeRealm.setRedisTemplate(stringRedisTemplate);
        verCodeRealm.setCredentialsMatcher(verCodeMatcher);
        verCodeRealm.setAuthenticationTokenClass(VerCodeToken.class);
        realmList.add(verCodeRealm);
        // ----- password
        PasswordRealm passwordRealm = new PasswordRealm();
        passwordRealm.setAccountProvider(accountProvider);
        passwordRealm.setCredentialsMatcher(passwordMatcher);
        passwordRealm.setAuthenticationTokenClass(PasswordToken.class);
        realmList.add(passwordRealm);
        // ----- jwt
        JwtRealm jwtRealm = new JwtRealm();
        jwtRealm.setCredentialsMatcher(jwtMatcher);
        jwtRealm.setAuthenticationTokenClass(JwtToken.class);
        realmList.add(jwtRealm);
        return Collections.unmodifiableList(realmList);
    }
}

package com.university.graduation.shiro.service;

import com.google.common.collect.Sets;
import com.university.graduation.shiro.model.Account;
import com.university.graduation.shiro.model.DefaultAccount;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.Collections;
import java.util.Set;

public class DefaultAccountProvider implements ShiroAccountProvider {
    @Autowired
    ShiroCryptoService shiroCryptoService;

    private static final String DEFAULT_ACCOUNT = "test";
    private static final String DEFAULT_ROLES = "testRole";
    private static final String DEFAULT_PERMS = "testPerm";

    @Override
    public Account loadAccount(String account) throws AuthenticationException {
        if (!DEFAULT_ACCOUNT.equals(account)) throw new AuthenticationException("用户名或密码错误");
        return new DefaultAccount(account, shiroCryptoService.generatePassword(DEFAULT_ACCOUNT));//生成默认账户
    }

    @Override
    public Set<String> loadRoles(String account) {
        return Sets.newHashSet(Collections.singletonList(DEFAULT_ROLES));
    }

    @Override
    public Set<String> loadPermissions(String account) {
        return Sets.newHashSet(Collections.singletonList(DEFAULT_PERMS));
    }
}

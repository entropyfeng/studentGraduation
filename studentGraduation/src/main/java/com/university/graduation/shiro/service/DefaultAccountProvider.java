package com.university.graduation.shiro.service;

import org.apache.shiro.authc.AuthenticationException;
import org.jsets.shiro.model.Account;

import java.util.Set;

public class DefaultAccountProvider  implements ShiroAccountProvider{
    @Override
    public Account loadAccount(String account) throws AuthenticationException {
        return null;
    }

    @Override
    public Set<String> loadRoles(String account) {
        return null;
    }

    @Override
    public Set<String> loadPermissions(String account) {
        return null;
    }
}

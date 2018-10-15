package com.university.graduation.shiro.service;

import com.university.graduation.shiro.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.naming.AuthenticationException;
import java.util.Set;
@Service
public class DefaultStatelessAccountProvider implements ShiroStatelessAccountProvider {
    @Autowired
    private ShiroAccountProvider shiroAccountProvider;
    @Override
    public boolean checkAccount(String appId) throws AuthenticationException {
        Account account=shiroAccountProvider.loadAccount(appId);
        return null!=account;
    }

    @Override
    public String loadAppKey(String appId) {
        return null;
    }

    @Override
    public Set<String> loadRoles(String appId) {
        return shiroAccountProvider.loadRoles(appId);
    }

    @Override
    public Set<String> loadPermissions(String appId) {
        return shiroAccountProvider.loadPermissions(appId);
    }
}

package com.university.graduation.shiro.provider.impl;



import com.university.graduation.domain.vo.Account;
import com.university.graduation.service.AccountService;
import com.university.graduation.shiro.provider.AccountProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 9:22 2018/2/13
 */
@Service("AccountProvider")
public class AccountProviderImpl implements AccountProvider {

      @Autowired
      @Qualifier("AccountService")
      private AccountService accountService;

    public Account loadAccount(String appId) {
        return accountService.loadAccount(appId);
    }
}

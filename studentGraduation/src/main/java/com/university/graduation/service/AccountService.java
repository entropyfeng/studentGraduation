package com.university.graduation.service;


import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.vo.Account;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 22:02 2018/3/7
 */
public interface AccountService {

    Account loadAccountByUsername(String username);
    Account loadAccountByAppId(String appId);
    boolean isAccountExistByAppId(String uid);
    boolean isAccountExistByUsername(String username);
    boolean isAccountExistByPhoneNumber(String phone);
    boolean isAccountExistByEmail(String email);
    boolean registerAccount(AuthUser account);
    String loadAccountRole(String appId);
}

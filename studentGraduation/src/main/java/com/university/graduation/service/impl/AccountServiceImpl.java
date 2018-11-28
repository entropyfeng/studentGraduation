package com.university.graduation.service.impl;


import com.university.graduation.dao.AuthUserMapper;
import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.vo.Account;
import com.university.graduation.service.AccountService;
import com.university.graduation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/* *
 * @Description 
 * @Date 22:04 2018/3/7
 */
@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AuthUserMapper userMapper;

    @Autowired
    private UserService userService;

    @Override
    public Account loadAccountByUsername(String username) {
        AuthUser user=userMapper.selectByUsername(username);
        return user != null ? new Account(user.getUsername(),user.getPassword(),user.getSalt()) : null;
    }

    @Override
    public Account loadAccountByAppId(String appId) throws DataAccessException {
        AuthUser user = userMapper.selectByAppId(appId);
        return user != null ? new Account(user.getUsername(),user.getPassword(),user.getSalt()) : null;
    }



    @Override
    public boolean isAccountExistByAppId(String appId) {
        AuthUser user = userMapper.selectByAppId(appId);
        return user != null ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean isAccountExistByUsername(String username) {
        AuthUser user=userMapper.selectByUsername(username);
        return user != null ? Boolean.TRUE : Boolean.FALSE;

    }

    @Override
    public boolean isAccountExistByPhoneNumber(String phone) {
        AuthUser user=userMapper.selectByPhoneNumber(phone);
        return user != null ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean isAccountExistByEmail(String email) {
        AuthUser user=userMapper.selectByEmail(email);
        return user != null ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public boolean registerAccount(AuthUser account) throws DataAccessException {
        // 给新用户授权管理员角色
        userService.authorityUserRole(account.getUid(),100);
        return userMapper.insertSelective(account) ==1 ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override
    public String loadAccountRole(String appId) throws DataAccessException {

        return userMapper.selectUserRoles(appId);
    }


}

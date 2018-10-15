package com.university.graduation.shiro.model;

public class DefaultAccount implements Account {


    /**
     * 默认账户名
     */
    private String account;
    /**
     * 默认密码
     */
    private String password;


    public DefaultAccount(String account, String password) {
        this.account = account;
        this.password = password;
    }


    public void setAccount(String account) {
        this.account = account;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public String getAccount() {
        return account;
    }

    @Override
    public String getPassword() {
        return password;
    }
}

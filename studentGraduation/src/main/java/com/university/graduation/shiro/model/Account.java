package com.university.graduation.shiro.model;

import java.io.Serializable;


/**
 * 账号的抽象，应用中的用户实体要实现这个接口
 */

public interface Account extends Serializable {

    /**
     * 获取用户名
     */
   String getAccount();
    /**
     * 获取登陆口令
     */
    String getPassword();
}

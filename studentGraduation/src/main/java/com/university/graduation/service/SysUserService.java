package com.university.graduation.service;

import com.university.graduation.domain.SysUser;

public interface SysUserService {
    public SysUser findUserByUserName(String username);
}

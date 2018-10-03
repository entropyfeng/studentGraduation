package com.university.graduation.serviceImpl;

import com.university.graduation.dao.SysUserMapper;
import com.university.graduation.domain.SysUser;
import com.university.graduation.service.SysUserService;
import com.university.graduation.util.DummyDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public  class SysUserServiceImpl implements SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;


    @Override
    public SysUser findUserByUserName(String username) {
    //返回一个假的数据
        return DummyDataSource.getSysUser();

    }
}

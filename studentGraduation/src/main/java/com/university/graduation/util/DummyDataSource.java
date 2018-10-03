package com.university.graduation.util;

import com.university.graduation.domain.SysPermission;
import com.university.graduation.domain.SysRole;
import com.university.graduation.domain.SysUser;

public class DummyDataSource {

    public static SysUser getSysUser(){
        SysUser sysUser=new SysUser();
        sysUser.setSysUsername("admin");
        sysUser.setSysSalt(MD5Util.generateSalt());
        sysUser.setSysPassword(MD5Util.encryptPassword("admin",sysUser.getSysSalt()));
        System.out.println("DummyDataSource password "+sysUser.getSysPassword()+" salt :"+sysUser.getSysSalt());
        sysUser.setSysState(5);


        SysRole sysRole=new SysRole();
        sysRole.setSysRolename("admin");


        SysPermission sysPermission=new SysPermission();
        sysPermission.setPermission("login");
        sysRole.getPermissions().add(sysPermission);

        sysUser.getRoles().add(sysRole);

        return sysUser;
    }
}

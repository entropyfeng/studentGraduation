package com.university.graduation.util;

import com.university.graduation.domain.SysPermission;
import com.university.graduation.domain.SysRole;
import com.university.graduation.domain.SysUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DummyDataSource {

    private static Logger logger=LoggerFactory.getLogger(DummyDataSource.class);
    public static SysUser getSysUser(){
        SysUser sysUser=new SysUser();
        sysUser.setSysUsername("admin");




      logger.info("DummyDataSource password "+sysUser.getSysPassword()+" salt :"+sysUser.getSysSalt());

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

package com.university.graduation.shiro;

import com.university.graduation.domain.SysPermission;
import com.university.graduation.domain.SysRole;
import com.university.graduation.domain.SysUser;

import com.university.graduation.serviceImpl.SysRoleServiceImpl;
import com.university.graduation.serviceImpl.SysUserServiceImpl;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class MyShiroRealm  extends AuthorizingRealm {


 @Autowired
    SysUserServiceImpl sysUserServiceImpl;

 @Autowired
    SysRoleServiceImpl sysRoleServiceImpl;


 //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {


        SysUser sysUser=(SysUser)principalCollection.getPrimaryPrincipal();

        SimpleAuthorizationInfo simpleAuthorizationInfo=new SimpleAuthorizationInfo();

        List<SysRole> list=sysUserServiceImpl.findUserByUserName(sysUser.getSysUsername()).getRoles();



//注入角色
     for (SysRole role:list){
         simpleAuthorizationInfo.addRole(role.getSysRolename());
       //添加权限
         for (SysPermission permission:role.getPermissions()){
             simpleAuthorizationInfo.addStringPermission(permission.getPermission());
         }
     }
        return simpleAuthorizationInfo;
    }

//验证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("MyShiroRealm.oGetAuthenticationInfo()");
      UsernamePasswordToken usernamePasswordToken=(UsernamePasswordToken)authenticationToken;


        String username=usernamePasswordToken.getUsername();
        String password=new String(usernamePasswordToken.getPassword());


        SysUser sysUser=sysUserServiceImpl.findUserByUserName(username);

        if(sysUser==null){
            throw new UnknownAccountException(); //没找到账号
        }else if(password.equals(sysUser.getSysPassword())){

            if(sysUser.getSysState()==0){
                throw new LockedAccountException();
            }else if(sysUser.getSysState()==2){
                throw new DisabledAccountException();
            }else
                {

                   return new SimpleAuthenticationInfo(sysUser.getSysUsername(),sysUser.getSysPassword(),ByteSource.Util.bytes(sysUser.getSysSalt()),getName());

                }

        }else {
            throw new IncorrectCredentialsException();
        }





    }
}

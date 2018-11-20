package com.university.graduation.controller;

import com.university.graduation.domain.bo.AuthRole;
import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.vo.Account;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.AccountService;
import com.university.graduation.service.UserService;
import com.university.graduation.util.MD5Util;
import com.university.graduation.util.RequestResponseUtil;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class AccountInfoController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @ApiOperation(value = "密码修改", notes = "PUT密码修改")
    @PutMapping("/accountInfo/setPassword")
    Message modifyPassword(HttpServletRequest request){
        Map<String,String> params=  RequestResponseUtil.getRequestParameters(request);
        String appId= RequestResponseUtil.getAppId(request);
        String oldPassword= params.get("oldPassword");
        String password=params.get("password");
        AuthUser authUser=userService.getUserByAppId(appId);
        if(MD5Util.md5(oldPassword+authUser.getSalt()).equals(authUser.getPassword())){
            String newPassword=MD5Util.md5(password+authUser.getSalt());
            userService.updatePasswordByAppId(appId,newPassword);
            return new Message().ok(6666,"修改密码成功");
        }else {
            return new Message().error(1111,"账户密码不匹配");
        }

    }
    @ResponseBody
    @GetMapping("/accountInfo/getUsername")
    Message getAccountUsername(HttpServletRequest request){
        String appId= RequestResponseUtil.getAppId(request);
        AuthUser authUser=userService.getUserByAppId(appId);
        String username=authUser.getUsername();
        Message message;
        if(username!=null){
            message= new Message().ok(6666,"成功获取").addData("username",username);
        }else {
            message=new Message().error(1111,"获取失败");
        }

        return message;
    }

    @ResponseBody
    @GetMapping("/accountInfo/getInfo")
    Message getAccountInfo(HttpServletRequest request){
        String appId= RequestResponseUtil.getAppId(request);
        AuthUser authUser=userService.getUserByAppId(appId);
        AuthRole authRole= userService.getAuthRoleByAppId(appId);
        Message message= new Message().ok(6666,"成功获取");
        message.addData("username",authUser.getUsername());
        message.addData("phone",authUser.getPhone());
        message.addData("email",authUser.getEmail());
        message.addData("role",authRole.getName());
        return message;
    }
    @ResponseBody
    @PutMapping("/accountInfo/setInfo")
    Message setAccountInfo(HttpServletRequest request){
        String appId= RequestResponseUtil.getAppId(request);
        Map<String,String> params=  RequestResponseUtil.getRequestParameters(request);
        String email = params.get("email");
        String phone=params.get("phone");
        AuthUser authUser=userService.getUserByAppId(appId);

        if (email!=null){
            authUser.setEmail(email);
        }
        if(phone!=null){
            authUser.setPhone(phone);
        }

        Integer result=  userService.updateUser(authUser);
        Message message;
        if(result!=1){
            message=new Message().error(1111,"更新失败");
        }else {
            message=new Message().ok(6666,"更新成功");
        }

        return message;
    }







}

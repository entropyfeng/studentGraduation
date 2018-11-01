package com.university.graduation.controller;

import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.UserService;
import com.university.graduation.util.MD5Util;
import com.university.graduation.util.RequestResponseUtil;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class SetController {
    @Autowired
    private UserService userService;
    @ResponseBody
    @ApiOperation(value = "密码修改", notes = "PUT密码修改")
    @PutMapping("/set/password")
    Message modifyPassword(HttpServletRequest request){
        System.out.println("进入setControl");
        Map<String,String> params=  RequestResponseUtil.getRequestParameters(request);

        String appId=RequestResponseUtil.getHeader(request,"appId");
        String oldPassword= params.get("oldPassword");
        String password=params.get("password");

        AuthUser authUser=userService.getUserByAppId(appId);

        if(MD5Util.md5(oldPassword+authUser.getSalt()).equals(authUser.getPassword())){

            String newPassword=MD5Util.md5(password+authUser.getSalt());
            userService.updatePasswordByAppId(appId,newPassword);
            System.out.println("修改成功");
            return new Message().ok(6666,"修改密码成功");
        }else {

            return new Message().error(1111,"密码不匹配");
        }

    }

}

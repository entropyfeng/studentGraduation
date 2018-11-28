package com.university.graduation.controller;

import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.vo.Account;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.AccountService;
import com.university.graduation.service.ShortMessageService;
import com.university.graduation.service.UserService;
import com.university.graduation.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ForgetPasswordController {

    @Autowired
    UserService userService;
    @Autowired
    AccountService accountService;

    @Autowired
    ShortMessageService shortMessageService;

    @ResponseBody
    @GetMapping("/forgetPassword/getVerCode")
    Message getVerCode(@Param("phoneNumber")String phoneNumber){
        Message message;
       if(accountService.isAccountExistByPhoneNumber(phoneNumber)&&shortMessageService.sendMessage(phoneNumber).equals("OK")){
       message =new Message().ok(6666,"发送成功");
       }else {
           message=new Message().error(1111,"发送失败");
       }

    return message;
    }

    @ResponseBody
    @PostMapping("/forgetPassword/reset")
    Message forgetPassword(@Param("phoneNumber") String phoneNumber,@Param("verCode") String verCode
            ,@Param("password") String password){
        AuthUser authUser= userService.getUserByPhoneNumber(phoneNumber);
        Message message;
        if(authUser==null||verCode==null||password==null||!shortMessageService.checkMessage(phoneNumber,verCode)){
          message=new Message().error(1111,"获取失败");
        }else {
            String newPassword=MD5Util.md5(password+authUser.getSalt());
            userService.updatePasswordByAppId(authUser.getUid(),newPassword);
            message=new Message().ok(6666,"修改成功");
        }
        return message;







    }

}

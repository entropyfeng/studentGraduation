package com.university.graduation.controller;


import com.university.graduation.serviceImpl.SysUserServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
@CrossOrigin
public class LoginController {

    private Logger logger = LoggerFactory.getLogger(LoginController.class);



    @RequestMapping(value = "login", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxLogin1(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("vercode") String vercode, @Nullable @RequestParam("remember") String remember,@Nullable @RequestParam("access_token")String access_token) {
        logger.info("ajaxLogin1");
        return "haha";
    }




}

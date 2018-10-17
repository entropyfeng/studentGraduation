package com.university.graduation.controller;

import com.alibaba.fastjson.JSONObject;
import com.university.graduation.domain.SysUser;
import com.university.graduation.serviceImpl.SysUserServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.lang.invoke.MethodType;
import java.util.LinkedHashMap;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    SysUserServiceImpl sysUserServiceImpl;

    private Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/ajaxLogin", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> submitLogin(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("rememberMe") Boolean rememberMe) {
      logger.info(username);

        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
        logger.info("success ajaxLogin");

        try {
            UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
            SecurityUtils.getSubject().login(token);
            resultMap.put("status", 200);
            resultMap.put("message", "登录成功");
        } catch (UnknownAccountException e) {
            resultMap.put("status", 500);
            resultMap.put("message", "账号不存在！");
        } catch (IncorrectCredentialsException e1) {
            resultMap.put("status", 500);
            resultMap.put("message", "密码错误！");
        } catch (Exception e) {
            resultMap.put("status", 500);
            resultMap.put("message", "账号不存在");
        }
        return resultMap;
    }

    @RequestMapping(value = "ajaxLogin1", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxLogin1(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("vercode") String vercode, @Nullable @RequestParam("remember") String remember) {
        System.out.println("ssssssssssssssssssssss");
        logger.info(username + " " + password + " " + vercode + " " + remember);
        SysUser sysUser = sysUserServiceImpl.findUserByUserName(username);


        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code", 0);
        jsonObject.put("msg", "登录可能成功");

        return jsonObject.toJSONString();
    }

    @RequestMapping(value = "/fail")
    public String fail() {
        return "fail";
    }

    @RequestMapping(value = {"/login", "login.html", "user/login", "user/login.html"})
    public String Login() {
        System.out.println("xx");
        return "user/login";
    }


}

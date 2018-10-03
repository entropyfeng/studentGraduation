package com.university.graduation.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.LinkedHashMap;
import java.util.Map;

@Controller
public class LoginController {
    @RequestMapping(value = "/ajaxLogin", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> submitLogin(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("rememberMe") Boolean rememberMe) {
        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();

        System.out.println("success ajaxLogin");
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

    @RequestMapping(value = "/fail")
    public String fail(){
        return "fail";
    }

    @RequestMapping(value = "/main")
    public String main(){
        return "main";
    }


}

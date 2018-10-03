package com.university.graduation.controller;

import com.university.graduation.domain.SysUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
@RequestMapping("/index")
    public String index(Model model){
    Subject subject=SecurityUtils.getSubject();
    String userName=(String) subject.getPrincipal();

    model.addAttribute("sysUser",userName);

    return "index";
    }
    @RequestMapping("/login")
    public String login(){
    return "login";
    }


    @RequestMapping("/xx")
    public String xx(){
        return "../layuiAdmin/start/index.html";
    }

    @RequestMapping("/yy")
    public String yy(){
        return "../layuiAdmin/src/views/user/login.html";
    }

}

package com.university.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleController {
    @RequestMapping("user/user/list.html")
    public String UserList(){
        return "user/user/list";
    }

    @RequestMapping("user/administrators/list.html")
    public String UserAdministratorsList(){
        return "user/administrators/list";
    }
    @RequestMapping("user/administrators/role.html")
    public String UserAdministratorsRole(){
        return "user/administrators/role";
    }

}

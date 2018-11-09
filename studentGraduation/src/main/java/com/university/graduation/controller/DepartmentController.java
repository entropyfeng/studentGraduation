package com.university.graduation.controller;

import com.university.graduation.domain.bo.Department;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
public class DepartmentController {

    @Autowired
    DepartmentService departmentService;

    @ResponseBody
    @GetMapping("/getDepartmentInformation/all")
    Message getAllDepartment() {
        List<Department> departments = departmentService.getAllDepartment();
        Message message = new Message().ok(6666, "获取部门信息成功");
        message.addData("departments", departments);
        message.addData("count", departments.size());
        return message;

    }

}

package com.university.graduation.controller;

import com.university.graduation.domain.bo.Department;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.util.List;


@Controller
public class DepartmentController {

    @Autowired
    DepartmentService departmentService;

    @ResponseBody
    @GetMapping("/departmentInformation/get")
    Message getAllDepartment() {
        List<Department> departments = departmentService.getAllDepartment();
        Message message = new Message().ok(6666, "获取部门信息成功");
        message.addData("departments", departments);
        message.addData("count", departments.size());
        return message;

    }

    @ResponseBody
    @PutMapping("/departmentInformation/put")
    Message updateDepartment(@Param("departmentId")Integer departmentId,
    @Param("departmentName")String departmentName,@Param("departmentDescription")String departmentDescription){

    Message message;
    Integer num= departmentService.updateDepartment(new Department(departmentId,departmentName,departmentDescription));
    if(num==1){
        message=new Message().ok(6666,"更新成功");
    }else {
        message=new Message().error(1111,"更新失败");
    }
    return message;

    }

    @ResponseBody
    @PostMapping("/departmentInformation/post")
    Message addDepartment(@Param("departmentId")Integer departmentId,
                             @Param("departmentName")String departmentName,@Param("departmentDescription")String departmentDescription){

        Message message;
        Integer num= departmentService.addDepartment(new Department(departmentId,departmentName,departmentDescription));
        if(num==1){
            message=new Message().ok(6666,"增加成功");
        }else {
            message=new Message().error(1111,"增加失败");
        }
        return message;

    }

    @ResponseBody
    @DeleteMapping("/departmentInformation/delete")
    Message deleteDepartment(@Param("departmentId") Integer departmentId){

        Message message;
        Integer num= departmentService.deleteDepartment(departmentId);
        if(num==1){
            message=new Message().ok(6666,"删除成功");
        }else {
            message=new Message().error(1111,"删除失败");
        }
        return message;

    }


}

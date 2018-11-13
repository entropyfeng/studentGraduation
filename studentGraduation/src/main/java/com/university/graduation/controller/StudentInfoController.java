package com.university.graduation.controller;

import com.university.graduation.domain.vo.Message;
import com.university.graduation.domain.vo.StudentInfo;
import com.university.graduation.service.FileService;
import com.university.graduation.service.StudentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
public class StudentInfoController {
    @Autowired
    StudentInfoService studentInfoService;


    @ResponseBody
    @GetMapping("/getStudentInformation/all")
    Message getAllMessage() {

        List<StudentInfo> students = studentInfoService.getStudentInfo();
        Message message = null;
        if (students == null) {
            message = new Message().error(1111, "获取失败");

        } else {
            message = new Message().ok(6666, "获取成功");
            message.addData("students", students);
            message.addData("count",students.size());

        }
        return message;
    }
}

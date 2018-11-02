package com.university.graduation.controller;

import com.university.graduation.domain.bo.Student;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
public class StudentInformationController {
    @Autowired
    StudentService studentService;

    @ResponseBody
    @GetMapping("/getStudentInformation/all")
    Message getAllMessage() {

        List<Student> students = studentService.getAllStudentInformation();
        Message message = null;
        if (students == null) {
            message = new Message().error(1111, "获取失败");

        } else {
            message = new Message().ok(6666, "获取成功");
            message.addData("students", students);

        }
        return message;
    }
}

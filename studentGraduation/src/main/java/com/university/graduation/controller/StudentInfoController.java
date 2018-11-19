package com.university.graduation.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.domain.vo.StudentInfo;
import com.university.graduation.service.FileService;
import com.university.graduation.service.StudentInfoService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@SuppressWarnings("commom-java:DuplicatedBlocks")
public class StudentInfoController {
    @Autowired
    StudentInfoService studentInfoService;


    @ResponseBody
    @GetMapping("/getStudentInformation/all")
    Message getAllInformation() {

        List<StudentInfo> students = studentInfoService.getStudentInfo();
        Message message = null;
        if (students == null) {
            message = new Message().error(1111, "获取失败");

        } else {
            message = new Message().ok(6666, "获取成功");
            message.addData("students", students);
            message.addData("count", students.size());

        }
        return message;
    }

    @ResponseBody
    @GetMapping("getStudentInformation/condition")
    Message getPartInformation(@Nullable @Param("page") Integer page, @Nullable @Param("limit") Integer limit
            , @Nullable @Param("studentId") String studentId, @Nullable @Param("studentName") String studentName) {
        if (page == null || page <= 0) {
            page = 1;
        }
        if (limit == null) {
            limit = 30;
        }
        List<StudentInfo> students;
        //Integer counts=studentInfoService.getStudentNumbers();
        Page page1= PageHelper.startPage(page, limit);
        students= studentInfoService.getStudentInfoByCondition(studentId,studentName);
        long counts=page1.getTotal();
        Message message = null;
        if (students == null) {
            message = new Message().error(1111, "获取失败");

        } else {
            message = new Message().ok(6666, "获取成功");
            message.addData("students", students);
            message.addData("count",counts );

        }
        return message;

    }
}

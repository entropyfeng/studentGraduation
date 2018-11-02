package com.university.graduation.service;

import com.university.graduation.domain.bo.Student;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface StudentService {

 List<Student> getAllStudentInformation();

}

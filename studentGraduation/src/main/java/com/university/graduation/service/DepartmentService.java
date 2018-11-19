package com.university.graduation.service;

import com.university.graduation.domain.bo.Department;

import java.util.List;

public interface DepartmentService {
    List<Department> getAllDepartment();
    Integer updateDepartment(Department department);
    Integer addDepartment(Department department);
    Integer deleteDepartment(Integer departmentId);
}

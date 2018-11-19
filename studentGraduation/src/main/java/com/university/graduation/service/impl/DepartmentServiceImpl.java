package com.university.graduation.service.impl;

import com.university.graduation.dao.DepartmentMapper;
import com.university.graduation.domain.bo.Department;
import com.university.graduation.domain.bo.DepartmentExample;
import com.university.graduation.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DepartmentServiceImpl implements DepartmentService {

   @Autowired
    DepartmentMapper departmentMapper;
    @Override
    public List<Department> getAllDepartment() {
        DepartmentExample departmentExample=new DepartmentExample();
        departmentExample.createCriteria();

        return departmentMapper.selectByExample(departmentExample);
    }

    @Override
    public Integer updateDepartment(Department department) {
        return departmentMapper.updateByPrimaryKey(department);
    }

    @Override
    public Integer addDepartment(Department department) {
       return departmentMapper.insert(department);

    }

    @Override
    public Integer deleteDepartment(Integer departmentId) {

        return departmentMapper.deleteByPrimaryKey(departmentId);
    }
}

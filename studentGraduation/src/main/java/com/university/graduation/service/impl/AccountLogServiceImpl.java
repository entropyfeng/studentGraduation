package com.university.graduation.service.impl;



import com.university.graduation.dao.AuthAccountLogMapper;
import com.university.graduation.domain.bo.AuthAccountLog;
import com.university.graduation.service.AccountLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 9:32 2018/4/22
 */
@Service
public class AccountLogServiceImpl implements AccountLogService {

    @Autowired
    AuthAccountLogMapper authAccountLogMapper;

    @Override
    public List<AuthAccountLog> getAccountLogList() {
        return authAccountLogMapper.selectAccountLogList();
    }
}

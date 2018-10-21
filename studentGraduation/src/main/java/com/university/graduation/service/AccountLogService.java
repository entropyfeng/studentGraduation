package com.university.graduation.service;



import com.university.graduation.domain.bo.AuthAccountLog;

import java.util.List;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 9:30 2018/4/22
 */
public interface AccountLogService {

    List<AuthAccountLog> getAccountLogList();
}

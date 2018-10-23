package com.university.graduation.service;



import com.university.graduation.domain.bo.AuthAccountLog;
import org.springframework.stereotype.Service;

import java.util.List;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 9:30 2018/4/22
 */
@Service
public interface AccountLogService {

    List<AuthAccountLog> getAccountLogList();
}

package com.university.graduation.support.factory;



import com.university.graduation.domain.bo.AuthAccountLog;
import com.university.graduation.domain.bo.AuthOperationLog;

import java.util.Date;

/* *

 * @Description 日志对象工厂
 * @Date 9:50 2018/4/22
 */
public class LogFactory {

    private LogFactory() {

    }

    public static AuthAccountLog createAccountLog(String userId, String logName, String ip, Short succeed, String message) {
        AuthAccountLog accountLog = new AuthAccountLog();
        accountLog.setUserId(userId);
        accountLog.setLogName(logName);
        accountLog.setIp(ip);
        accountLog.setSucceed(succeed);
        accountLog.setMessage(message);
        accountLog.setCreateTime(new Date());
        return accountLog;
    }

    public static AuthOperationLog createOperationLog(String userId, String logName, String api, String method, Short succeed, String message) {
        AuthOperationLog operationLog = new AuthOperationLog();
        operationLog.setUserId(userId);
        operationLog.setLogName(logName);
        operationLog.setApi(api);
        operationLog.setMethod(method);
        operationLog.setSucceed(succeed);
        operationLog.setMessage(message);
        operationLog.setCreateTime(new Date());
        return operationLog;
    }
}

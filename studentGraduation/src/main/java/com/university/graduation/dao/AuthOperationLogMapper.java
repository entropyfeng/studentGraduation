package com.university.graduation.dao;

import com.university.graduation.domain.bo.AuthOperationLog;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

/* *
 * @Author tomsun28
 * @Description 
 * @Date 8:28 2018/4/22
 */
@Mapper
public interface AuthOperationLogMapper {

    List<AuthOperationLog> selectOperationLogList();

    int insertSelective(AuthOperationLog operationLog) throws DataAccessException;
}

package com.university.graduation.shiro.filter;

import com.alibaba.fastjson.JSON;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.shiro.token.PasswordToken;
import com.university.graduation.shiro.token.VerCodeToken;
import com.university.graduation.util.RequestResponseUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.util.Map;

/**
 * @Description 基于短信验证码的认证过滤器
 */
public class VerCodeFilter extends AccessControlFilter {

    private static final Logger LOGGER=LoggerFactory.getLogger(VerCodeFilter.class);


    @Override
    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object o) throws Exception {
        Subject subject=getSubject(servletRequest,servletResponse);
        return null!=subject&&subject.isAuthenticated();
    }

    @Override
    protected boolean onAccessDenied(ServletRequest servletRequest, ServletResponse servletResponse) throws Exception {
        Map<String,String> map=RequestResponseUtil.getRequestParameters(servletRequest);
        String verCode=map.get("verCode");
        String phoneNumber=map.get("phoneNumber");

        AuthenticationToken authenticationToken=null;
        authenticationToken=new VerCodeToken(phoneNumber,verCode);

        Subject subject=getSubject(servletRequest,servletResponse);
        try {
          subject.login(authenticationToken);
           return true;
        }catch (AuthenticationException e) {
            LOGGER.warn(authenticationToken.getPrincipal()+"::"+e.getMessage());
            // 返回response告诉客户端认证失败
            Message message = new Message().error(1111,"login fail");
            RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
            return false;
        }catch (Exception e) {
            LOGGER.error(authenticationToken.getPrincipal()+"::认证异常::"+e.getMessage(),e);
            // 返回response告诉客户端认证失败
            Message message = new Message().error(1111,"login fail");
            RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
            return false;
        }

    }
}

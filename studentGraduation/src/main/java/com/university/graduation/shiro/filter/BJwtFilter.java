package com.university.graduation.shiro.filter;

import com.alibaba.fastjson.JSON;

import com.university.graduation.domain.vo.JwtAccount;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.AccountService;
import com.university.graduation.shiro.token.JwtToken;
import com.university.graduation.support.factory.LogTaskFactory;
import com.university.graduation.support.manager.LogExeManager;
import com.university.graduation.util.IpUtil;
import com.university.graduation.util.JsonWebTokenUtil;
import com.university.graduation.util.RequestResponseUtil;
import io.jsonwebtoken.*;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.util.StringUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

/* *

 * @Description 支持restful url 的过滤链  JWT json web token 过滤器，无状态验证
 * @Date 0:04 2018/4/20
 */
public class BJwtFilter extends BPathMatchingFilter {

    private static final Logger LOGGER = LoggerFactory.getLogger(BJwtFilter.class);


    private StringRedisTemplate redisTemplate;
    private AccountService accountService;

    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object mappedValue) throws Exception {
        Subject subject = getSubject(servletRequest,servletResponse);
        //记录调用api日志到数据库
        LogExeManager.getInstance().executeLogTask(LogTaskFactory.bussinssLog(WebUtils.toHttp(servletRequest).getHeader("appId"),
                WebUtils.toHttp(servletRequest).getRequestURI(),WebUtils.toHttp(servletRequest).getMethod(),(short)1,null));

        // 判断是否为JWT认证请求
        if ((null != subject && !subject.isAuthenticated()) && isJwtSubmission(servletRequest)) {

            String jwt = RequestResponseUtil.getHeader(servletRequest,"jwt");
            JwtAccount jwtAccount = null;
            try {
                jwtAccount = JsonWebTokenUtil.parseJwt(jwt, JsonWebTokenUtil.SECRET_KEY);
            } catch (SignatureException | UnsupportedJwtException | MalformedJwtException | IllegalArgumentException e) {

                Message message = new Message().error(1111,"error jwt");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
                return false;
            } catch (ExpiredJwtException e) {

                Message message = new Message().error(1111,"expired jwt");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
                return false;
            } catch (Exception e) {

                Message message = new Message().error(1111,"error jwt");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
                return false;
            }
            if (null == jwtAccount) {
                throw new AuthenticationException("errJwt");
            }

            String appId=jwtAccount.getAppId();
            RequestResponseUtil.setAppId(servletRequest,appId);

            AuthenticationToken token = createJwtToken(jwtAccount);
            try {
                subject.login(token);

                return this.checkRoles(subject,mappedValue);
            }catch (Exception e) {
                // 其他错误
                LOGGER.error(IpUtil.getIpFromRequest(WebUtils.toHttp(servletRequest))+"--JWT认证失败"+e.getMessage(),e);
                Message message = new Message().error(1007,"error jwt");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
                return false;
            }
        }else {
            // 请求未携带jwt 判断为无效请求
            Message message = new Message().error(1111,"error request");
            RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
            return false;
        }
    }

    protected boolean onAccessDenied(ServletRequest servletRequest, ServletResponse servletResponse) throws Exception {
        Subject subject = getSubject(servletRequest,servletResponse);

        // 未认证的情况
        if (null == subject || !subject.isAuthenticated()) {
            // 告知客户端JWT认证失败需跳转到登录页面
            Message message = new Message().error(1006,"error jwt");
            RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
        }else {
            //  已经认证但未授权的情况
            // 告知客户端JWT没有权限访问此资源
            Message message = new Message().error(1008,"no permission");
            RequestResponseUtil.responseWrite(JSON.toJSONString(message),servletResponse);
        }
        // 过滤链终止
        return false;
    }

    private boolean isJwtSubmission(ServletRequest request) {

        String jwt = RequestResponseUtil.getHeader(request,"jwt");

        return (request instanceof HttpServletRequest)
                && !StringUtils.isEmpty(jwt);

    }

    private AuthenticationToken createJwtToken(JwtAccount jwtAccount) {


        return new JwtToken(jwtAccount.getRoles(),jwtAccount.getPerms());
    }

    // 验证当前用户是否属于mappedValue任意一个角色
    private boolean checkRoles(Subject subject, Object mappedValue){
        String[] rolesArray = (String[]) mappedValue;
        return rolesArray == null || rolesArray.length == 0 || Stream.of(rolesArray).anyMatch(role -> subject.hasRole(role.trim()));
    }


    public void setRedisTemplate(StringRedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }


    public void setAccountService(AccountService accountService) {
        this.accountService = accountService;
    }
}

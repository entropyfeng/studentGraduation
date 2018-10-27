package com.university.graduation.shiro.filter;


import com.alibaba.fastjson.JSON;

import com.university.graduation.domain.vo.Message;
import com.university.graduation.shiro.token.PasswordToken;
import com.university.graduation.util.CommonUtil;
import com.university.graduation.util.IpUtil;
import com.university.graduation.util.RSAUtil;
import com.university.graduation.util.RequestResponseUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* *
 * @Author tomsun28
 * @Description 基于 用户名密码 的认证过滤器
 * @Date 20:18 2018/2/10
 */
public class PasswordFilter extends AccessControlFilter {

    private static final Logger LOGGER = LoggerFactory.getLogger(PasswordFilter.class);

    private StringRedisTemplate redisTemplate;

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {

        Subject subject = getSubject(request,response);
        // 如果其已经登录，再此发送登录请求
        if(null != subject && subject.isAuthenticated()){
            return true;
        }
        //  拒绝，统一交给 onAccessDenied 处理

        return false;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {

        // 判断若为获取登录注册加密动态秘钥请求
        if (isPublicKeyGet(request)) {
            //动态生成秘钥，redis存储秘钥供之后秘钥验证使用，设置有效期60秒用完即丢弃
            System.out.println("尝试获取publicKey");
            Map<String,String> map= RSAUtil.createKeys();
            String publicKey = map.get("publicKey");
            String privateKey = map.get("privateKey");
            System.out.println("public "+publicKey);
            System.out.println("private "+privateKey);
            try {
                redisTemplate.opsForValue().set("PUBLIC_KEY_"+ IpUtil.getIpFromRequest(WebUtils.toHttp(request)).toUpperCase()+publicKey,privateKey,600, TimeUnit.SECONDS);
                // 动态秘钥response返回给前端
                Message message = new Message();
                message.ok(1000,"issued publicKey success")
                        .addData("publicKey",publicKey);
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),response);


            }catch (Exception e) {
                LOGGER.warn("签发动态秘钥失败"+e.getMessage(),e);
                Message message = new Message();
                message.ok(1000,"issued publicKey fail");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),response);
            }
            return false;
        }

        // 判断是否是登录请求
        if(isPasswordLoginPost(request)){
            System.out.println("进入登录处理");
            AuthenticationToken authenticationToken = null;
            try {
                authenticationToken = createPasswordToken(request);
            }catch (Exception e) {
                // response 告知无效请求
                Message message = new Message().error(1111,"error request");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),response);
                return false;
            }

            Subject subject = getSubject(request,response);
            try {
                subject.login(authenticationToken);
                //登录认证成功,进入请求派发json web token url资源内
                return true;
            }catch (AuthenticationException e) {
                LOGGER.warn(authenticationToken.getPrincipal()+"::"+e.getMessage());
                // 返回response告诉客户端认证失败
                Message message = new Message().error(1002,"login fail");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),response);
                return false;
            }catch (Exception e) {
                LOGGER.error(authenticationToken.getPrincipal()+"::认证异常::"+e.getMessage(),e);
                // 返回response告诉客户端认证失败
                Message message = new Message().error(1002,"login fail");
                RequestResponseUtil.responseWrite(JSON.toJSONString(message),response);
                return false;
            }
        }
        // 判断是否为注册请求,若是通过过滤链进入controller注册
        if (isAccountRegisterPost(request)) {
            return true;
        }
        // 之后添加对账户的找回等

        // response 告知无效请求
        Message message = new Message().error(1111,"error request");
        RequestResponseUtil.responseWrite(JSON.toJSONString(message),response);
        return false;
    }

    private boolean isPublicKeyGet(ServletRequest request) {

        String publicKey = RequestResponseUtil.getParameter(request,"publicKey");
        return (request instanceof HttpServletRequest)
                && ((HttpServletRequest) request).getMethod().toUpperCase().equals("GET")
                && null != publicKey && "get".equals(publicKey);
    }


    private boolean isPasswordLoginPost(ServletRequest request) {

        Map<String ,String> map = RequestResponseUtil.getRequestParameters(request);
        String password = map.get("password");
        String timestamp = map.get("timestamp");
        String methodName = map.get("methodName");
        String appId = map.get("appId");
        return (request instanceof HttpServletRequest)
                && ((HttpServletRequest) request).getMethod().toUpperCase().equals("POST")
                && null != password
                && null != timestamp
                && null != methodName
                && null != appId
                && methodName.equals("login");
    }

    private boolean isAccountRegisterPost(ServletRequest request) {

        Map<String ,String> map = RequestResponseUtil.getRequestParameters(request);
        String username = map.get("username");
        String methodName = map.get("methodName");
        String password = map.get("password");
        String timestamp = map.get("timestamp");
        return (request instanceof HttpServletRequest)
                && ((HttpServletRequest) request).getMethod().toUpperCase().equals("POST")
                && null != username
                && null != password
                && null != methodName
                && null != timestamp
                && methodName.equals("register");
    }

    private AuthenticationToken createPasswordToken(ServletRequest request) throws Exception {

        Map<String ,String> map = RequestResponseUtil.getRequestParameters(request);
        String appId = map.get("appId");
        String timestamp = map.get("timestamp");
        String password = map.get("password");
        String host = IpUtil.getIpFromRequest(WebUtils.toHttp(request));
        String publicKey = map.get("publicKey");
        String privateKey = redisTemplate.opsForValue().get("PUBLIC_KEY_"+host.toUpperCase()+publicKey);
        return new PasswordToken(appId,password,timestamp,host,privateKey);
    }

    public void setRedisTemplate(StringRedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

}

package com.university.graduation.controller;


import com.university.graduation.domain.bo.AuthUser;
import com.university.graduation.domain.vo.Account;
import com.university.graduation.domain.vo.Message;
import com.university.graduation.service.AccountService;
import com.university.graduation.service.UserService;
import com.university.graduation.support.factory.LogTaskFactory;
import com.university.graduation.support.manager.LogExeManager;
import com.university.graduation.util.*;
import io.jsonwebtoken.SignatureAlgorithm;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* *
 * @Description post新增,get读取,put完整更新,patch部分更新,delete删除
 */
@RestController
@RequestMapping("/account")
public class AccountController extends BasicAction {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountController.class);

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private AccountService accountService;

    @Autowired
    private UserService userService;

    /* *
     * @Description 这里已经在 passwordFilter 进行了登录认证
     * @Param [] 登录签发 JWT
     * @Return java.lang.String
     */
    @ApiOperation(value = "用户登录", notes = "POST用户登录签发JWT")
    @PostMapping("/login")
    public Message accountLogin(HttpServletRequest request, HttpServletResponse response) {
        Map<String, String> params = RequestResponseUtil.getRequestParameters(request);
        String username = params.get("username");
        // 根据appId获取其对应所拥有的角色(这里设计为角色对应资源，没有权限对应资源)
        String appId=userService.getAppIdByUsername(username);
        String roles = accountService.loadAccountRole(appId);
        // 时间以秒计算,token有效刷新时间是token有效过期时间的2倍
        long refreshPeriodTime = 36000L;
        String jwt = JsonWebTokenUtil.issueJWT(UUID.randomUUID().toString(), appId,
                "token-server", refreshPeriodTime >> 1, roles, null, SignatureAlgorithm.HS512);
        // 将签发的JWT存储到Redis： {JWT-SESSION-{appID} , jwt}
        redisTemplate.opsForValue().set("JWT-SESSION-" + appId, jwt, refreshPeriodTime, TimeUnit.SECONDS);
        AuthUser authUser = userService.getUserByAppId(appId);
        authUser.setPassword(null);
        authUser.setSalt(null);

        LogExeManager.getInstance().executeLogTask(LogTaskFactory.loginLog(appId, IpUtil.getIpFromRequest(WebUtils.toHttp(request)), (short) 1, "登录成功"));
        System.out.println("登录成功");
        return new Message().ok(1003, "issue jwt success").addData("jwt", jwt).addData("appId",appId);
    }

    /* *
     * @Description 用户账号的注册
     * @Param [request, response]
     * @Return
     */
    @ApiOperation(value = "用户注册", notes = "POST用户注册")
    @PostMapping("/register")
    public Message accountRegister(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入注册界面");
        Map<String, String> params = RequestResponseUtil.getRequestParameters(request);
        AuthUser authUser = new AuthUser();
        String uid=CommonUtil.getUUID();
        String username=params.get("username");
        String password = params.get("password");
        String publicKey = params.get("publicKey");
        String phone=params.get("phone");
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
            // 必须信息缺一不可,返回注册账号信息缺失
            return new Message().error(1111, "账户信息缺失");
        }
        if (accountService.isAccountExistByUsername(username)||accountService.isAccountExistByPhoneNumber(phone)) {
            // 账户已存在
            return new Message().error(1111, "账户已存在");
        }

        authUser.setUid(uid);

        // 从Redis取出privateKey传输加密解密秘钥
        String privateKey = redisTemplate.opsForValue().get("PUBLIC_KEY_" + IpUtil.getIpFromRequest(WebUtils.toHttp(request)).toUpperCase()+publicKey);
        String realPassword = RSAUtil.RSADecode(password,privateKey);
        System.out.println("real password："+realPassword);
        String salt = CommonUtil.getRandomString(6);
        // 存储到数据库的密码为 MD5(原密码+盐值)
        authUser.setPassword(MD5Util.md5(realPassword + salt));
        authUser.setSalt(salt);
        authUser.setCreateTime(new Date());
        if (!StringUtils.isEmpty(params.get("username"))) {
            authUser.setUsername(params.get("username"));
        }

        if (!StringUtils.isEmpty(params.get("phone"))) {
            authUser.setPhone(params.get("phone"));
        }
        if (!StringUtils.isEmpty(params.get("email"))) {
            authUser.setEmail(params.get("email"));
        }

        if (!StringUtils.isEmpty(params.get("createWhere"))) {
            authUser.setCreateWhere(Byte.valueOf(params.get("createWhere")));
        }
        authUser.setStatus((byte) 1);

        if (accountService.registerAccount(authUser)) {
            LogExeManager.getInstance().executeLogTask(LogTaskFactory.registerLog(uid, IpUtil.getIpFromRequest(WebUtils.toHttp(request)), (short) 1, "注册成功"));
            return new Message().ok(2002, "注册成功");
        } else {
            LogExeManager.getInstance().executeLogTask(LogTaskFactory.registerLog(uid, IpUtil.getIpFromRequest(WebUtils.toHttp(request)), (short) 0, "注册失败"));
            return new Message().ok(1111, "注册失败");
        }
    }

}

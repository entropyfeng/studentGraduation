package com.university.graduation.service.impl;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.university.graduation.service.ShortMessageService;
import com.university.graduation.util.CommonUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.concurrent.TimeUnit;

import static org.springframework.util.StringUtils.*;

@Service
public class ShortMessageServiceImpl implements ShortMessageService {

    @Autowired
    StringRedisTemplate redisTemplate;


    private Logger logger = LoggerFactory.getLogger(ShortMessageService.class);
    //产品名称:云通信短信API产品,开发者无需替换
    private static final String product = "Dysmsapi";
    //产品域名,开发者无需替换
    private static final String domain = "dysmsapi.aliyuncs.com";


    @Value("${aliyun.sms.accessKeyId}")
    private String accessKeyId;
    @Value("${aliyun.sms.accessKeySecret}")
    private String accessKeySecret;

    @Override
    public String sendMessage(String phoneNumber) {

        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);

        try {
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
            IAcsClient acsClient = new DefaultAcsClient(profile);
            SendSmsRequest request = new SendSmsRequest();
            request.setMethod(MethodType.POST);
            request.setPhoneNumbers(phoneNumber);
            request.setSignName("左岸决策ABC789");
            request.setTemplateCode("SMS_132745042");
            String randomMessage = CommonUtil.getRandomMessage();
            request.setTemplateParam("{\"code\":\"" + randomMessage + "\"}");
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
            if (sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
                redisTemplate.opsForValue().set("SHORT_MESSAGE_" + phoneNumber, randomMessage,60,TimeUnit.SECONDS);
                return "OK";
            } else {
                return "ERROR";
            }
        } catch (ClientException e) {
            e.printStackTrace();
            return "ERROR";
        }

    }

    @Override
    public boolean checkMessage(String phoneNumber, String message) {
        String verCode = redisTemplate.opsForValue().get("SHORT_MESSAGE_" + phoneNumber);

        if (isEmpty(verCode)) {
            return false;
        } else {
            return message.equals(verCode);
        }

    }

}

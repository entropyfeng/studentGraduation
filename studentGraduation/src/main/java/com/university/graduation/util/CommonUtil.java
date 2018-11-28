package com.university.graduation.util;

import java.util.Random;
import java.util.UUID;

/* *

 * @Description 高频方法工具类
 * @Date 14:08 2018/3/12
 */
public class CommonUtil {

    /* *
     * @Description 获取指定位数的随机数
     * @Param [length]
     * @Return java.lang.String
     */
    public static String getRandomString(int length) {
        String base = "abcdefghijklmnopqrstuvwxyz0123456789";
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    public static String getRandomMessage() {
        String base = "0123456789";
        Random random = new Random();
        StringBuilder stringBuilder = new StringBuilder();

        for (int i = 0; i < 6; i++) {
            int number = random.nextInt(base.length());
            stringBuilder.append(base.charAt(number));
        }
        return stringBuilder.toString();


    }

    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();

    }
}

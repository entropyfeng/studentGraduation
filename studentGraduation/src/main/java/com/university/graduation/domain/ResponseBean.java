package com.university.graduation.domain;

/**
 * 实现restful 建立此类返回统一格式
 */
public class ResponseBean {


    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    //http 状态码
    private int code;
    //返回信息
    private String msg;
    //返回数据
    private Object data;
}

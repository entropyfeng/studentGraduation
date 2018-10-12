package com.university.graduation.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysUser {

    private Integer sysUserId;


    private String sysUsername;


    private String sysName;


    private String sysPassword;


    private String sysSalt;


    private Integer sysState;


    private Date createTime;


    private Date updateTime;


    private List<SysRole> roles=new ArrayList<>();

    public List<SysRole> getRoles() {
        return roles;
    }

    public void setRoles(List<SysRole> roles) {
        this.roles = roles;
    }





    public Integer getSysUserId() {
        return sysUserId;
    }


    public void setSysUserId(Integer sysUserId) {
        this.sysUserId = sysUserId;
    }


    public String getSysUsername() {
        return sysUsername;
    }


    public void setSysUsername(String sysUsername) {
        this.sysUsername = sysUsername == null ? null : sysUsername.trim();
    }


    public String getSysName() {
        return sysName;
    }


    public void setSysName(String sysName) {
        this.sysName = sysName == null ? null : sysName.trim();
    }


    public String getSysPassword() {
        return sysPassword;
    }


    public void setSysPassword(String sysPassword) {
        this.sysPassword = sysPassword == null ? null : sysPassword.trim();
    }


    public String getSysSalt() {
        return sysSalt;
    }


    public void setSysSalt(String sysSalt) {
        this.sysSalt = sysSalt == null ? null : sysSalt.trim();
    }


    public Integer getSysState() {
        return sysState;
    }


    public void setSysState(Integer sysState) {
        this.sysState = sysState;
    }


    public Date getCreateTime() {
        return createTime;
    }


    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


    public Date getUpdateTime() {
        return updateTime;
    }


    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
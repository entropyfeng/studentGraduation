package com.university.graduation.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysRole {

    private Integer sysRoleId;


    private String sysRolename;


    private String description;


    private Integer state;

    private Date createTime;

    private Date updateTime;

    private List<SysPermission> permissions=new ArrayList<>();

    public List<SysPermission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<SysPermission> permissions) {
        this.permissions = permissions;
    }




    public Integer getSysRoleId() {
        return sysRoleId;
    }


    public void setSysRoleId(Integer sysRoleId) {
        this.sysRoleId = sysRoleId;
    }


    public String getSysRolename() {
        return sysRolename;
    }


    public void setSysRolename(String sysRolename) {
        this.sysRolename = sysRolename == null ? null : sysRolename.trim();
    }


    public String getDescription() {
        return description;
    }


    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }


    public Integer getState() {
        return state;
    }


    public void setState(Integer state) {
        this.state = state;
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
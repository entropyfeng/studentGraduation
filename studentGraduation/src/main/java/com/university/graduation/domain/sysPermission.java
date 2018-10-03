package com.university.graduation.domain;

import java.util.Date;

public class SysPermission {

    private Integer sysPermissionId;


    private String sysPermissionName;


    private String resourceType;


    private String resourceUrl;


    private String permission;


    private Integer parentId;


    private String parentIds;


    private Integer state;


    private Date createTime;


    private Date updateTime;


    public Integer getSysPermissionId() {
        return sysPermissionId;
    }


    public void setSysPermissionId(Integer sysPermissionId) {
        this.sysPermissionId = sysPermissionId;
    }


    public String getSysPermissionName() {
        return sysPermissionName;
    }


    public void setSysPermissionName(String sysPermissionName) {
        this.sysPermissionName = sysPermissionName == null ? null : sysPermissionName.trim();
    }


    public String getResourceType() {
        return resourceType;
    }


    public void setResourceType(String resourceType) {
        this.resourceType = resourceType == null ? null : resourceType.trim();
    }


    public String getResourceUrl() {
        return resourceUrl;
    }

    public void setResourceUrl(String resourceUrl) {
        this.resourceUrl = resourceUrl == null ? null : resourceUrl.trim();
    }


    public String getPermission() {
        return permission;
    }


    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }


    public Integer getParentId() {
        return parentId;
    }


    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }


    public String getParentIds() {
        return parentIds;
    }


    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
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
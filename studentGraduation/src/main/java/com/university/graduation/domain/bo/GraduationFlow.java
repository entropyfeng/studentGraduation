package com.university.graduation.domain.bo;

import java.util.Date;

public class GraduationFlow {
    private Integer graduationFlowId;

    private String graduationFlowName;

    private Integer graduationFlowEnableStatus;

    private Integer graduationFlowYear;

    private Date graduationFlowBeginTime;

    private Date graduationFlowEndTime;

    private Integer graduationFlowStudentNum;

    private Integer graduationFlowSetStatus;

    public GraduationFlow(Integer graduationFlowId, String graduationFlowName, Integer graduationFlowEnableStatus, Integer graduationFlowYear, Date graduationFlowBeginTime, Date graduationFlowEndTime, Integer graduationFlowStudentNum, Integer graduationFlowSetStatus) {
        this.graduationFlowId = graduationFlowId;
        this.graduationFlowName = graduationFlowName;
        this.graduationFlowEnableStatus = graduationFlowEnableStatus;
        this.graduationFlowYear = graduationFlowYear;
        this.graduationFlowBeginTime = graduationFlowBeginTime;
        this.graduationFlowEndTime = graduationFlowEndTime;
        this.graduationFlowStudentNum = graduationFlowStudentNum;
        this.graduationFlowSetStatus = graduationFlowSetStatus;
    }

    public GraduationFlow() {
        super();
    }

    public Integer getGraduationFlowId() {
        return graduationFlowId;
    }

    public void setGraduationFlowId(Integer graduationFlowId) {
        this.graduationFlowId = graduationFlowId;
    }

    public String getGraduationFlowName() {
        return graduationFlowName;
    }

    public void setGraduationFlowName(String graduationFlowName) {
        this.graduationFlowName = graduationFlowName == null ? null : graduationFlowName.trim();
    }

    public Integer getGraduationFlowEnableStatus() {
        return graduationFlowEnableStatus;
    }

    public void setGraduationFlowEnableStatus(Integer graduationFlowEnableStatus) {
        this.graduationFlowEnableStatus = graduationFlowEnableStatus;
    }

    public Integer getGraduationFlowYear() {
        return graduationFlowYear;
    }

    public void setGraduationFlowYear(Integer graduationFlowYear) {
        this.graduationFlowYear = graduationFlowYear;
    }

    public Date getGraduationFlowBeginTime() {
        return graduationFlowBeginTime;
    }

    public void setGraduationFlowBeginTime(Date graduationFlowBeginTime) {
        this.graduationFlowBeginTime = graduationFlowBeginTime;
    }

    public Date getGraduationFlowEndTime() {
        return graduationFlowEndTime;
    }

    public void setGraduationFlowEndTime(Date graduationFlowEndTime) {
        this.graduationFlowEndTime = graduationFlowEndTime;
    }

    public Integer getGraduationFlowStudentNum() {
        return graduationFlowStudentNum;
    }

    public void setGraduationFlowStudentNum(Integer graduationFlowStudentNum) {
        this.graduationFlowStudentNum = graduationFlowStudentNum;
    }

    public Integer getGraduationFlowSetStatus() {
        return graduationFlowSetStatus;
    }

    public void setGraduationFlowSetStatus(Integer graduationFlowSetStatus) {
        this.graduationFlowSetStatus = graduationFlowSetStatus;
    }
}
package com.university.graduation.domain.bo;

public class College {
    private Integer collegeId;

    private String collegeName;

    private String extraInformation;

    public College(Integer collegeId, String collegeName, String extraInformation) {
        this.collegeId = collegeId;
        this.collegeName = collegeName;
        this.extraInformation = extraInformation;
    }

    public College() {
        super();
    }

    public Integer getCollegeId() {
        return collegeId;
    }

    public void setCollegeId(Integer collegeId) {
        this.collegeId = collegeId;
    }

    public String getCollegeName() {
        return collegeName;
    }

    public void setCollegeName(String collegeName) {
        this.collegeName = collegeName == null ? null : collegeName.trim();
    }

    public String getExtraInformation() {
        return extraInformation;
    }

    public void setExtraInformation(String extraInformation) {
        this.extraInformation = extraInformation == null ? null : extraInformation.trim();
    }
}
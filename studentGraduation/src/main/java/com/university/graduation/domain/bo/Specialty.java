package com.university.graduation.domain.bo;

public class Specialty {
    private Integer specialtyId;

    private String specialtyName;

    private String extraInformation;

    public Specialty(Integer specialtyId, String specialtyName, String extraInformation) {
        this.specialtyId = specialtyId;
        this.specialtyName = specialtyName;
        this.extraInformation = extraInformation;
    }

    public Specialty() {
        super();
    }

    public Integer getSpecialtyId() {
        return specialtyId;
    }

    public void setSpecialtyId(Integer specialtyId) {
        this.specialtyId = specialtyId;
    }

    public String getSpecialtyName() {
        return specialtyName;
    }

    public void setSpecialtyName(String specialtyName) {
        this.specialtyName = specialtyName == null ? null : specialtyName.trim();
    }

    public String getExtraInformation() {
        return extraInformation;
    }

    public void setExtraInformation(String extraInformation) {
        this.extraInformation = extraInformation == null ? null : extraInformation.trim();
    }
}
package com.university.graduation.domain.bo;

public class Student {
    private String studentId;

    private String studentName;

    private Integer graduationYear;

    private Integer collegeId;

    private Integer specialtyId;

    private Integer classId;

    private Boolean studentSex;

    private String idCardNum;

    private String politicsStatus;

    private byte[] studentPhoto;


    public Student(String studentId, String studentName, Integer graduationYear, Integer collegeId, Integer specialtyId, Integer classId, Boolean studentSex, String idCardNum, String politicsStatus, byte[] studentPhoto) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.graduationYear = graduationYear;
        this.collegeId = collegeId;
        this.specialtyId = specialtyId;
        this.classId = classId;
        this.studentSex = studentSex;
        this.idCardNum = idCardNum;
        this.politicsStatus = politicsStatus;
        this.studentPhoto = studentPhoto;
    }

    public Student() {
        super();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName == null ? null : studentName.trim();
    }

    public Integer getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Integer graduationYear) {
        this.graduationYear = graduationYear;
    }

    public Integer getCollegeId() {
        return collegeId;
    }

    public void setCollegeId(Integer collegeId) {
        this.collegeId = collegeId;
    }

    public Integer getSpecialtyId() {
        return specialtyId;
    }

    public void setSpecialtyId(Integer specialtyId) {
        this.specialtyId = specialtyId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public Boolean getStudentSex() {
        return studentSex;
    }

    public void setStudentSex(Boolean studentSex) {
        this.studentSex = studentSex;
    }

    public String getIdCardNum() {
        return idCardNum;
    }

    public void setIdCardNum(String idCardNum) {
        this.idCardNum = idCardNum == null ? null : idCardNum.trim();
    }

    public String getPoliticsStatus() {
        return politicsStatus;
    }

    public void setPoliticsStatus(String politicsStatus) {
        this.politicsStatus = politicsStatus == null ? null : politicsStatus.trim();
    }

    public byte[] getStudentPhoto() {
        return studentPhoto;
    }

    public void setStudentPhoto(byte[] studentPhoto) {
        this.studentPhoto = studentPhoto;
    }
}
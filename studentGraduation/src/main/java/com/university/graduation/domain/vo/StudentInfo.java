package com.university.graduation.domain.vo;

public class StudentInfo {
    private String studentId;

    private String studentName;

    private Integer graduationYear;

    private String collegeName;

    private String specialtyName;

    private String className;

    private Integer studentSex;

    private String idCardNum;

    private String politicsStatus;

    private String phoneNumber;

    private String email;

    private String studentPhoto;
    public StudentInfo(String studentId, String studentName, Integer graduationYear, String collegeName, String specialtyName, String className, Integer studentSex, String idCardNum, String politicsStatus, String phoneNumber, String email, String studentPhoto) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.graduationYear = graduationYear;
        this.collegeName = collegeName;
        this.specialtyName = specialtyName;
        this.className = className;
        this.studentSex = studentSex;
        this.idCardNum = idCardNum;
        this.politicsStatus = politicsStatus;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.studentPhoto = studentPhoto;
    }



    StudentInfo(){}
    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public Integer getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Integer graduationYear) {
        this.graduationYear = graduationYear;
    }

    public String getCollegeName() {
        return collegeName;
    }

    public void setCollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getSpecialtyName() {
        return specialtyName;
    }

    public void setSpecialtyName(String specialtyName) {
        this.specialtyName = specialtyName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public Integer getStudentSex() {
        return studentSex;
    }

    public void setStudentSex(Integer studentSex) {
        this.studentSex = studentSex;
    }

    public String getIdCardNum() {
        return idCardNum;
    }

    public void setIdCardNum(String idCardNum) {
        this.idCardNum = idCardNum;
    }

    public String getPoliticsStatus() {
        return politicsStatus;
    }

    public void setPoliticsStatus(String politicsStatus) {
        this.politicsStatus = politicsStatus;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStudentPhoto() {
        return studentPhoto;
    }

    public void setStudentPhoto(String studentPhoto) {
        this.studentPhoto = studentPhoto;
    }
}

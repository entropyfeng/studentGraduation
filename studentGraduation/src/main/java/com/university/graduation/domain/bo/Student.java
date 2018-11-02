package com.university.graduation.domain.bo;

public class Student {
    private Integer studentId;

    private String studentName;

    private Integer graduationYear;

    private Integer collegeId;

    private Integer specialtyId;

    private String politicsStatus;

    private Integer studentSex;

    private String idCardNum;

    private Integer classId;

    private byte[] studentPhoto;

    public Student(Integer studentId, String studentName, Integer graduationYear, Integer collegeId, Integer specialtyId, String politicsStatus, Integer studentSex, String idCardNum, Integer classId, byte[] studentPhoto) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.graduationYear = graduationYear;
        this.collegeId = collegeId;
        this.specialtyId = specialtyId;
        this.politicsStatus = politicsStatus;
        this.studentSex = studentSex;
        this.idCardNum = idCardNum;
        this.classId = classId;
        this.studentPhoto = studentPhoto;
    }

    public Student() {
        super();
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
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

    public String getPoliticsStatus() {
        return politicsStatus;
    }

    public void setPoliticsStatus(String politicsStatus) {
        this.politicsStatus = politicsStatus == null ? null : politicsStatus.trim();
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
        this.idCardNum = idCardNum == null ? null : idCardNum.trim();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public byte[] getStudentPhoto() {
        return studentPhoto;
    }

    public void setStudentPhoto(byte[] studentPhoto) {
        this.studentPhoto = studentPhoto;
    }
}
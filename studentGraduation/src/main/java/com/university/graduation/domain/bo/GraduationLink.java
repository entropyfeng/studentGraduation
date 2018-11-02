package com.university.graduation.domain.bo;

public class GraduationLink {
    private Integer graduationLinkId;

    private String graduationLinkName;

    private String graduationLinkAnnouncement;

    public GraduationLink(Integer graduationLinkId, String graduationLinkName, String graduationLinkAnnouncement) {
        this.graduationLinkId = graduationLinkId;
        this.graduationLinkName = graduationLinkName;
        this.graduationLinkAnnouncement = graduationLinkAnnouncement;
    }

    public GraduationLink() {
        super();
    }

    public Integer getGraduationLinkId() {
        return graduationLinkId;
    }

    public void setGraduationLinkId(Integer graduationLinkId) {
        this.graduationLinkId = graduationLinkId;
    }

    public String getGraduationLinkName() {
        return graduationLinkName;
    }

    public void setGraduationLinkName(String graduationLinkName) {
        this.graduationLinkName = graduationLinkName == null ? null : graduationLinkName.trim();
    }

    public String getGraduationLinkAnnouncement() {
        return graduationLinkAnnouncement;
    }

    public void setGraduationLinkAnnouncement(String graduationLinkAnnouncement) {
        this.graduationLinkAnnouncement = graduationLinkAnnouncement == null ? null : graduationLinkAnnouncement.trim();
    }
}
package com.oracle.vo;

import java.sql.Date;

public class Tclass {

    private Integer classid;
    private String classname;
    private TbState classtype;
    private TbGuide classGuide;
    private TbGuide jobGuide;
    private TbTeacher teacher;
    private TbState state;
    private Date createddate;
    private Date enddate;
    private String comment;

    @Override
    public String toString() {
        return "Tclass{" +
                "classid=" + classid +
                ", classname='" + classname + '\'' +
                ", classtype=" + classtype +
                ", classGuide=" + classGuide +
                ", jobGuide=" + jobGuide +
                ", teacher=" + teacher +
                ", state=" + state +
                ", createddate=" + createddate +
                ", enddate=" + enddate +
                ", comment='" + comment + '\'' +
                '}';
    }

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public TbState getClasstype() {
        return classtype;
    }

    public void setClasstype(TbState classtype) {
        this.classtype = classtype;
    }

    public TbGuide getClassGuide() {
        return classGuide;
    }

    public void setClassGuide(TbGuide classGuide) {
        this.classGuide = classGuide;
    }

    public TbGuide getJobGuide() {
        return jobGuide;
    }

    public void setJobGuide(TbGuide jobGuide) {
        this.jobGuide = jobGuide;
    }

    public TbTeacher getTeacher() {
        return teacher;
    }

    public void setTeacher(TbTeacher teacher) {
        this.teacher = teacher;
    }

    public TbState getState() {
        return state;
    }

    public void setState(TbState state) {
        this.state = state;
    }

    public Date getCreateddate() {
        return createddate;
    }

    public void setCreateddate(Date createddate) {
        this.createddate = createddate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}

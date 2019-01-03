package com.etc.entity;

import java.util.Date;

public class Commodity {
    private Integer cid;

    private String cinfo;

    private Integer cprice;

    private String cname;

    private Integer cnum;

    private Date crelease;

    private String ccertification;

    private String clocation;

    private Integer uid;

    private String cimage;

    private String ctel;

    private String cqqorweixin;

    private String cclassification;

    private String truename;

    private String cschool;

    private Integer oid;

    private Integer clicks;

    private Integer saleid;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCinfo() {
        return cinfo;
    }

    public void setCinfo(String cinfo) {
        this.cinfo = cinfo == null ? null : cinfo.trim();
    }

    public Integer getCprice() {
        return cprice;
    }

    public void setCprice(Integer cprice) {
        this.cprice = cprice;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public Integer getCnum() {
        return cnum;
    }

    public void setCnum(Integer cnum) {
        this.cnum = cnum;
    }

    public Date getCrelease() {
        return crelease;
    }

    public void setCrelease(Date crelease) {
        this.crelease = crelease;
    }

    public String getCcertification() {
        return ccertification;
    }

    public void setCcertification(String ccertification) {
        this.ccertification = ccertification == null ? null : ccertification.trim();
    }

    public String getClocation() {
        return clocation;
    }

    public void setClocation(String clocation) {
        this.clocation = clocation == null ? null : clocation.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage == null ? null : cimage.trim();
    }

    public String getCtel() {
        return ctel;
    }

    public void setCtel(String ctel) {
        this.ctel = ctel == null ? null : ctel.trim();
    }

    public String getCqqorweixin() {
        return cqqorweixin;
    }

    public void setCqqorweixin(String cqqorweixin) {
        this.cqqorweixin = cqqorweixin == null ? null : cqqorweixin.trim();
    }

    public String getCclassification() {
        return cclassification;
    }

    public void setCclassification(String cclassification) {
        this.cclassification = cclassification == null ? null : cclassification.trim();
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename == null ? null : truename.trim();
    }

    public String getCschool() {
        return cschool;
    }

    public void setCschool(String cschool) {
        this.cschool = cschool == null ? null : cschool.trim();
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getClicks() {
        return clicks;
    }

    public void setClicks(Integer clicks) {
        this.clicks = clicks;
    }

    public Integer getSaleid() {
        return saleid;
    }

    public void setSaleid(Integer saleid) {
        this.saleid = saleid;
    }
}
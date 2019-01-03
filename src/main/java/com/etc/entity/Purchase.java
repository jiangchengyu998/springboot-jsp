package com.etc.entity;

import java.util.Date;

public class Purchase {
    private Integer pid;

    private String pname;

    private String pprice;

    private Date prelease;

    private String plocation;

    private String ptel;

    private String pqqorweixin;

    private String pimage;

    private String ptruename;

    private Integer uid;

    private String pinfo;

    private String pschool;

    private String pcertification;

    private Integer buyid;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice == null ? null : pprice.trim();
    }

    public Date getPrelease() {
        return prelease;
    }

    public void setPrelease(Date prelease) {
        this.prelease = prelease;
    }

    public String getPlocation() {
        return plocation;
    }

    public void setPlocation(String plocation) {
        this.plocation = plocation == null ? null : plocation.trim();
    }

    public String getPtel() {
        return ptel;
    }

    public void setPtel(String ptel) {
        this.ptel = ptel == null ? null : ptel.trim();
    }

    public String getPqqorweixin() {
        return pqqorweixin;
    }

    public void setPqqorweixin(String pqqorweixin) {
        this.pqqorweixin = pqqorweixin == null ? null : pqqorweixin.trim();
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage == null ? null : pimage.trim();
    }

    public String getPtruename() {
        return ptruename;
    }

    public void setPtruename(String ptruename) {
        this.ptruename = ptruename == null ? null : ptruename.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getPinfo() {
        return pinfo;
    }

    public void setPinfo(String pinfo) {
        this.pinfo = pinfo == null ? null : pinfo.trim();
    }

    public String getPschool() {
        return pschool;
    }

    public void setPschool(String pschool) {
        this.pschool = pschool == null ? null : pschool.trim();
    }

    public String getPcertification() {
        return pcertification;
    }

    public void setPcertification(String pcertification) {
        this.pcertification = pcertification == null ? null : pcertification.trim();
    }

    public Integer getBuyid() {
        return buyid;
    }

    public void setBuyid(Integer buyid) {
        this.buyid = buyid;
    }
}
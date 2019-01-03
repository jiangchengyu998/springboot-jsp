package com.etc.entity;

public class Suggestion {
    private Integer sid;

    private String sname;

    private String semail;

    private String sadvice;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail == null ? null : semail.trim();
    }

    public String getSadvice() {
        return sadvice;
    }

    public void setSadvice(String sadvice) {
        this.sadvice = sadvice == null ? null : sadvice.trim();
    }
}
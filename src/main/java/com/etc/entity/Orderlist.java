package com.etc.entity;

public class Orderlist {
    private Integer oid;

    private String name;

    private String address;

    private String otel;

    private String oqqorweixin;

    private Integer uid;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getOtel() {
        return otel;
    }

    public void setOtel(String otel) {
        this.otel = otel == null ? null : otel.trim();
    }

    public String getOqqorweixin() {
        return oqqorweixin;
    }

    public void setOqqorweixin(String oqqorweixin) {
        this.oqqorweixin = oqqorweixin == null ? null : oqqorweixin.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
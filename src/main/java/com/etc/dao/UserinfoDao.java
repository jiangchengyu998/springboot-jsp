package com.etc.dao;

import java.util.List;

import com.etc.entity.Userinfo;

public interface UserinfoDao {
	List<Userinfo> queryuserandgoods();
	
	Integer getuid(String uname);
	
	int checkemail(String email);
	
	String showpass(String email);
	
	int checkuname(String uname);
	
	List<Userinfo> finduserinfos(Integer uid);
	
	int loginuser(Userinfo userinfo);
	
    int deleteByPrimaryKey(Integer uid);

    int insert(Userinfo record);

    int insertSelective(Userinfo record);

    Userinfo selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Userinfo record);

    int updateByPrimaryKey(Userinfo record);
}
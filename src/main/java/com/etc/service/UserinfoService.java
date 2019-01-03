package com.etc.service;

import java.util.List;

import com.etc.entity.Userinfo;

public interface UserinfoService {
	
	
	Integer getuid(String uname);
	
	boolean checkemail(String email);
	
	String showpass(String email);
	
    boolean loginuser(Userinfo userinfo);
    
    List<Userinfo> finduserinfos(Integer uid);
    
   boolean register(Userinfo userinfo);

	boolean checkuname(String uname);
}

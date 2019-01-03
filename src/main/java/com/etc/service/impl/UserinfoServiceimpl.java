package com.etc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.dao.UserinfoDao;
import com.etc.entity.Userinfo;
import com.etc.service.UserinfoService;
@Service
public class UserinfoServiceimpl implements UserinfoService{

	@Autowired
	UserinfoDao userinfoDao;
	@Override
	public boolean loginuser(Userinfo userinfo) {
		return  userinfoDao.loginuser(userinfo)>0;
	}
	
	@Override
	public boolean checkuname(String uname) {
		return userinfoDao.checkuname(uname)>0;
	}
	@Override
	public boolean register(Userinfo userinfo) {
		return userinfoDao.insert(userinfo)>0;
	}
	@Override
	public String showpass(String email) {
		return userinfoDao.showpass(email);
	}
	@Override
	public boolean checkemail(String email) {
		return userinfoDao.checkemail(email)>0;
	}
	@Override
	public Integer getuid(String uname) {
		return userinfoDao.getuid(uname);
	}

	@Override
	public List<Userinfo> finduserinfos(Integer uid) {
		return userinfoDao.finduserinfos(uid);
	}



	
	

}

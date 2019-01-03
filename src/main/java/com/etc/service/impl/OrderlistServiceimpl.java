package com.etc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.dao.OrderlistDao;
import com.etc.entity.Orderlist;
import com.etc.service.OrderlistService;
@Service
public class OrderlistServiceimpl implements OrderlistService {

	@Autowired
	OrderlistDao orderlistDao;
	
	
	@Override
	public boolean addorder(Orderlist orderlist) {
		return orderlistDao.insert(orderlist)>0;
		
	}


	@Override
	public boolean orderuser(Integer uid, Integer oid) {
		return orderlistDao.orderuser(uid, oid)>0;
	}


	@Override
	public List<Orderlist> showorder(Integer uid) {
		return orderlistDao.showorder(uid);
	}
   
}

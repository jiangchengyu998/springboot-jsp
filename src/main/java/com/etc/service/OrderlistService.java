package com.etc.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Orderlist;



public interface OrderlistService {
	List<Orderlist> showorder(Integer uid);
	
	boolean orderuser(@Param("uid") Integer uid, @Param("oid") Integer oid);
      boolean addorder(Orderlist orderlist);
}

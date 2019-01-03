package com.etc.dao;

import com.etc.entity.Purchase;

import java.util.List;

public interface PurchaseDao {
	List<Purchase> showbuy(Integer buyid);
	
	List<Purchase> togood();
	
    int deleteByPrimaryKey(Integer pid);

    int insert(Purchase record);

    int insertSelective(Purchase record);

    Purchase selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Purchase record);

    int updateByPrimaryKey(Purchase record);
}
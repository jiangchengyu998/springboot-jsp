package com.etc.service;


import java.util.List;

import com.etc.entity.Purchase;

public interface PurchaseService {
	List<Purchase> showbuy(Integer buyid);
	
	boolean togoods(Purchase purchase);
	
	List<Purchase> togood();
}

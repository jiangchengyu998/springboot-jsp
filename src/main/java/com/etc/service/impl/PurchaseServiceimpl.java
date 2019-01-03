package com.etc.service.impl;

import com.etc.dao.PurchaseDao;
import com.etc.entity.Purchase;
import com.etc.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PurchaseServiceimpl implements PurchaseService {

	@Autowired
	PurchaseDao purchaseDao;
	
	@Override
	public boolean togoods(Purchase purchase) {
		
		return purchaseDao.insert(purchase)>0;
	}

	@Override
	public List<Purchase> togood() {
		return purchaseDao.togood();
	}

	@Override
	public List<Purchase> showbuy(Integer buyid) {
		return purchaseDao.showbuy(buyid);
	}

}

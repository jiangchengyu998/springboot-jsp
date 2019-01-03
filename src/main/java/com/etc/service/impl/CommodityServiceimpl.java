package com.etc.service.impl;

import com.etc.dao.CommodityDao;
import com.etc.entity.Commodity;
import com.etc.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CommodityServiceimpl implements CommodityService{
     
	@Autowired
	CommodityDao commodityDao;
	
	@Override
	public List<Commodity> showgoods() {
		return commodityDao.showgood();
	}

	@Override
	public boolean addgoods(Commodity commodity) {
		return commodityDao.insert(commodity)>0;
	}



	@Override
	public boolean delgood(Integer cid) {
		return commodityDao.deleteByPrimaryKey(cid)>0;
	}

	@Override
	public List<Commodity> flgoods(String cclassification) {
		return commodityDao.flgoods(cclassification);
	}

	@Override
	public List<Commodity> sorttimeup(String cclassification) {
		return commodityDao.sorttimeup(cclassification);
	}

	@Override
	public List<Commodity> sorttimedown(String cclassification) {
		return commodityDao.sorttimedown(cclassification);
	}

	@Override
	public List<Commodity> sortpriceup(String cclassification) {
		return commodityDao.sortpriceup(cclassification);
	}

	@Override
	public List<Commodity> sortpricedown(String cclassification) {
		return commodityDao.sortpricedown(cclassification);
	}

	@Override
	public List<Commodity> search(String cinfo) {
		return commodityDao.search(cinfo);
	}

	@Override
	public boolean useraddgoods(Integer uid,Integer cid) {
		return commodityDao.useraddgoods(uid,cid)>0;
	}

	@Override
	public List<Commodity> oneusergood(Integer uid) {
		return commodityDao.oneusergood(uid);
	}

	@Override
	public int allprice(Integer uid) {
		return commodityDao.allprice(uid);
	}

	@Override
	public Commodity onegood(Integer cid) {
		return commodityDao.selectByPrimaryKey(cid);
	}

	@Override
	public boolean delg(Integer cid) {
		return commodityDao.delg(cid)>0;
	}

	@Override
	public boolean ordergood(Integer oid,Integer uid) {
		return commodityDao.ordergood(oid,uid)>0;
	}

	@Override
	public boolean removecart(Integer uid) {
		return commodityDao.removecart(uid)>0;
	}

	@Override
	public int allorderprice(Integer oid) {
		return commodityDao.allorderprice(oid);
	}

	@Override
	public int goodnum(String cclassification) {
		return commodityDao.goodnum(cclassification);
	}

	@Override
	public List<Commodity> showsale(Integer saleid) {
		return commodityDao.showsale(saleid);
	}

	@Override
	public List<Commodity> showordergood(Integer oid) {
		return commodityDao.showordergood(oid);
	}

	


	



}

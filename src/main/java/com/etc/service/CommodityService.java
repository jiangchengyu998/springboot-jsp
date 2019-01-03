package com.etc.service;

import com.etc.entity.Commodity;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface CommodityService {
	List<Commodity> showordergood(Integer oid);

	List<Commodity> showsale(Integer saleid);

	int goodnum(@Param("cclassification") String cclassification);

	int allorderprice(Integer oid);

	boolean removecart(Integer uid);

	boolean ordergood(Integer oid, Integer uid);

	boolean delg(Integer cid);

	Commodity onegood(Integer cid);

	int allprice(Integer uid);

	List<Commodity> oneusergood(Integer uid);

	boolean useraddgoods(Integer uid, Integer cid);

	List<Commodity> search(String cinfo);

	List<Commodity> sorttimeup(String cclassification);

	List<Commodity> sorttimedown(String cclassification);

	List<Commodity> sortpriceup(String cclassification);

	List<Commodity> sortpricedown(String cclassification);

	List<Commodity> flgoods(String cclassification);

	List<Commodity> showgoods();

	boolean addgoods(Commodity commodity);

	boolean delgood(Integer cid);
}

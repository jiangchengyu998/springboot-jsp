package com.etc.dao;

import com.etc.entity.Commodity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityDao {
	List<Commodity> showordergood(Integer oid);
	
	List<Commodity> showsale(Integer saleid);
	
	 Integer goodnum(@Param("cclassification") String cclassification);
		
     int allorderprice(Integer oid);	
	
     int removecart(Integer uid);	
	
	    int ordergood(@Param("oid") Integer oid, @Param("uid") Integer uid);
	
     int delg(Integer cid);
	
	    int allprice(Integer uid);
	
	    int useraddgoods(@Param("uid") Integer uid, @Param("cid") Integer cid);
	    
	    List<Commodity> oneusergood(Integer uid);
	 
	    List<Commodity> search(String cinfo); 
	 
	    List<Commodity> sorttimeup(@Param("cclassification") String cclassification);
	    
	    List<Commodity> sorttimedown(@Param("cclassification") String cclassification);
	    
	    List<Commodity> sortpriceup(@Param("cclassification") String cclassification);
	    
	    List<Commodity> sortpricedown(@Param("cclassification") String

                                              cclassification);
	
	    List<Commodity> showgood();

	    List<Commodity> flgoods(String cclassification);
		
	    int deleteByPrimaryKey(Integer cid);

	    int insert(Commodity record);

	    int insertSelective(Commodity record);

	    Commodity selectByPrimaryKey(Integer cid);

	    int updateByPrimaryKeySelective(Commodity record);

	    int updateByPrimaryKey(Commodity record);
}
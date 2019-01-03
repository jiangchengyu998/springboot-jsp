package com.etc.dao;

import com.etc.entity.Orderlist;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderlistDao {
	List<Orderlist> showorder(Integer uid);
	
	int orderuser(@Param("uid") Integer uid, @Param("oid") Integer oid);
	
    int deleteByPrimaryKey(Integer oid);

    int insert(Orderlist record);

    int insertSelective(Orderlist record);

    Orderlist selectByPrimaryKey(Integer oid);

    int updateByPrimaryKeySelective(Orderlist record);

    int updateByPrimaryKey(Orderlist record);
}
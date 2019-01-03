package com.etc.dao;

import com.etc.entity.Suggestion;

public interface SuggestionDao {
    int deleteByPrimaryKey(Integer sid);

    int insert(Suggestion record);

    int insertSelective(Suggestion record);

    Suggestion selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Suggestion record);

    int updateByPrimaryKey(Suggestion record);
}
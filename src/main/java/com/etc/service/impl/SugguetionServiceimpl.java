package com.etc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.dao.SuggestionDao;
import com.etc.entity.Suggestion;
import com.etc.service.SugguetionService;
@Service
public class SugguetionServiceimpl implements SugguetionService{

	@Autowired
	SuggestionDao suggestionDao; 
	
	@Override
	public boolean addst(Suggestion suggestion) {
		return suggestionDao.insert(suggestion)>0;
	}

}

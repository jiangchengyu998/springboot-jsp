package com.etc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.entity.Suggestion;
import com.etc.service.SugguetionService;

@Controller
public class SuggestionController {

	@Autowired
	SugguetionService sugguetionService;
	
	@RequestMapping("addst")
	public String addst(Suggestion suggestion){
		
		if(sugguetionService.addst(suggestion)){
		
		return "index";
		
		}
		
		return "";
	}
	
}

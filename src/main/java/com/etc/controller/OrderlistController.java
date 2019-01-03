package com.etc.controller;

import com.etc.entity.Orderlist;
import com.etc.service.OrderlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class OrderlistController {
    
	@Autowired
	OrderlistService orderlistService;
	
	@RequestMapping("addorder")
    public String addorder(Orderlist orderlist,HttpServletRequest request){
		
		Integer uid =(Integer) request.getSession().getAttribute("uid");
		
		request.getSession().setAttribute("s","2");
		
		if(orderlistService.addorder(orderlist)){
			
			System.out.println(orderlist.getOid());
//			通过oid设置uid
			orderlistService.orderuser(uid, orderlist.getOid());

			request.getSession().setAttribute("oid", orderlist.getOid());
			
			/*request.getSession().setAttribute("showorder", orderlistService.showorder(uid));*/
			
			System.out.println(orderlist.getOid());
			
			return "redirect:/ordergood";
		
		}
		
		return "";
		
	}
}

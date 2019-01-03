package com.etc.controller;

import com.etc.entity.Userinfo;
import com.etc.service.CommodityService;
import com.etc.service.UserinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@Controller

public class UserinfoController {
	
	@Autowired
	UserinfoService userinfoService;
	CommodityService commodityService;
	
    /*用户登录*/
	/*登录并注入对应的购物信息*/
	@RequestMapping("login")
    public String login(Userinfo userinfo,HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) throws UnsupportedEncodingException{
//    	设置uid和uname的session
		request.getSession().setAttribute("uname", userinfo.getUname());
		
		request.getSession().setAttribute("s","1");
    
    	request.getSession().setAttribute("uid", userinfoService.getuid(userinfo.getUname()));
    	
    	//解决编码问题
    	String pass=null;
    	 String rmpass =request.getParameter("rmpass");
         if(rmpass!=null){
        	 pass= new String(rmpass.getBytes("iso-8859-1"),"utf-8");
         }
    	
//         判断是否记住密码，等于on就是记住密码
    	if("on".equals(pass)){
    		Cookie cookie = new Cookie("upass", userinfo.getUpass());
    	    cookie.setMaxAge(60*60*24*7);
    		response.addCookie(cookie);
    		Cookie cookie1 = new Cookie("uname", userinfo.getUname());
    	    cookie.setMaxAge(60*60*24*7);
    		response.addCookie(cookie1);
    	
    	}else {
    		Cookie cookie = new Cookie("upass", userinfo.getUpass());
    	    cookie.setMaxAge(0);
    		response.addCookie(cookie);
    		Cookie cookie1 = new Cookie("uname", userinfo.getUname());
    	    cookie.setMaxAge(0);
    		response.addCookie(cookie1);
		}
    	
        Integer uid =(Integer) request.getSession().getAttribute("uid");
    	
        /*request.getSession().setAttribute("user", userinfoService.finduserinfos(uid));*/
    	

    	
    	if(userinfoService.loginuser(userinfo)){
    		return "redirect:/oneusergood?gouwu=zhuye";
    		
    	}
    
    	
    	return "sign-in";
    	
    }
    

    
    /*检验用户名是否存在数据库中*/
    @RequestMapping("checkuname/{uname}")
    @ResponseBody
    public String checkuname(@PathVariable("uname") String uname){
    	String flag1 =null;
    	if( userinfoService.checkuname(uname)){
    		flag1="true";
    	}
    	System.out.println(flag1);
    	
    	return flag1;
    }
    
    /*检验密码是否符合格式*/
    @RequestMapping("checkupass/{upass}")
    @ResponseBody
    public String checkupass(@PathVariable("upass") String upass){
    	String flag=null;
    	Matcher matcher=null;
    	if(upass.length()>=8){
    	flag="5";	
    	String regupass1 = "\\d{8,}";
    	Pattern pattern1 =Pattern.compile(regupass1);
    	matcher =pattern1.matcher(upass);
//    	判断密码强度为低
    	if(matcher.matches()){
    		flag="1";
    	}
    	String regupass2="[a-zA-Z]{6,}";
    	Pattern pattern2 =Pattern.compile(regupass2);
    	matcher =pattern2.matcher(upass);
//    	判断密码强度为中
    	if(matcher.matches()){
    		flag="2";
    	}
    	String regupass3="^\\S*([a-zA-Z]+\\S*[0-9]+|[0-9]+\\S*[a-zA-Z]+)\\S*$";
    	Pattern pattern3 =Pattern.compile(regupass3);
    	matcher =pattern3.matcher(upass);
//    	判断密码强度为高
    	if(matcher.matches()){
    		flag="3";
    	}
    	}else if(upass==""||upass.length()<8) {
			flag="0";
		}
    	return flag;	
    }
    
   
 
    
    /*注册*/
    @RequestMapping("register")
 	public String register(Userinfo userinfo,HttpServletRequest request) throws UnsupportedEncodingException{
    	request.setCharacterEncoding("UTF-8");
    	
    	try {
			Thread.sleep(2*1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
    	if(!userinfoService.checkuname(userinfo.getUname()) &&
    		userinfo.getUpass().length()>=8 &&
    		userinfo.getUpass().equals(request.getParameter("upass1")) &&
    		!userinfoService.checkemail(userinfo.getEmail())
    			){
 		if(userinfoService.register(userinfo)){
 			return "sign-in";
 		}
    	}
 		return "sign-up";
     	
 	}
    
   /* 通过邮箱获取密码*/
    @RequestMapping("showpass")
    @ResponseBody
    public String showpass(String email,Map<String,Object> map){
    	
    	String pass = userinfoService.showpass(email);
    	
    	return pass;
    }
    
    /*检验邮箱格式是否正确*/
    @RequestMapping("checkemail/{email}")
    @ResponseBody
    public String checkemail(@PathVariable("email") String email){
    	String flag2 ="false";
    	if( userinfoService.checkemail(email+".com")){
    		flag2="success";
    	}
    	System.out.println(flag2);
    	
    	return flag2;
    }
    
    @RequestMapping("/showoneuser")
    public String showoneuser(Map<String,Object> map,HttpServletRequest request){
    	
    	Integer uid = (Integer) request.getSession().getAttribute("uid");
    	
    	List<Userinfo> user = userinfoService.finduserinfos(uid);
    	
    	map.put("user", user);
    	
    	return "personal-information";

    }
  
}


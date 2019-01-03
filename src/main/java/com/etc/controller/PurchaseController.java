package com.etc.controller;

import com.etc.entity.Purchase;
import com.etc.service.PurchaseService;
import com.etc.util.ImageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
public class PurchaseController {

	@Autowired
	PurchaseService purchaseService;
	
    /*发布求购信息*/
	@RequestMapping(value = "qiugou", method = RequestMethod.POST)
	public String updateBook(HttpServletRequest request, Purchase purchase, MultipartFile pictureFile,Map<String , Object> map)
			throws IllegalStateException, IOException {
		Integer uid =(Integer) request.getSession().getAttribute("uid");
		
		// 判断跳转页面
		String location = "";
//        判断操作时间
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
		Date date = null;
		try {
			date = df.parse(now);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		// 得到上传图片的地址
		String imgPath = ImageUtil.upload(request, pictureFile);

		// 判断是否为图片格式
		if (imgPath.endsWith("jpg") == true || imgPath.endsWith("jpeg") == true) {

			if (imgPath != null) {
				
				purchase.setBuyid(uid);
				// 将上传图片的地址存储到数据库中
				purchase.setPimage(imgPath);
				purchase.setPrelease(date);
				purchase.setPcertification("未认证");
				
			}
			// 保存信息，含图片
			purchaseService.togoods(purchase);
			
			

			/*request.getSession().setAttribute("showbuy",purchaseService.showbuy(uid));*/
			
			
			// bookService.updateBook(book);//修改信息，含图片
			// 重定向到查询所有用户的Controller，测试图片回显

			location = "redirect:/oneusergood?gouwu=buy";
		} else {
			location = "publish-buy";
		}
		return location;
	}

	
	
}

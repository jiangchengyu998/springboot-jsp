package com.etc.util;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class ImageUtil {
	

	public static String upload(HttpServletRequest request,
			MultipartFile pictureFile) throws IOException {
		
		
		String imgPath = null;//装配后的图片地址
		//上传图片
		if(!pictureFile.isEmpty()){
			// 使用UUID给图片重命名，并去掉四个“-”
			String name = UUID.randomUUID().toString().replaceAll("-", "");
			// 获取文件的扩展名
			String ext=FilenameUtils.getExtension(pictureFile
					.getOriginalFilename());
			
			// 设置图片上传路径
			String url = request.getSession().getServletContext()
					.getRealPath("/images");
			System.out.println(url);
			// 以绝对路径保存重名命后的图片
			pictureFile.transferTo(new File(url + "/" + name + "." + ext));
			// 装配图片地址
			imgPath = "images/" + name + "." + ext;
			
			
	        
		}
		return imgPath;
	}


}

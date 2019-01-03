package com.etc.controller;

import com.etc.entity.Commodity;
import com.etc.entity.Purchase;
import com.etc.service.CommodityService;
import com.etc.service.OrderlistService;
import com.etc.service.PurchaseService;
import com.etc.service.UserinfoService;
import com.etc.util.ImageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class CommodityController {

	@Autowired
	CommodityService commodityService;

	@Autowired
	PurchaseService purchaseService;

	@Autowired
	UserinfoService userinfoService;

	@Autowired
	OrderlistService orderlistService;

	@RequestMapping("publish-sale")
	public String chechecklogin1(HttpServletRequest request) {

		if (request.getSession().getAttribute("uname") != null) {

			return "redirect:/oneusergood?gouwu=psale";
		}

		return "skip";
	}

	@RequestMapping("publish-buy")
	public String chechecklogin2(HttpServletRequest request) {

		if (request.getSession().getAttribute("uname") != null) {

			return "redirect:/oneusergood?gouwu=pbuy";
		}

		return "skip";
	}

	/* 发布二手商品 */
	@RequestMapping(value = "fabu", method = RequestMethod.POST)
	public String updateBook(HttpServletRequest request, Commodity commodity, MultipartFile pictureFile)
			throws IllegalStateException, IOException {
		String location = "";
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
				Integer uid = (Integer) request.getSession().getAttribute("uid");
				commodity.setSaleid(uid);
				// 将上传图片的地址存储到数据库中
				commodity.setCimage(imgPath);
				commodity.setCrelease(date);
				commodity.setCcertification("未认证");
			}
			// 保存信息，含图片
			commodityService.addgoods(commodity);
			// bookService.updateBook(book);//修改信息，含图片
			// 重定向到查询所有用户的Controller，测试图片回显

			location = "redirect:/showgood";
		} else {
			location = "publish-sale";
		}
		return location;
	}

	/*
	 * 查询所有商品并返回二手界面
	 */@RequestMapping("/showgood")
	public String showgoods(Integer uid, Map<String, Object> map, HttpServletRequest request) {
		// 判断分类排序还是总排序
		request.getSession().setAttribute("g", "1");

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		List<Commodity> goods = commodityService.showgoods();

		PageInfo<Commodity> pi = new PageInfo<Commodity>(goods);

		map.put("pm", pi);

		uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

			Integer price = commodityService.allprice(uid);

			map.put("price", price);

		}

		Integer num1 = commodityService.goodnum("代步工具");
		map.put("num1", num1);
		Integer num2 = commodityService.goodnum("手机电脑");
		map.put("num2", num2);
		Integer num3 = commodityService.goodnum("数码电器");
		map.put("num3", num3);
		Integer num4 = commodityService.goodnum("衣鞋伞帽");
		map.put("num4", num4);
		Integer num5 = commodityService.goodnum("书籍教材");
		map.put("num5", num5);
		Integer num6 = commodityService.goodnum("体育健身");
		map.put("num6", num6);
		Integer num7 = commodityService.goodnum("乐器器材");
		map.put("num7", num7);
		Integer num8 = commodityService.goodnum("其他");
		map.put("num8", num8);

		return "sale";
	}

	/* 通过cid清除二手界面购物车 */
	@RequestMapping("delgood/{cid}")

	public String delgood(@PathVariable("cid") Integer cid) {

		commodityService.delg(cid);

		return "redirect:/showgood";
	}

	/* 通过cid清除购物车界面购物车 */
	@RequestMapping("delgoodcart/{cid}")

	public String delgoodcart(@PathVariable("cid") Integer cid) {

		commodityService.delg(cid);

		return "redirect:/oneusergood";
	}

	/* 对商品进行分类查询 */
	@RequestMapping("{cclassification}")

	public String flgoods(@PathVariable("cclassification") String cclassification, Map<String, Object> map,
			HttpServletRequest request) {
		request.getSession().setAttribute("g", "2");

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		List<Commodity> goods = commodityService.flgoods(cclassification);

		PageInfo<Commodity> pi = new PageInfo<Commodity>(goods);

		map.put("pm", pi);

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

		}

		Integer num1 = commodityService.goodnum("代步工具");
		map.put("num1", num1);
		Integer num2 = commodityService.goodnum("手机电脑");
		map.put("num2", num2);
		Integer num3 = commodityService.goodnum("数码电器");
		map.put("num3", num3);
		Integer num4 = commodityService.goodnum("衣鞋伞帽");
		map.put("num4", num4);
		Integer num5 = commodityService.goodnum("书籍教材");
		map.put("num5", num5);
		Integer num6 = commodityService.goodnum("体育健身");
		map.put("num6", num6);
		Integer num7 = commodityService.goodnum("乐器器材");
		map.put("num7", num7);
		Integer num8 = commodityService.goodnum("其他");
		map.put("num8", num8);

		return "sale";

	}

	/* 商品价格升序 */
	@RequestMapping("sortpriceup/{cclassification}")
	public String sortpriceup(@PathVariable("cclassification") String cclassification, Map<String, Object> map,
			HttpServletRequest request) {

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		if (request.getSession().getAttribute("g").equals("2")) {
			List<Commodity> commodities = commodityService.sortpriceup(cclassification);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		} else if (request.getSession().getAttribute("g").equals("1")) {
			List<Commodity> commodities = commodityService.sortpriceup(null);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		}

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

		}

		Integer num1 = commodityService.goodnum("代步工具");
		map.put("num1", num1);
		Integer num2 = commodityService.goodnum("手机电脑");
		map.put("num2", num2);
		Integer num3 = commodityService.goodnum("数码电器");
		map.put("num3", num3);
		Integer num4 = commodityService.goodnum("衣鞋伞帽");
		map.put("num4", num4);
		Integer num5 = commodityService.goodnum("书籍教材");
		map.put("num5", num5);
		Integer num6 = commodityService.goodnum("体育健身");
		map.put("num6", num6);
		Integer num7 = commodityService.goodnum("乐器器材");
		map.put("num7", num7);
		Integer num8 = commodityService.goodnum("其他");
		map.put("num8", num8);

		return "sale";

	}

	/* 商品价格降序 */
	@RequestMapping("sortpricedown/{cclassification}")
	public String sortpricedown(@PathVariable("cclassification") String cclassification, Map<String, Object> map,
			HttpServletRequest request) {

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		if (request.getSession().getAttribute("g").equals("2")) {
			List<Commodity> commodities = commodityService.sortpricedown(cclassification);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		} else if (request.getSession().getAttribute("g").equals("1")) {
			List<Commodity> commodities = commodityService.sortpricedown(null);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		}

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

		}

		Integer num1 = commodityService.goodnum("代步工具");
		map.put("num1", num1);
		Integer num2 = commodityService.goodnum("手机电脑");
		map.put("num2", num2);
		Integer num3 = commodityService.goodnum("数码电器");
		map.put("num3", num3);
		Integer num4 = commodityService.goodnum("衣鞋伞帽");
		map.put("num4", num4);
		Integer num5 = commodityService.goodnum("书籍教材");
		map.put("num5", num5);
		Integer num6 = commodityService.goodnum("体育健身");
		map.put("num6", num6);
		Integer num7 = commodityService.goodnum("乐器器材");
		map.put("num7", num7);
		Integer num8 = commodityService.goodnum("其他");
		map.put("num8", num8);

		return "sale";

	}

	/* 商品时间升序 */
	@RequestMapping("sorttimeup/{cclassification}")
	public String sorttimeup(@PathVariable("cclassification") String cclassification, Map<String, Object> map,
			HttpServletRequest request) {

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		if (request.getSession().getAttribute("g").equals("2")) {
			List<Commodity> commodities = commodityService.sorttimeup(cclassification);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		} else if (request.getSession().getAttribute("g").equals("1")) {
			List<Commodity> commodities = commodityService.sorttimeup(null);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		}

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

		}

		Integer num1 = commodityService.goodnum("代步工具");
		map.put("num1", num1);
		Integer num2 = commodityService.goodnum("手机电脑");
		map.put("num2", num2);
		Integer num3 = commodityService.goodnum("数码电器");
		map.put("num3", num3);
		Integer num4 = commodityService.goodnum("衣鞋伞帽");
		map.put("num4", num4);
		Integer num5 = commodityService.goodnum("书籍教材");
		map.put("num5", num5);
		Integer num6 = commodityService.goodnum("体育健身");
		map.put("num6", num6);
		Integer num7 = commodityService.goodnum("乐器器材");
		map.put("num7", num7);
		Integer num8 = commodityService.goodnum("其他");
		map.put("num8", num8);

		return "sale";

	}

	/* 商品时间降序 */
	@RequestMapping("sorttimedown/{cclassification}")
	public String sorttimedown(@PathVariable("cclassification") String cclassification, Map<String, Object> map,
			HttpServletRequest request) {

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		if (request.getSession().getAttribute("g").equals("2")) {
			List<Commodity> commodities = commodityService.sorttimedown(cclassification);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		} else if (request.getSession().getAttribute("g").equals("1")) {
			List<Commodity> commodities = commodityService.sorttimedown(null);

			PageInfo<Commodity> pi = new PageInfo<Commodity>(commodities);

			map.put("pm", pi);
		}

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

		}

		Integer num1 = commodityService.goodnum("代步工具");
		map.put("num1", num1);
		Integer num2 = commodityService.goodnum("手机电脑");
		map.put("num2", num2);
		Integer num3 = commodityService.goodnum("数码电器");
		map.put("num3", num3);
		Integer num4 = commodityService.goodnum("衣鞋伞帽");
		map.put("num4", num4);
		Integer num5 = commodityService.goodnum("书籍教材");
		map.put("num5", num5);
		Integer num6 = commodityService.goodnum("体育健身");
		map.put("num6", num6);
		Integer num7 = commodityService.goodnum("乐器器材");
		map.put("num7", num7);
		Integer num8 = commodityService.goodnum("其他");
		map.put("num8", num8);

		return "sale";

	}

	@RequestMapping("search")
	public String search(String cinfo, Map<String, Object> map) {

		List<Commodity> commodities = commodityService.search(cinfo);
		System.out.println(commodities);
		map.put("flgood", commodities);

		return "showpage";
	}

	/* 通过cid添加商品到购物车中 */
	@RequestMapping("useraddgoods/{cid}")
	public String add(@Param("uid") Integer uid, @PathVariable("cid") Integer cid, HttpServletRequest request,
			Commodity commodity) {
		System.out.println(cid);
		uid = (int) (request.getSession().getAttribute("uid"));

		commodityService.useraddgoods(uid, cid);

		return "redirect:/showgood";

	}

	/* 对一个用户所有选择的商品放进购物车后的查询 */
	@RequestMapping("/oneusergood")
	public String oneusergood(Integer uid, Map<String, Object> map, HttpServletRequest request) {

		uid = (Integer) request.getSession().getAttribute("uid");

		if (uid != null) {

			List<Commodity> oneusergood = commodityService.oneusergood(uid);

			map.put("oneuser", oneusergood);

			Integer price = commodityService.allprice(uid);

			map.put("price", price);

		}

		if ("zhuye".equals(request.getParameter("gouwu"))) {
			return "index";
		} else if ("guanyu".equals(request.getParameter("gouwu"))) {
			return "about-us";
		} else if ("lianxi".equals(request.getParameter("gouwu"))) {
			return "contact-us";
		} else if ("check".equals(request.getParameter("gouwu"))) {
			return "checkout";
		} else if ("pbuy".equals(request.getParameter("gouwu"))) {
			return "publish-buy";
		} else if ("psale".equals(request.getParameter("gouwu"))) {
			return "publish-sale";
		} else if ("buy".equals(request.getParameter("gouwu"))) {
			/* map.put("pcpm", purchaseService.togood()); */
			String pageNoStr = request.getParameter("pageNo");

			int pageNo = 1;

			int pageSize = 2;

			if (pageNoStr != null) {
				pageNo = Integer.parseInt(pageNoStr);
			}

			PageHelper.startPage(pageNo, pageSize);

			List<Purchase> goods = purchaseService.togood();

			PageInfo<Purchase> pi = new PageInfo<Purchase>(goods);

			/* request.getSession().setAttribute("pc", pi); */

			map.put("pc", pi);

			return "buy";
		} else if ("person".equals(request.getParameter("gouwu"))) {

			List<Commodity> pcgood = commodityService.showsale(uid);

			map.put("sale", pcgood);

			map.put("user", userinfoService.finduserinfos(uid));

			map.put("buy", purchaseService.showbuy(uid));

			map.put("order", orderlistService.showorder(uid));

			Integer oid = (Integer) request.getSession().getAttribute("oid");

			commodityService.ordergood(oid, uid);

			List<Commodity> comm = commodityService.showordergood(oid);

			map.put("order1", comm);

			return "personal-information";
		}

		return "cart";
	}

	/* 退出登录，清除session */
	@RequestMapping("removeSession")
	public String removeSession(HttpServletRequest request) {
		request.getSession().removeAttribute("uname");
		return "index";

	}

	/* 显示一个商品的详细信息 */
	@RequestMapping("onegood/{cid}")
	@ResponseBody
	public Commodity onegood(@PathVariable("cid") Integer cid, Map<String, Object> map) {

		Commodity commodity = commodityService.onegood(cid);

		return commodity;
	}

	@RequestMapping("/ordergood")
	public String ordergood(Map<String, Object> map, HttpServletRequest request) {

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		Integer oid = (Integer) request.getSession().getAttribute("oid");

		System.out.println(oid);
		if (uid != null) {
			// 增加订单号到商品表中
			commodityService.ordergood(oid, uid);

			/*
			 * int price = commodityService.allorderprice(oid);
			 * 
			 * map.put("orderprice", price);
			 */

			commodityService.removecart(uid);

			/*
			 * List<Commodity> oneusergood =commodityService.oneusergood(uid);
			 * 
			 * map.put("oneuser", oneusergood);
			 * 
			 * int price =commodityService.allprice(uid);
			 * 
			 * map.put("price", price);
			 */

		}
		return "redirect:/showsale";

	}

	@RequestMapping("/showsale")
	public String showsale(HttpServletRequest request, Map<String, Object> map) {

		String pageNoStr = request.getParameter("pageNo");

		int pageNo = 1;

		int pageSize = 6;

		if (pageNoStr != null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		PageHelper.startPage(pageNo, pageSize);

		Integer uid = (Integer) request.getSession().getAttribute("uid");

		List<Commodity> goods = commodityService.showsale(uid);

		PageInfo<Commodity> pi = new PageInfo<Commodity>(goods);

		map.put("sale", pi);

		return "redirect:/oneusergood?gouwu=person";
	}

}

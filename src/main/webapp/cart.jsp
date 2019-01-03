<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html class="no-js" lang="en">
<link rel="stylesheet" href="css/a-update.css">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>橙子校园二手交易网-购物车</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->


<!-- CSS 
    ========================= -->

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Icon Font CSS -->
<link rel="stylesheet" href="assets/css/simple-line-icons.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">

<!-- Plugins CSS -->
<link rel="stylesheet" href="assets/css/plugins.css">

<!-- Main Style CSS -->
<link rel="stylesheet" href="assets/css/style.css">

<!-- Modernizer JS -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<nav class="top-right nav1" style="z-index: 10; margin-top: 15px;">
		<a href="publish-sale" class="disc l3">
			<div>发布二手</div>
		</a> <a href="publish-buy" class="disc l4">
			<div>发布求购</div>
		</a> <a class="disc l5 toggle"> 发布 </a>
	</nav>
	<!-- Main Wrapper Start -->
	<div class="main-wrapper">

		<!-- header-area start -->
		<div class="header-area">
			<!-- header-top start -->
			<div class="header-top"
				style="position:fixed;z-index:9;width:100%;height:42px;">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<p>橙子校园-专注校园二手</p>
						</div>
						<div class="col-lg-6 col-md-6">

							<!-- language-currency-wrapper start -->
							<div class="language-currency-wrapper">

								<ul>
									<c:if test="${not empty uname}">
										<li class="drodown-show"><a href="">欢迎${sessionScope.uname}</a></li>
										<li class="drodown-show"><a href="removeSession">退出登录</a></li>
									</c:if>
									<c:if test="${empty uname}">
										<li class="drodown-show"><a href="sign-in.jsp">登录</a></li>
									</c:if>
									<li class="drodown-show"><a href="#">Language <i
											class="ion-ios-arrow-down"></i></a>
										<ul class="open-dropdown">
											<li class="active"><a href="#"><img
													src="assets/images/icon/la-1.png" alt=""> China </a></li>
											<li><a href="#"><img
													src="assets/images/icon/la-2.jpg" alt=""> English </a></li>
										</ul></li>

								</ul>
							</div>
							<!-- language-currency-wrapper end -->

						</div>
					</div>
				</div>
			</div>
			<!-- header-top end -->
			<div class="header-bottom-area header-sticky">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-md-5 col-5">
							<div class="logo">
								<a href="oneusergood?gouwu=zhuye"><img
									src="assets/images/logo/logo.png" alt=""></a>
							</div>
						</div>
						<div class="col-lg-8 d-none d-lg-block">
							<div class="main-menu-area text-center">
								<nav class="main-navigation">
									<ul>
										<li class="active"><a href="oneusergood?gouwu=zhuye">主页</a>
										</li>
										<li><a href="showgood">二手</a>
											<ul class="sub-menu">
												<li><a href="<%=path%>/代步工具">代步工具</a></li>
												<li><a href="<%=path%>/手机电脑">手机电脑</a></li>
												<li><a href="<%=path%>/数码电器">数码电器</a></li>
												<li><a href="<%=path%>/衣鞋伞帽">衣鞋伞帽</a></li>
												<li><a href="<%=path%>/书籍教材">书籍教材</a></li>
												<li><a href="<%=path%>/体育健身">体育健身</a></li>
												<li><a href="<%=path%>/乐器器材">乐器器材</a></li>
												<li><a href="<%=path%>/其他">其他</a></li>
											</ul></li>
										</li>
										<li><a href="oneusergood?gouwu=buy">求购</a></li>
										<li><a href="oneusergood">购物车</a></li>
										<li><a href="oneusergood?gouwu=guanyu">关于我们</a></li>
										<li><a href="oneusergood?gouwu=lianxi">联系我们</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-lg-2 col-md-7 col-7">
							<div class="right-blok-box d-flex">

								<div class="user-wrap">
									<a href="oneusergood?gouwu=person"><i class="icon-user"></i></a>
								</div>

								<div class="shopping-cart-wrap">
									<a href="#"><i class="icon-handbag"></i>
									<!--<span id="cart-total">2</span>--></a>
									<ul class="mini-cart">
										<c:if test="${not empty uname}">
											<c:forEach items="${oneuser}" var="commodity">
												<li class="cart-item">
													<div class="cart-image">
														<a href="<%=path%>/product-details.jsp"><img alt=""
															src="<%=path %>/${commodity.cimage}"></a>
													</div>
													<div class="cart-title">
														<a href="<%=path%>/product-details.jsp"><h4>${commodity.cname}</h4></a>

														<div class="price-box">
															<span class="new-price">￥${commodity.cprice}</span>
														</div>
														<a class="remove_from_cart" href="#"><i
															class="icon-trash icons"></i></a>
													</div>
												</li>
											</c:forEach>
										</c:if>
										<br>
										<li class="subtotal-titles">
											<div class="subtotal-titles">
												<h3>总计：</h3>
												<span><c:if test="${not empty uname}">￥${price}</c:if></span>
											</div>
										</li>
										<li class="mini-cart-btns">
											<div class="cart-btns">
												<a href="oneusergood">购物车</a> <a
													href="oneusergood?gouwu=check">订单</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="mobile-menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header-area end -->

		<!-- main-search start -->
		<div class="main-search-active">
			<div class="sidebar-search-icon">
				<button class="search-close">
					<span class="icon-close"></span>
				</button>
			</div>
		</div>
		<!-- main-search start -->

		<!-- breadcrumb-area start -->
		<div class="breadcrumb-area section-ptb">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 class="breadcrumb-title">购物车</h2>
						<!-- breadcrumb-list start -->
						<ul class="breadcrumb-list">
							<li class="breadcrumb-item"><a
								href="oneusergood?gouwu=zhuye">主页</a></li>
							<li class="breadcrumb-item active">购物车</li>
						</ul>
						<!-- breadcrumb-list end -->
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area end -->

		<!-- main-content-wrap start -->
		<div class="main-content-wrap section-ptb cart-page">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<form action="#" class="cart-table">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="plantmore-product-thumbnail">图片</th>
											<th class="cart-product-name">名称</th>
											<th class="plantmore-product-price">价格</th>
											<th class="plantmore-product-quantity">交易</th>
											<th class="plantmore-product-subtotal">认证</th>
											<th class="plantmore-product-remove">删除</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${oneuser}" var="commodity">
											<tr>
												<td class="plantmore-product-thumbnail"><a href="#"><img
														src="${commodity.cimage}" style="100px;height: 100px"
														alt=""></a></td>
												<td class="plantmore-product-name"><a href="#">${commodity.cname}</a></td>
												<td class="plantmore-product-price"><span
													class="amount">￥${commodity.cprice}</span></td>
												<td class="plantmore-product-price"><span
													class="amount">${commodity.clocation}</span></td>
												<td class="plantmore-product-price"><span
													class="amount">${commodity.ccertification}</span></td>
												<td class="plantmore-product-remove"><a
													href="delgoodcart/${commodity.cid}"><i
														class="ion-close"></i></a></td>
											</tr>
										</c:forEach>
										<!-- <tr>
                                        <td class="plantmore-product-thumbnail"><a href="#"><img src="assets/images/cart/2.jpg" alt=""></a></td>
                                        <td class="plantmore-product-name"><a href="#">Vestibulum suscipit</a></td>
                                        <td class="plantmore-product-price"><span class="amount">$60.50</span></td>
                                        <td class="plantmore-product-quantity">
                                            <input value="1" type="number">
                                        </td>
                                        <td class="product-subtotal"><span class="amount">$60.50</span></td>
                                        <td class="plantmore-product-remove"><a href="#"><i class="ion-close"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td class="plantmore-product-thumbnail"><a href="#"><img src="assets/images/cart/3.jpg" alt=""></a></td>
                                        <td class="plantmore-product-name"><a href="#">suscip dictum magna</a></td>
                                        <td class="plantmore-product-price"><span class="amount">$40.50</span></td>
                                        <td class="plantmore-product-quantity">
                                            <input value="1" type="number">
                                        </td>
                                        <td class="product-subtotal"><span class="amount">$40.50</span></td>
                                        <td class="plantmore-product-remove"><a href="#"><i class="ion-close"></i></a></td>
                                    </tr> -->
									</tbody>
								</table>
							</div>
							<div class="row">

								<div class="col-md-4 ml-auto">
									<div class="cart-page-total">
										<h2>总计：</h2>
										<ul>
											<li>价格<span>￥${price}</span></li>
										</ul>
										<a href="oneusergood?gouwu=check" class="proceed-checkout-btn">订单</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- main-content-wrap end -->

		<!-- footer-area start -->
<!-- 		<div class="footer-top pt--40 pb--100">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="instagram-wrapper">
							<div class="instaram-title text-center"></div>
							<div class="instagram-warp instagram-slider row">
								<div class="col-lg-6">
									<div class="single-instagram">
										<a href="#"><img src="assets/images/instagram/1.jpg"
											alt=""></a>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="single-instagram">
										<a href="#"><img src="assets/images/instagram/2.jpg"
											alt=""></a>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="single-instagram">
										<a href="#"><img src="assets/images/instagram/1.jpg"
											alt=""></a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-12">
						<div class="footer-info mt--60">
							<div class="footer-title"></div>
							<ul class="footer-info-list">
								<li><i class="ion-ios-location-outline"></i>
									地址：福建省厦门市集美区软件园三期D03</li>
								<li><i class="ion-ios-email-outline"></i>邮箱：xzl897@sina.com</a>
								</li>
								<li><i class="ion-ios-telephone-outline"></i>电话：15659982829
								</li>
							</ul>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<footer class="footer-area">
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-6  col-md-6">
						<div class="copyright">
							<p>
								Copyright ©All Right <a href="http://www.17sucai.com/">reserved</a>.
							</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="footer-social">
							<ul>
								<li><a href="#"><i class="ion-social-twitter"></i></a></li>
								<li><a href="#"><i class="ion-social-tumblr"></i></a></li>
								<li><a href="#"><i class="ion-social-facebook"></i></a></li>
								<li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer> -->
	<!-- footer-area end -->

	</div>
	<!-- Main Wrapper End -->

	<!-- JS
============================================ -->

	<!-- jQuery JS -->
	<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
	<!-- Popper JS -->
	<script src="assets/js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Plugins JS -->
	<script src="assets/js/plugins.js"></script>
	<!-- Ajax Mail -->
	<script src="assets/js/ajax-mail.js"></script>
	<!-- Main JS -->
	<script src="assets/js/main.js"></script>

	<script src="js/demo.js"></script>

</body>

</html>

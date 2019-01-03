<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>橙子校园二手交易网-主页</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<link rel="stylesheet" href="css/a-update.css">

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

								<ul class="drodown-show">
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
<!-- 								<div class="search-wrap">
									<a href="#" class="trigger-search"><i
										class="icon-magnifier"></i></a>
								</div> -->

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
												<a href="oneusergood">购物车</a> 
												<a href="oneusergood?gouwu=check">订单</a>
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
<!-- 		<div class="main-search-active">
			<div class="sidebar-search-icon">
				<button class="search-close">
					<span class="icon-close"></span>
				</button>
			</div>
			<div class="sidebar-search-input">
				<form>
					<div class="form-search">
						<input id="search" class="input-text" value=""
							placeholder="搜索 ..." type="search">
						<button class="search-btn" type="button">
							<i class="icon-magnifier"></i>
						</button>
					</div>
				</form>
			</div>
		</div> -->
		<!-- main-search start -->

		<!-- Hero Slider Start -->
		<div class="user_callback">
			<div class="user_pic" id="user_pic">
				<span class="prev"></span> <span class="next"></span>
				<ul id="user_call">
					<li class="user_pic1"><a href="#"> <img
							src="images/57f8c4ccN6a433b82.png" alt="1" width="248"
							height="285" /></a></li>
					<li class="user_pic2"><a href="#"> <img
							src="images/57f8c4d6Nd425f6a3.png" alt="2" width="247"
							height="285" /></a></li>
					<li class="user_pic3"><a href="#"> <img
							src="images/57f8c4e1Nbd6f109e.png" alt="3" width="248"
							height="285" /></a></li>
					<li class="user_pic4"><a href="#"> <img
							src="images/57f8c4ecN92c22efc.png" alt="4" width="247"
							height="285" /></a></li>
					<li class="user_pic5"><a href="#"> <img
							src="images/583691e7Na26009a0.png" alt="5" width="247"
							height="285" /></a></li>
					<li class="user_pic6"><a href="#"> <img
							src="images/583691e7Ne2adc3c4.png" alt="6" width="247"
							height="285" /></a></li>
					<li class="user_pic7"><a href="#"> <img
							src="images/583691e7N058f6f5a.png" alt="7" width="247"
							height="285" /></a></li>
					<li class="user_pic8"><a href="#"> <img
							src="images/583691e7N36b67a44.png" alt="8" width="247"
							height="285" /></a></li>
				</ul>
			</div>
		</div></br></br></br></br>

		<!-- Hero Section End -->

		<!-- product-area start -->
<!-- 		<div class="section-ptb">
     			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						section-title start
						<div class="section-title">
							<h2>热门二手商品</h2>

						</div>
						section-title end
					</div>
				</div>
				product-warpper start
				<div class="product-warpper">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/1.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 001</a>
									</h3>
									<div class="price-box">
										<span class="old-price">140.00</span> <span class="new-price">120.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/2.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 002</a>
									</h3>
									<div class="price-box">
										<span class="new-price">120.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/3.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 003</a>
									</h3>
									<div class="price-box">
										<span class="old-price">230.00</span> <span class="new-price">210.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/4.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 004</a>
									</h3>
									<div class="price-box">
										<span class="new-price">120.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="#"><img src="assets/images/product/5.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 005</a>
									</h3>
									<div class="price-box">
										<span class="old-price">180.00</span> <span class="new-price">150.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/6.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 006</a>
									</h3>
									<div class="price-box">
										<span class="new-price">130.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/7.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 007</a>
									</h3>
									<div class="price-box">
										<span class="old-price">250.00</span> <span class="new-price">230.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							single-product-wrap start
							<div class="single-product-wrap">
								<div class="product-image">
									<a href="product-details.jsp"><img
										src="assets/images/product/8.jpg" alt=""></a>
									<div class="product-action">
										<a href="cart.jsp" class="add-to-cart"><i
											class="icon-handbag"></i></a> <a href="#" class="quick-view"
											data-toggle="modal" data-target="#exampleModalCenter"><i
											class="icon-shuffle"></i></a>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.jsp">Products Name 008</a>
									</h3>
									<div class="price-box">
										<span class="new-price">120.00</span>
									</div>
								</div>
							</div>
							single-product-wrap end
						</div>
					</div>
				</div>
				product-warpper start
			</div> -->
		</div>
		<!-- product-area end -->

		<!-- banner-area start -->
		<div class="banner-area section-pb">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<!-- single-banner start -->
						<div class="single-banner">
							<div class="banner-bg">
								<a href="publish-sale"><img src="assets/images/banner/1.jpg"
									alt=""></a>
							</div>
							<div class="banner-contet">
								<h3>发布二手</h3>
							</div>
						</div>
						<!-- single-banner end -->
					</div>
					<div class="col-lg-6  col-md-6">
						<!-- single-banner start -->
						<div class="single-banner s-mt-30">
							<div class="banner-bg">
								<a href="publish-buy"><img src="assets/images/banner/2.jpg"
									alt=""></a>
							</div>
							<div class="banner-contet">
								<h3>发布求购</h3>
							</div>
						</div>
						<!-- single-banner end -->
					</div>
				</div>
			</div>
		</div>
		<!-- banner-area end -->

		<!-- testimonial-area start -->
		<div class="testimonial-area testimonial-bg overlay section-ptb">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 offset-md-2 col-md-8 col-sm-12">
						<div class="testimonial-slider">
							<div class="testimonial-inner text-center">
								<div class="test-cont">
									<h1>安全</h1>
									<p>当面沟通，信息对称，确保安全。</p>
								</div>
							</div>
							<div class="testimonial-inner text-center">
								<div class="test-cont">
									<h1>快捷</h1>
									<p>同校交易，省去物流，不用等待。</p>
								</div>
							</div>
							<div class="testimonial-inner text-center">
								<div class="test-cont">
									<h1>简单</h1>
									<p>简单注册，简洁发布，一键到底。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- testimonial-area end -->

		<!-- secton-area start -->
		<div class="secton-area section-pt">
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
		<!-- secton-area end -->

		<!-- footer-area start -->
		<footer class="footer-area">
			<div class="footer-top pt--40 pb--40"></div>
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
									<li><a href="#"><i
											class="ion-social-instagram-outline"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- footer-area end -->

		<!-- Modal-wrapper start -->
		<div class="modal-wrapper">
			<div class="modal fade " id="exampleModalCenter">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-body">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<!-- modal-inner-area start -->
							<div class="modal-inner-area row">
								<div class="col-xl-6 col-lg-7 col-md-6">
									<div class="product-details-images">
										<div class="product_details_container">
											<!-- product_big_images start -->
											<div class="product_big_images-top">
												<div class="portfolio-full-image tab-content">
													<div role="tabpanel" class="tab-pane active" id="img-tab-5">
														<img src="assets/images/product-details/big-img/w1.jpg"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-6">
														<img src="assets/images/product-details/big-img/w2.jpg"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-7">
														<img src="assets/images/product-details/big-img/w3.jpg"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-8">
														<img src="assets/images/product-details/big-img/w4.jpg"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-9">
														<img src="assets/images/product-details/big-img/w3.jpg"
															alt="full-image">
													</div>
												</div>
											</div>
											<!-- product_big_images end -->

											<!-- Start Small images -->
											<ul
												class="product_small_images-bottom horizantal-product-active nav"
												role="tablist">
												<li role="presentation" class="pot-small-img active"><a
													href="#img-tab-5" role="tab" data-toggle="tab"> <img
														src="assets/images/product-details/small-img/1.jpg"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-6" role="tab" data-toggle="tab"> <img
														src="assets/images/product-details/small-img/2.jpg"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-7" role="tab" data-toggle="tab"> <img
														src="assets/images/product-details/small-img/3.jpg"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-8" role="tab" data-toggle="tab"> <img
														src="assets/images/product-details/small-img/4.jpg"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-9" role="tab" data-toggle="tab"> <img
														src="assets/images/product-details/small-img/3.jpg"
														alt="small-image">
												</a></li>
											</ul>
											<!-- End Small images -->
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-lg-5 col-md-6">
									<!-- product_details_info start -->
									<div class="product_details_info">
										<h2>Black Clock</h2>

										<!-- pro_details start -->
										<div class="pro_details">
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit, sed do eiusmod temf incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, nostr exercitation
												ullamco laboris nisi ut aliquip ex ea.</p>
										</div>
										<!-- pro_details end -->
										<div class="blog-date-categori">
											<ul>
												<li><a href="#"><i class="ion-ios-person"></i>徐同学</a></li>
												<li><a href="#"><i class="ion-ios-pricetags"></i>未认证</a></li>
											</ul>
										</div>

										<!-- pro_dtl_prize start -->
										<ul class="pro_dtl_prize">
											<li class="old_prize">$15.21</li>
											<li>$10.00</li>
										</ul>
										<!-- pro_dtl_prize end -->
										<!-- pro_dtl_color start-->
										<div class="product-quantity-action">
											<div class="prodict-statas">
												<span>学校：</span>
											</div>
											<div class="product-quantity">
												<p>厦门大学</p>
											</div>
										</div>
										<!-- pro_dtl_color end-->
										<!-- pro_dtl_size start -->
										<div class="product-quantity-action">
											<div class="prodict-statas">
												<span>交易地点：</span>
											</div>
											<div class="product-quantity">
												<p>邮寄</p>
											</div>
										</div>
										<!-- pro_dtl_size end -->
										<!-- product-quantity-action start -->
										<div class="product-quantity-action">
											<div class="prodict-statas">
												<span>手机：</span>
											</div>
											<div class="product-quantity">
												<p>18106937860</p>
											</div>
										</div>

										<div class="product-quantity-action">
											<div class="prodict-statas">
												<span>qq/微信：</span>
											</div>
											<div class="product-quantity">
												<p>1045356903</p>
											</div>
										</div>

										<!-- product-quantity-action end -->
										<!-- pro_dtl_btn start -->
										<ul class="pro_dtl_btn">
											<li><a href="cart.jsp" class="buy_now_btn">购买</a></li>
										</ul>
										<!-- pro_dtl_btn end -->
										<!-- pro_social_share start -->
										<div class="pro_social_share d-flex">
											<h2 class="title_2">Share :</h2>
											<ul class="pro_social_link">
												<li><a href="#"><i class="ion-social-twitter"></i></a></li>
												<li><a href="#"><i class="ion-social-tumblr"></i></a></li>
												<li><a href="#"><i class="ion-social-facebook"></i></a></li>
												<li><a href="#"><i
														class="ion-social-instagram-outline"></i></a></li>
											</ul>
										</div>
										<!-- pro_social_share end -->
									</div>
									<!-- product_details_info end -->
								</div>
							</div>
							<!-- modal-inner-area end -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal-wrapper end -->

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

	<script src="js/lb.js"></script>

</body>

</html>

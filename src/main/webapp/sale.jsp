<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html class="no-js" lang="en">
<link rel="stylesheet" href="<%=path%>/css/a-update.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/jquery.dialogbox.css">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>橙子校园二手交易网-二手</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->


<!-- CSS 
    ========================= -->

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<%=path%>/assets/css/bootstrap.min.css">

<!-- Icon Font CSS -->
<link rel="stylesheet"
	href="<%=path%>/assets/css/simple-line-icons.css">
<link rel="stylesheet" href="<%=path%>/assets/css/ionicons.min.css">

<!-- Plugins CSS -->
<link rel="stylesheet" href="<%=path%>/assets/css/plugins.css">

<!-- Main Style CSS -->
<link rel="stylesheet" href="<%=path%>/assets/css/style.css">

<!-- Modernizer JS -->
<script src="<%=path%>/assets/js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body>
	<nav class="top-right nav1" style="z-index: 10; margin-top: 15px;">
		<a href="<%=path%>/publish-sale" class="disc l3">
			<div>发布二手</div>
		</a> <a href="<%=path%>/publish-buy" class="disc l4">
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
										<li class="drodown-show"><a href="#">欢迎${sessionScope.uname}</a></li>
										<li class="drodown-show"><a
											href="<%=path%>/removeSession">退出登录</a></li>
									</c:if>
									<c:if test="${empty uname}">
										<li class="drodown-show"><a href="<%=path%>/sign-in.jsp">登录</a></li>
									</c:if>
									<li class="drodown-show"><a href="#">Language <i
											class="ion-ios-arrow-down"></i></a>
										<ul class="open-dropdown">
											<li class="active"><a href="#"><img
													src="<%=path%>/assets/images/icon/la-1.png" alt="">
													China </a></li>
											<li><a href="#"><img
													src="<%=path%>/assets/images/icon/la-2.jpg" alt="">
													English </a></li>
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
								<a href="<%=path%>/oneusergood?gouwu=zhuye"><img
									src="<%=path%>/assets/images/logo/logo.png" alt=""></a>
							</div>
						</div>
						<div class="col-lg-8 d-none d-lg-block">
							<div class="main-menu-area text-center">
								<nav class="main-navigation">
									<ul>
										<li class="active"><a
											href="<%=path%>/oneusergood?gouwu=zhuye">主页</a></li>
										<li><a href="<%=path%>/showgood">二手</a>
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
										<li><a href="<%=path%>/oneusergood?gouwu=buy">求购</a></li>
										<li><a href="<%=path%>/oneusergood">购物车</a></li>
										<li><a href="<%=path%>/oneusergood?gouwu=guanyu">关于我们</a></li>
										<li><a href="<%=path%>/oneusergood?gouwu=lianxi">联系我们</a></li>
									</ul>
								</nav>
							</div>
						</div>

						<div class="col-lg-2 col-md-7 col-7">
							<div class="right-blok-box d-flex">

								<div class="user-wrap">
									<a href="<%=path%>/oneusergood?gouwu=person"><i
										class="icon-user"></i></a>
								</div>

								<div class="shopping-cart-wrap">
									<a href="#"><i class="icon-handbag"></i> <!--<span id="cart-total">2</span>--></a>
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
														<a class="remove_from_cart"
															href="<%=path %>/delgood/${commodity.cid}"><i
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
					<h2 class="breadcrumb-title">二手</h2>
					<!-- breadcrumb-list start -->
					<ul class="breadcrumb-list">
						<li class="breadcrumb-item"><a
							href="<%=path%>/oneusergood?gouwu=zhuye">主页</a></li>
						<li class="breadcrumb-item active">二手</li>
					</ul>
					<!-- breadcrumb-list end -->
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb-area end -->

	<!-- main-content-wrap start -->
	<div class="main-content-wrap shop-page section-ptb">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-lg-1 order-2">
					<!-- shop-sidebar-wrap start -->
					<div class="shop-sidebar-wrap">
						<!-- shop-sidebar start -->
						<div class="shop-sidebar mb--30">
							<h4 class="title">所有分类</h4>
							<ul>
								<li><a href="<%=path%>/代步工具">代步工具<span>(${num1})</span></a></li>
								<li><a href="<%=path%>/手机电脑">手机电脑<span>(${num2})</span></a></li>
								<li><a href="<%=path%>/数码电器">数码电器<span>(${num3})</span></a></li>
								<li><a href="<%=path%>/衣鞋伞帽">衣鞋伞帽<span>(${num4})</span></a></li>
								<li><a href="<%=path%>/书籍教材">书籍教材<span>(${num5})</span></a></li>
								<li><a href="<%=path%>/体育健身">体育健身<span>(${num6})</span></a></li>
								<li><a href="<%=path%>/乐器器材">乐器器材<span>(${num7})</span></a></li>
								<li><a href="<%=path%>/其他">其他<span>(${num8})</span></a></li>

							</ul>
						</div>
						<!-- shop-sidebar end -->

						<!-- shop-sidebar start -->
						<div class="shop-sidebar mb--30">
<!-- 							<h4 class="title">价格区间</h4> -->
							<!-- filter-price-content start -->
<!-- 							<div class="filter-price-content">
								<form action="#" method="post">
									<div id="price-slider" class="price-slider"></div>
									<div class="filter-price-wapper">
										<div class="filter-price-cont">
											<span>价格：</span>
											<div class="input-type">
												<input type="text" id="min-price" readonly="" />
											</div>
											<span>—</span>
											<div class="input-type">
												<input type="text" id="max-price" readonly="" />
											</div>
											<a class="add-to-cart-button" href="#"> <span>选择</span>
											</a>
										</div>
									</div>
								</form>
							</div> -->
							<!-- filter-price-content end -->
						</div>
						<!-- shop-sidebar end -->

					</div>
					<!-- shop-sidebar-wrap end -->
				</div>
				<div class="col-lg-9 order-lg-2 order-1">
					<!-- shop-product-wrapper start -->
					<div class="shop-product-wrapper">
						<div class="row">
							<div class="col">
								<!-- shop-top-bar start -->
								<div class="shop-top-bar">
									<!-- product-view-mode start -->
									<div class="product-view-mode">
										<!-- shop-item-filter-list start -->
										<ul role="tablist" class="nav shop-item-filter-list">
											<li role="presentation" class="active"><a href="#grid"
												aria-controls="grid" role="tab" data-toggle="tab"
												class="active show" aria-selected="true"><i
													class="ion-ios-keypad-outline"></i></a></li>
											<li role="presentation"><a href="#list"
												aria-controls="list" role="tab" data-toggle="tab"><i
													class="ion-ios-list-outline"></i> </a></li>
										</ul>
										<!-- shop-item-filter-list end -->
									</div>
									<!-- product-view-mode end -->
									<!-- product-short start -->
									<div class="product-short">

										<div class="language-currency-wrapper">
											<ul>
												<li class="drodown-show"><a href="#"
													style="color: black;">时间 <i class="ion-ios-arrow-down"></i></a>
													<ul class="open-dropdown">
														<li class="active"><a
															href="<%=path %>/sorttimedown/${pm.list[0].cclassification}">
																从近到远 </a></li>
														<li><a
															href="<%=path %>/sorttimeup/${pm.list[0].cclassification}">
																从远到近 </a></li>
													</ul></li>

												<li class="drodown-show"><a href="#"
													style="color: black;">价格 <i class="ion-ios-arrow-down"></i></a>
													<ul class="open-dropdown">
														<li class="active"><a
															href="<%=path %>/sortpriceup/${pm.list[0].cclassification}">
																从低到高 </a></li>
														<li><a
															href="<%=path %>/sortpricedown/${pm.list[0].cclassification}">
																从高到低 </a></li>
													</ul></li>
											</ul>
										</div>


										<%--   <a href="<%=path %>/sorttime/${goods[0].cclassification}" onclick="sorttime()">
                                         <p style="display: inline-block;float: left;">时间</p>
                                            <div id="d1" style="display: inline-block;float: left;position: absolute;left: 810px"><img src="<%=path %>/image/箭头(3).png" style="width: 20px;height: 20px;display: inline-block;float: left;"></div>
                                           <div id="d2" style="display: inline-block;float: left;position: absolute;left: 810px;display: none;"><img src="<%=path %>/image/箭头(2).png" style="width: 20px;height: 20px;display: inline-block;float: left;"></div>       
                                                   </a>
                                        
                                        <a href="<%=path %>/sortprice/${goods[0].cclassification}" onclick="sortprice()">
                                        <p style="display: inline-block;float: left;">价格</p>
                                         <div id="d3" style="display: inline-block;float: left;position: absolute;left: 850px"><img src="<%=path %>/image/箭头(3).png" style="width: 20px;height: 20px;display: inline-block;float: left;"></div>
                                         <div id="d4" style="display: inline-block;float: left;position: absolute;left: 850px;display: none;"><img src="<%=path %>/image/箭头(2).png"  style="width: 20px;height: 20px;display: inline-block;float: left;"></div>
                                         
                                         </a> --%>
									</div>
									<!-- product-short end -->
								</div>
								<!-- shop-top-bar end -->
							</div>
						</div>

						<!-- shop-products-wrap start -->
						<div class="shop-products-wrap">
							<div class="tab-content">
								<div id="grid" class="tab-pane fade active show" role="tabpanel">
									<div class="shop-product-wrap">
										<div class="row">

											<!-- single-product-wrap start -->

											<c:forEach items="${pm.list}" var="commodity"
												varStatus="status">
												<div class="col-lg-4 col-md-4 col-sm-6">
													<div class="single-product-wrap">

														<div class="product-image">

															<a href="#"><img src="<%=path %>/${commodity.cimage}"></a>

															<div class="product-action">
																<a href="<%=path %>/useraddgoods/${commodity.cid}"
																	class="add-to-cart" onclick="showmsg()"><i
																	class="icon-handbag"></i></a> <a href="#"
																	class="quick-view" data-toggle="modal"
																	data-target="#exampleModalCenter"
																	onclick="detail(this,${commodity.cid})"><i
																	class="icon-shuffle"></i></a>

																<div id="type-dialogBox"></div>
															</div>
														</div>
														<div class="product-content">
															<h3>
																<a href="<%=path%>/product-details.jsp">${commodity.cname}</a>
															</h3>
															<div class="price-box">
																<span class="old-price">￥${commodity.cprice*1.5}</span> <span
																	class="new-price">￥${commodity.cprice}</span>
															</div>
														</div>

													</div>
												</div>
											</c:forEach>
											<!-- single-product-wrap end -->
											<%-- </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[1].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[1].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="new-price">${goods[1].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                               <!--  single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[2].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[2].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="old-price">230.00</span>
                                                            <span class="new-price">${goods[2].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                               <!--  single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[3].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[3].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="new-price">${goods[3].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                               <!--  single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                             <!--    single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="#"><img src="${goods[4].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[4].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="old-price">180.00</span>
                                                            <span class="new-price">${goods[4].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                              <!--   single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                               <!--  single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[5].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[5].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="new-price">${goods[5].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                             <!--    single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                             <!--    single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[6].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[6].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="old-price">250.00</span>
                                                            <span class="new-price">${goods[6].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                              <!--   single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                               <!--  single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[7].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[7].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="new-price">${goods[7].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                             <!--    single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="${goods[8].cimage}" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">${goods[8].cname}</a></h3>
                                                        <div class="price-box">
                                                            <span class="new-price">${goods[8].cprice}</span>
                                                        </div>
                                                    </div>
                                                </div> --%>
											<!-- single-product-wrap end -->

										</div>
									</div>
								</div>
								<div id="list" class="tab-pane fade" role="tabpanel">
									<div class="shop-product-list-wrap">
										<c:forEach items="${pm.list}" var="commodity"
											varStatus="status">
											<div class="row product-layout-list">
												<div class="col-lg-4 col-md-5">
													<!-- single-product-wrap start -->
													<div class="single-product-wrap">
														<div class="product-image">
															<a href="#"><img src="<%=path %>/${commodity.cimage}"
																alt=""></a>
															<div class="product-action">
																<a href="<%=path %>/useraddgoods/${commodity.cid}"
																	class="add-to-cart"><i class="icon-handbag"></i></a> <a onclick="(this,${commodity.cid})"
																	href="#" class="quick-view" data-toggle="modal"
																	data-target="#exampleModalCenter"><i
																	class="icon-shuffle"></i></a>
															</div>
														</div>
													</div>

													<!-- single-product-wrap end -->
												</div>
												<div class="col-lg-8 col-md-7">
													<div class="product-content text-left">
														<h3>
															<a href="<%=path%>/product-details.jsp">${commodity.cname}</a>
														</h3>
														<div class="price-box">
															<span class="new-price">￥${commodity.cprice}</span> <span
																class="old-price">￥${commodity.cprice*1.5}</span>
														</div>
														<p>${commodity.cinfo}</p>
													</div>
												</div>
											</div>
										</c:forEach>
										<%-- <div class="row product-layout-list">
                                            <div class="col-lg-4 col-md-5">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="<%=path %>/product-details.jsp"><img src="<%=path %>/assets/images/product/3.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="<%=path %>/product-details.jsp">Products Name 003</a></h3>
                                                    <div class="price-box">
                                                        <span class="new-price">121.00</span>
                                                        <span class="old-price">132.00</span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis pariatur ipsa sint consectetur velit maiores sit voluptates aut tempora totam, consequatur iste quod suscipit natus. Explicabo facere neque adipisci odio.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-4 col-md-5">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="<%=path %>/product-details.jsp"><img src="<%=path %>/assets/images/product/4.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="<%=path %>/product-details.jsp">Products Name 004</a></h3>
                                                    <div class="price-box">
                                                        <span class="new-price">111.00</span>
                                                        <span class="old-price">162.00</span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis pariatur ipsa sint consectetur velit maiores sit voluptates aut tempora totam, consequatur iste quod suscipit natus. Explicabo facere neque adipisci odio.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-4 col-md-5">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="<%=path %>/product-details.jsp"><img src="<%=path %>/assets/images/product/6.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="<%=path %>/product-details.jsp">Products Name 005</a></h3>
                                                    <div class="price-box">
                                                        <span class="new-price">89.00</span>
                                                        <span class="old-price">99.00</span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis pariatur ipsa sint consectetur velit maiores sit voluptates aut tempora totam, consequatur iste quod suscipit natus. Explicabo facere neque adipisci odio.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-4 col-md-5">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="<%=path %>/product-details.jsp"><img src="<%=path %>/assets/images/product/8.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single-product-wrap end -->
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="<%=path %>/product-details.jsp">Products Name 008</a></h3>
                                                    <div class="price-box">
                                                        <span class="new-price">86.00</span>
                                                        <span class="old-price">97.00</span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis pariatur ipsa sint consectetur velit maiores sit voluptates aut tempora totam, consequatur iste quod suscipit natus. Explicabo facere neque adipisci odio.</p>
                                                </div>
                                            </div>
                                        
                                    </div> --%>
									</div>
								</div>
							</div>
							<!-- shop-products-wrap end -->

							<!-- paginatoin-area start -->
							<div class="paginatoin-area">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<ul class="pagination-box">
											<li><c:if test="${g==1}">
													<a class="Previous" href="showgood">首页</a>
												</c:if> <c:if test="${g==2}">
													<a class="Previous" href="${pm.list[0].cclassification}">首页</a>
												</c:if></li>
											<li><c:if test="${pm.hasPreviousPage}">
													<c:if test="${g==1}">
														<a class="Previous" href="showgood?pageNo=${pm.prePage}">上一页</a>
													</c:if>
													<c:if test="${g==2}">
														<a class="Previous"
															href="${pm.list[0].cclassification}?pageNo=${pm.prePage}">上一页</a>
													</c:if>
												</c:if></li>
											<li class="active"><c:if test="${pm.hasPreviousPage}">
													<c:if test="${g==1}">
														<a href="showgood?pageNo=${pm.prePage}">${pm.prePage}</a>
													</c:if>
													<c:if test="${g==2}">
														<a
															href="${pm.list[0].cclassification}?pageNo=${pm.prePage}">${pm.prePage}</a>
													</c:if>

												</c:if></li>
											<li><span>${pm.pageNum}</span></li>
											<li><c:if test="${pm.hasNextPage}">
													<c:if test="${g==1}">
														<a href="showgood?pageNo=${pm.nextPage}">${pm.nextPage}</a>
													</c:if>

													<c:if test="${g==2}">
														<a
															href="${pm.list[0].cclassification}?pageNo=${pm.nextPage}">${pm.nextPage}</a>
													</c:if>

												</c:if></li>


											<li><c:if test="${pm.hasNextPage}">
													<c:if test="${g==1}">
														<a class="Next" href="showgood?pageNo=${pm.nextPage}">下一页</a>
													</c:if>
													<c:if test="${g==2}">
														<a class="Next"
															href="${pm.list[0].cclassification}?pageNo=${pm.nextPage}">下一页</a>
													</c:if>
												</c:if></li>

											<li><c:if test="${g==1}">
													<a href="showgood?pageNo=${pm.pages}">尾页</a>
												</c:if> <c:if test="${g==2}">
													<a href="${pm.list[0].cclassification}?pageNo=${pm.pages}">尾页</a>
												</c:if></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- paginatoin-area end -->
						</div>
						<!-- shop-product-wrapper end -->
					</div>
				</div>
			</div>
		</div>
		<!-- main-content-wrap end -->

		<!-- footer-area start -->
<!-- 		<footer class="footer-area">
			<div class="footer-top pt--40 pb--100">
				<div class="container">
					<div class="row">

						<div class="col-lg-6">
							<div class="instagram-wrapper">
								<div class="instaram-title text-center"></div>
								<div class="instagram-warp instagram-slider row">
									<div class="col-lg-6">
										<div class="single-instagram">
											<a href="#"><img
												src="<%=path%>/assets/images/instagram/1.jpg" alt=""></a>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="single-instagram">
											<a href="#"><img
												src="<%=path%>/assets/images/instagram/2.jpg" alt=""></a>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="single-instagram">
											<a href="#"><img
												src="<%=path%>/assets/images/instagram/1.jpg" alt=""></a>
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
		</footer> --!>
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
														<img
															id="i5"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-6">
														<img
															id="i6"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-7">
														<img
															id="i7"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-8">
														<img
															id="i8"
															alt="full-image">
													</div>
													<div role="tabpanel"
														class="tab-pane product-video-position" id="img-tab-9">
														<img
															src="<%=path%>/assets/images/product-details/big-img/w3.jpg"
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
														id="i1"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-6" role="tab" data-toggle="tab"> <img
														id="i2"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-7" role="tab" data-toggle="tab"> <img
														id="i3"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-8" role="tab" data-toggle="tab"> <img
														id="i4"
														alt="small-image">
												</a></li>
												<li role="presentation" class="pot-small-img"><a
													href="#img-tab-9" role="tab" data-toggle="tab"> <img
														src="/assets/images/product-details/small-img/3.jpg"
														alt="small-image">
												</a></li>
											</ul>
											<!-- End Small images -->
										</div>
									</div>
								</div>
								<!-- 商品名称 -->
								<div class="col-xl-6 col-lg-5 col-md-6">
									<!-- product_details_info start -->
									<div class="product_details_info">
										<h2 id="h1"></h2>
										<!-- pro_rating start -->
										<div class="pro_rating d-flex">
											<ul class="product-rating d-flex">
												<li><span class="icon-star"></span></li>
												<li><span class="icon-star"></span></li>
												<li><span class="icon-star"></span></li>
												<li><span class="icon-star"></span></li>
												<li><span class="icon-star"></span></li>
											</ul>
											<!-- 商品分类 -->
											<span id="s1" class="rat_qun"> </span>
										</div>
										<!-- pro_rating end -->
										<!-- pro_details start -->
										<div class="pro_details">
											<!--商品介绍  -->
											<p id="p1"></p>
										</div>
										<!-- pro_details end -->
										<!-- pro_dtl_prize start -->
										<ul class="pro_dtl_prize">
											<li class="old_prize" id="l6"></li>
											<!-- 商品价格 -->
											<li id="l1">$10.00</li>
										</ul>
										<!-- pro_dtl_prize end -->
										<!-- pro_dtl_color start-->
										<div class="pro_dtl_color">
											<!-- 发布日期 -->
											<h2 id="h2" class="title_2"></h2>

										</div>
										<!-- pro_dtl_color end-->
										<!-- pro_dtl_size start -->
										<div class="pro_dtl_size">
											<!-- 认证方式 -->
											<h2 id="h3" class="title_2"></h2>

										</div>
										<!-- pro_dtl_size end -->
										<!-- product-quantity-action start -->
										<div class="product-quantity-action">
											<!-- 交易地点 -->
											<div class="prodict-statas">
												<span id="s2"></span>
											</div>
											<div class="product-quantity">
												<form action="#">
													<div class="product-quantity">
														<div class="cart-plus-minus"></div>
													</div>
												</form>
											</div>
										</div>

										<div class="product-quantity-action">
											<!-- 学校 -->
											<div class="prodict-statas">
												<span id="s3"></span>
											</div>
											<div class="product-quantity">
												<form action="#">
													<div class="product-quantity">
														<div class="cart-plus-minus"></div>
													</div>
												</form>
											</div>
										</div>

										<div class="product-quantity-action">
											<div class="prodict-statas">
												<span id="s4"></span>
											</div>
											<div class="product-quantity">
												<form action="#">
													<div class="product-quantity">
														<div class="cart-plus-minus"></div>
													</div>
												</form>
											</div>
										</div>

										<div class="product-quantity-action">
											<!--  电话号码  -->
											<div class="prodict-statas">
												<span id="s4"></span>
											</div>
											<div class="product-quantity">
												<form action="#">
													<div class="product-quantity">
														<div class="cart-plus-minus"></div>
													</div>
												</form>
											</div>
										</div>

										<div class="product-quantity-action">
											<!--  qq或者微信  -->
											<div class="prodict-statas">
												<span id="s5"></span>
											</div>
											<div class="product-quantity">
												<form action="#">
													<div class="product-quantity">
														<div class="cart-plus-minus"></div>
													</div>
												</form>
											</div>
										</div>

										<!-- product-quantity-action end -->
										<!-- pro_dtl_btn start -->
										<ul class="pro_dtl_btn">
											<li><a id="a1" class="buy_now_inbtn">买！</a></li>
											<li><a href="#"><i class="ion-heart"></i></a></li>
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
	<script src="<%=path%>/assets/js/vendor/jquery-1.12.0.min.js"></script>
	<!-- Popper JS -->
	<script src="<%=path%>/assets/js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
	<!-- Plugins JS -->
	<script src="<%=path%>/assets/js/plugins.js"></script>
	<!-- Ajax Mail -->
	<script src="<%=path%>/assets/js/ajax-mail.js"></script>
	<!-- Main JS -->
	<script src="<%=path%>/assets/js/main.js"></script>

	<script src="js/demo.js"></script>

	<script src="<%=path%>/js/jquery-2.1.0.min.js" type="text/javascript"
		charset="utf-8"></script>
</body>
<script type="text/javascript" defer="defer">
	function detail(node, cid) {
		$.ajax({
			type : "post",
			url : "<%=path%>/onegood/" + cid,
			success : function(data) {

				var time = data.crelease;
				var transTime = new Date(time);
				$("#h1").html(data.cname);
				$("#s1").html(data.cclassification);
				$("#p1").html(data.cinfo);
				$("#l1").html('￥'+data.cprice);
				$("#h2").html(transTime.toLocaleDateString() + ' ' + transTime.toTimeString().substring(0, 8));
				$("#h3").html(data.ccertification);
				$("#s2").html(data.clocation);
				$("#s3").html(data.cschool);
				$("#s4").html(data.ctel);
				$("#s5").html(data.cqqorweixin);
				$("#l6").html('￥'+data.cprice*1.5);
				var c = data.cid;
				var i = "<%=path%>/useraddgoods/" + c;
                var i1=data.cimage;
                var i2= "<%=path%>/" + i1;
                $("#i1").attr("src", i2);
                $("#i2").attr("src", i2);
                $("#i3").attr("src", i2);
                $("#i4").attr("src", i2);
                 $("#i5").attr("src", i2);
                $("#i6").attr("src", i2);
                $("#i7").attr("src", i2);
                $("#i8").attr("src", i2);
				$("#a1").attr("href", i);


			}
		})

	}
</script>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="js/jquery.dialogBox.js"></script>
<script type="text/javascript">

	function showmsg() {
		alert("商品添加到购物车成功");
	}
</script>
</html>

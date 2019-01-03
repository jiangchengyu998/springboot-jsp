<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>橙子校园二手交易网-个人信息</title>
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
									<a href="#"><i class="icon-handbag"></i></a>
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
						<h2 class="breadcrumb-title">个人信息</h2>
						<!-- breadcrumb-list start -->
						<ul class="breadcrumb-list">
							<li class="breadcrumb-item"><a
								href="oneusergood?gouwu=zhuye">主页</a></li>
							<li class="breadcrumb-item active">个人信息</li>
						</ul>
						<!-- breadcrumb-list end -->
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area end -->

		<!-- main-content-wrap start -->
		<div class="main-content-wrap section-ptb lagin-and-register-page">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-md-12 ml-auto mr-auto">
						<div class="login-register-wrapper">
							<!-- login-register-tab-list start -->
							<div class="login-register-tab-list nav">
								<a class="active" data-toggle="tab" href="#lg1">
									<h4>资料</h4>
								</a> <a data-toggle="tab" href="#lg2">
									<h4>发布</h4>
								</a> <a data-toggle="tab" href="#lg3">
									<h4>求购</h4>
								</a> <a data-toggle="tab" href="#lg4">
									<h4>订单</h4>
								</a> <a data-toggle="tab" href="#lg5">
									<h4>认证</h4>
								</a>
							</div>
							<!-- login-register-tab-list end -->
							<div class="tab-content">
								<div id="lg1" class="tab-pane active">
									<div class="your-order-table table-responsive">
										<c:if test="${not empty uname}">
											<table>
												<tbody>
													<c:forEach items="${user}" var="userinfo">
														<tr>
															<td class="user_name" style="font-weight:800">用户名</td>
															<td class="username">${userinfo.uname}</td>
														</tr>
														<tr class="cart_item">
															<td class="user_sc" style="font-weight:800">学校</td>
															<td class="usersc">${userinfo.school}</td>
														</tr>
														<tr class="cart_item">
															<td class="user_email" style="font-weight:800">邮箱</td>
															<td class="useremail">${userinfo.email}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</c:if>
									</div>
									<!-- your-order-table end -->
								</div>
								<div id="lg2" class="tab-pane">
									<!-- shop-products-wrap start -->
									<div class="shop-products-wrap">
										<div class="tab-content">
											<div id="grid" class="tab-pane fade active show"
												role="tabpanel">
												<div class="shop-product-wrap">
													<div class="row">
														<c:if test="${not empty uname}">
															<c:forEach items="${sale}" var="commodity">
																<div class="col-lg-4 col-md-4 col-sm-6">
																	<!-- single-product-wrap start -->
																	<div class="single-product-wrap">
																		<div class="product-image">
																			<a href="#"><img src="${commodity.cimage}" alt=""></a>
																			
																		</div>
																		<div class="product-content">
																			<h3>
																				<a href="product-details.jsp">${commodity.cname}</a>
																			</h3>
																			<div class="price-box">
																				<span class="old-price">￥${commodity.cprice*1.5}</span>
																				<span class="new-price">￥${commodity.cprice}</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-wrap end -->
																</div>
															</c:forEach>
														</c:if>
														<!-- <div class="col-lg-4 col-md-4 col-sm-6">
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/2.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">Products Name 002</a></h3>
                                                        <div class="price-box">
                                                            <span class="new-price">120.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6">
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/3.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.jsp">Products Name 003</a></h3>
                                                        <div class="price-box">
                                                            <span class="old-price">230.00</span>
                                                            <span class="new-price">210.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div id="list" class="tab-pane fade" role="tabpanel">
                                    <div class="shop-product-list-wrap">
                                        <div class="row product-layout-list">
                                            <div class="col-lg-4 col-md-5">
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/2.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="product-details.jsp">Products Name 002</a></h3>
                                                    <div class="price-box">
                                                        <span class="new-price">120.00</span>
                                                        <span class="old-price">130.00</span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis pariatur ipsa sint consectetur velit maiores sit voluptates aut tempora totam, consequatur iste quod suscipit natus. Explicabo facere neque adipisci odio.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-4 col-md-5">
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/3.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="product-details.jsp">Products Name 003</a></h3>
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
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/4.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="product-details.jsp">Products Name 004</a></h3>
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
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/6.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="product-details.jsp">Products Name 005</a></h3>
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
                                                single-product-wrap start
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="product-details.jsp"><img src="assets/images/product/8.jpg" alt=""></a>
                                                        <div class="product-action">
                                                            <a href="#" class="wishlist"><i class="icon-heart"></i></a>
                                                            <a href="#" class="add-to-cart"><i class="icon-handbag"></i></a>
                                                            <a href="#" class="quick-view" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                single-product-wrap end
                                            </div>
                                            <div class="col-lg-8 col-md-7">
                                                <div class="product-content text-left">
                                                    <h3><a href="product-details.jsp">Products Name 008</a></h3>
                                                    <div class="price-box">
                                                        <span class="new-price">86.00</span>
                                                        <span class="old-price">97.00</span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis pariatur ipsa sint consectetur velit maiores sit voluptates aut tempora totam, consequatur iste quod suscipit natus. Explicabo facere neque adipisci odio.</p>
                                                </div>
                                            </div> -->
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- shop-products-wrap end -->

									<!-- paginatoin-area start -->

									<!-- paginatoin-area end -->

								</div>

								<div id="lg3" class="tab-pane">
									<!-- blog-wrap start -->
									<div class="blog-wrap">
										<!-- single-blog-area start -->
										<c:if test="${not empty uname}">
											<c:forEach items="${buy}" var="purchase">
												<div class="single-blog-area">
													<div class="blog-image">
														<a href="#"><img src="${purchase.pimage}" alt=""></a>
													</div>
													<div class="blog-contend">
														<h3>
															<a href="#">${purchase.pname}</a>
														</h3>
														<div class="blog-date-categori">
															<ul>
																<li><a href="#"><i class="ion-ios-person"></i>${purchase.ptruename}</a></li>
																<li><a href="#"><i class="ion-ios-pricetags"></i>${purchase.pcertification}</a></li>
																<li>时间：<fmt:formatDate
																		pattern="yyyy-MM-dd HH:mm:ss"
																		value="${purchase.prelease}" type="both" />
																</li>
																<br />
																<li>价格：￥${purchase.pprice}</li>
																<br />
																<li>学校：${purchase.pschool}</li>
																<br />
																<li>手机：${purchase.ptel}</li>
																<br />
																<li>qq/微信：${purchase.pqqorweixin}</li>
																<br />
																<li>交易地点：${purchase.plocation}</li>
															</ul>
														</div>
														<p>${purchase.pinfo}</p>
													</div>
												</div>
											</c:forEach>
										</c:if>
										<!-- single-blog-area end -->

										<!-- paginatoin-area start -->

										<!-- paginatoin-area end -->

									</div>
									<!-- blog-wrap end -->
								</div>

								<div id="lg4" class="tab-pane">
									<div class="your-order-table table-responsive">
										<c:if test="${not empty uname}">

											<table>
												<c:forEach items="#{order}" var="orderlist">
													<c:forEach items="${order1}" var="commodity">
												<tbody>
													

														<tr>
															<td class="user_name" style="font-weight:800">详细地址</td>
															<td class="username">名字：${orderlist.name}</td>
															<td class="username">地址：${orderlist.address}</td>
															<td class="username">手机：${orderlist.otel}</td>
															<td class="username">qq/微信：${orderlist.oqqorweixin}</td>



														</tr>

														

															<tr class="cart_item">
																<td class="user_sc" style="font-weight:800">你的订单</td>
																<td class="usersc">商品名：${commodity.cname}</td>
																<td class="usersc">商品价格：￥${commodity.cprice}</td>
															</tr>
														
													
												</tbody>
												</c:forEach>
</c:forEach>
											</table>
										</c:if>

									</div>
									<!-- your-order-table end -->
								</div>

								<div id="lg5" class="tab-pane">
									<div class="your-order-table table-responsive">
										<table>
											<tbody>
												<tr>
													<td class="user_iden" style="font-weight:800">认证</td>
													<td class="useriden" style="font-weight:800">未认证</td>
												</tr>
												<tr>
													<td class="user_iden">洪佳辉</td>
													<td class="useriden"></td>
												</tr>
												<tr>
													<td class="user_iden">徐志龙</td>
													<td class="useriden"></td>
												</tr>
												<tr>
													<td class="user_iden">梁晨</td>
													<td class="useriden"></td>
												</tr>

											</tbody>

										</table>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- main-content-wrap end -->

			<!-- secton-area start -->
			<!-- 			<div class="secton-area section-pt">
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
			</div> -->
			<!-- secton-area end -->

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

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>橙子校园二手交易网-忘记密码</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<ul class="menu">
					<li><a href="oneusergood?gouwu=zhuye"><img
							src="assets/images/logo/logo.png" alt=""></a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-4">


				<!-- Start Sign In Form -->
				<form action="#" class="fh5co-form animate-box"
					data-animate-effect="fadeIn">
					<h2>忘记密码</h2>
					<div class="form-group">
						<div class="alert alert-success" role="alert">你的邮箱将收到信息。</div>
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">邮箱</label> <input type="email"
							class="form-control" id="email" name="email" placeholder="邮箱"
							autocomplete="off"> <span id="showpass"></span>
					</div>
					<div class="form-group">
						<p>
							<a href="sign-in.jsp">登录</a> or <a href="sign-up.jsp">注册</a>
						</p>
					</div>
					<div class="form-group">
						<input type="button" id="bttime" value="发送"
							class="btn btn-primary" onclick="showtime()">
					</div>
				</form>
				<!-- END Sign In Form -->


			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

</body>

<script type="text/javascript">
	function showtime() {
		$.ajax({
			type : "GET",
			url : "showpass",
			data : {
				email : $("input[name='email']").val()
			},
			success : function(pass) {
				if (pass != null) {
					$("#showpass").html(pass + "-----密码存在5秒钟，1分钟后可进行重复操作");
					$("#showpass").delay(5000).hide(0);
				} else {
					$("#showpass").html("该邮箱没有被注册过");
					$("#showpass").delay(5000).hide(0);
				}
			}
		})


		
    var i = 60;
		setInterval(function() {
        

			if (i >= 0&&i<=60) {
				$("#bttime").val(i);
				$("#bttime").attr("disabled", true);
				
				
			} else if(i<0) {

				$("#bttime").val("发送");
				$("#bttime").attr("disabled", false);

			}
			i--;
		}, 1000);


	}
</script>
</html>


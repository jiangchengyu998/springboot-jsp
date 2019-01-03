<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>橙子校园二手交易网-注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

		<script src="js/jquery-2.1.0.min.js" type="text/javascript" charset="utf-8"></script>

  </head>
  
  <body>


<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
						<li><a href="oneusergood?gouwu=zhuye"><img src="assets/images/logo/logo.png" alt=""></a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="register" class="fh5co-form animate-box" data-animate-effect="fadeIn" method="post">
						<h2>注册</h2>
						<div class="form-group">
							<div class="alert alert-success" role="alert">你的账户信息将被保存。</div>
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">用户名</label>
							<input type="text" class="form-control" id="name" name="uname" placeholder="用户名"
							 autocomplete="off" onmouseout="checkuname()">
							 <span id="erroruname"></span>
						</div>
						<div class="form-group">
                            <select style="width: 100%;" name="school">
                              <option>选择学校...</option>
                              <option value="集美大学">集美大学</option>
							  <option value="集美大学诚毅学院">集美大学诚毅学院</option>
							  <option value="华侨大学">华侨大学</option>
							  <option value="厦门大学">厦门大学</option>
							  <option value="厦门工学院">厦门工学院</option>
							  <option value="厦门理工学院">厦门理工学院</option>
                            </select>
						</div>
						<div class="form-group">
							<label for="email" class="sr-only">邮箱</label>
							<input type="email" class="form-control" id="email" name="email" placeholder="邮箱"
							  autocomplete="off" onmouseout="checkemail()">
							<span id="erroremail"></span>
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" name="upass" placeholder="密码"
							 autocomplete="off" onmouseout="checkupass()">
						    <span id="errorupass"></span>
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">再输一次</label>
							<input type="password" class="form-control" id="re-password" name="upass1" placeholder="再输一次"
							 autocomplete="off"  onmouseout="repeatupass()">
						    <span id="errorupass1"></span>
						</div>
						<div class="form-group">
							<p>有账号？ <a href="sign-in.jsp">登录</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="注册" class="btn btn-primary">
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
  function checkuname(){
    		$.ajax({
    			type:"GET",
    			url:"checkuname/"+$("input[name='uname']").val(),
    			success:function(flag1){
    				if(flag1=="true"){
    				$("#erroruname").html("用户名已经存在，请使用其他用户名");
    				}else{
    				$("#erroruname").html("");
    				}
    			}
    		})
    	}
  function checkupass(){
    		$.ajax({
    			type:"GET",
    			url:"checkupass/"+$("input[name='upass']").val(),
    			success:function(flag){
                    
    				if(flag=="0"){
    				$("#errorupass").html("");
    				$("#errorupass").html("密码长度至少为8位");
    				}
    				else if(flag=="1"){
    				$("#errorupass").html("");
    				$("#errorupass").html("密码强度:低");
    				}
    				else if(flag=="2"){
    				$("#errorupass").html("");
    				$("#errorupass").html("密码强度:中");
    				}
    				else if(flag=="3"){
    				$("#errorupass").html("");
    				$("#errorupass").html("密码强度:高");
    				}
    				
    				
    				
    			}
    		})
    	}
    	function repeatupass(){
    		if($("input[name='upass']").val()!=$("input[name='upass1']").val()){
    		  $("#errorupass1").html("两次密码输入不相同，请重新输入");
    		}else{
    		 $("#errorupass1").html("");
    		}
    	}
  
       function checkemail(){
    		$.ajax({
    			type:"GET",
    			url:"checkemail/"+$("input[name='email']").val(),
    			success:function(flag){
                    
                  
    				if(flag=="success"){
    				$("#erroremail").html("该邮箱已经被注册，请使用其他邮箱");
    				}else{
    				$("#erroremail").html("");
    				}
    			}
    		})
    	}
  </script>
</html>

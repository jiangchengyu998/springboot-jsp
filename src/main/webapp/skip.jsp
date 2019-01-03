<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3; url='sign-in.jsp'">
<title>橙子校园二手交易网</title>

<link type="text/css" rel="stylesheet" href="css/skip.css">

</head>

<body>

<div class="counter">
    <h1>请先登录</h1>
	<div class="nums">
		<span class="in">3</span>
		<span>2</span>
		<span>1</span>
	</div>
</div>

<script type="text/javascript" src="js/skip.js"></script>
</body>
</html>
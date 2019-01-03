<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/3
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>转账</title>
</head>
<body>

<form action="/account/transfer" method="post" style="text-align: center">
    <input type="number" name="to"/>
    <input type="number" name="from"/>
    <input type="number" name="money"/>
    <input type="submit" value="提交"/>
</form>

</body>
</html>

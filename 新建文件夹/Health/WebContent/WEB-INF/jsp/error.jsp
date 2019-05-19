<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>错误页面</title>
<style type="text/css">
body{
background:url(4.jpg)no-repeat;
background-size:100%;
}
h1{
color: red;
position:relative;
top:80px;
}
</style>
</head> 
<body style="background:url(${pageContext.request.contextPath}/statics/images/3.jpg);background-size:cover;">
<h1 align="center">对不起，您输入的账号或密码错误，请重新输入！</h1>
<h1 align="center">Sorry,the number or password you entered is wrong,</h1>
<h1 align="center">please enter again!</h1>
</body>
</html>
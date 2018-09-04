<%@page import="java.util.ArrayList"%>
<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>
	
	<h1>登录</h1>

	<div class="container w3layouts agileits">
		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			<form action="${pageContext.request.contextPath }/login.action" method="post">
				<input type="text" Name="userName" placeholder="用户名" required="">
				<input type="password" Name="password" placeholder="密码" required="">
				
				<div class="am-form-group am-cf">
          <p style="color: white;">类别：</p>
        	<div class="am-btn-group am-btn-group-xs">
        <select name="type" >
        	
          <option value="student">学生</option>
         <option value="teacher">老师</option>
         <option value="parent">家长</option>
         <option value="admin">管理员</option>
        </select>
      </div>
        </div>
				<div class="send-button w3layouts agileits">
				
					<input type="submit" value="登 录">
					<input type="button" value="注册 " onclick="location.href='register.jsp'">
				
			</div>
			</form>
			
			
			<a href="#">记住密码?</a>
			<div class="social-icons w3layouts agileits">
				<p>- 其他方式登录 -</p>
				<ul>
					<li class="qq"><a href="#">
					<span class="icons w3layouts agileits"></span>
					<span class="text w3layouts agileits">QQ</span></a></li>
					<li class="weixin w3ls"><a href="#">
					<span class="icons w3layouts"></span>
					<span class="text w3layouts agileits">微信</span></a></li>
					<li class="weibo aits"><a href="#">
					<span class="icons agileits"></span>
					<span class="text w3layouts agileits">微博</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<div class="clear"></div>
		

		<div class="clear"></div>
	
	</div>

	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家长注册</title>

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

	<h1>家长注册</h1>

	<div class="container w3layouts agileits">

		
		<div class="register w3layouts agileits">
			<h2>家 长 注 册</h2>
			<form action="${pageContext.request.contextPath }/addUser.action" method="post">
				<input type="text" name="userName" placeholder="用户名" required="">
				<input type="password" name="password" placeholder="密码" required="">
				<input type="text" name="parentName" placeholder="姓名" required="">
				<input type="text" name="studentIdCard" placeholder="学生IDCard" required="">
				<input type="text" name="telephone" placeholder="手机号码" required="">
				<div class="send-button w3layouts agileits">
				
					<input type="submit" value="注册">
				
			</div>
			</form>
			
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>

	
</body>
<!-- //Body -->

</html>
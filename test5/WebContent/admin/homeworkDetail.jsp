<%@page import="schoolhome.core.po.Homework"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>学生成绩情况</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>
</head>
<body>







</head>

<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1>欢迎来到学生页面</h1></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   


      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    
    <div class="sideMenu">

    </div>
    <!-- sideMenu End --> 
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script> 

    
    
    
    
    
    
    

      
       

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				<li><button type="button" onclick="window.location.href='/test5/teacherInformation.action'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页 </li>
				<!-- <li><button type="button" onclick="window.location.href='/test5/adminQueryTeacherHomework.actoin'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回 </li>
				 -->
				
			</ul>

       

	
</div>
	
<%
	Homework homework = (Homework)request.getAttribute("homework");
%>	


<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
     
   
      <h1 >&nbsp;&nbsp;题目：<%=homework.getH_name() %></h1>
     
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    
    
  </ul>
</div>
		<script type="text/javascript">
			function windowOut(id,commodityName,categoryName,description,photo){
				
				document.getElementById("update_commodityId").value=id;
				document.getElementById("commodityName").value=commodityName;
				var all_options = document.getElementById("categoryId").options;
				var category_length = all_options.length;
				for(var i=0;i<category_length;i++){
					if(all_options[i].value==categoryName) all_options[i].selected = true;
				}
				
				document.getElementById("description").value=description;
			}
			function myImage(id,photo){
				document.getElementById("myImage_commodityId").value=id;
				document.getElementById("myImage").src=photo;
			}
		</script>

   <div class="am-form am-g">
			<p>开始时间:<%=homework.getH_startTime() %></p>
			<p>结束时间:<%=homework.getH_endTime() %></p>
          <hr />
          <br />
          <h2>描述</h2>
          <p>&nbsp;&nbsp;<%=homework.getH_content() %></p>
  </div>
 
 
 
 
 <div class="foods">
  <ul>
      版权所有 @华迪实训第二组
  </ul>
  <dl>
    <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
  </dl>
</div>




</div>

</div>




</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->



</body>
</html>
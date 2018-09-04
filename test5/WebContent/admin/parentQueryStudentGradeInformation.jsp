<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="schoolhome.core.po.Parent"%>
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
<%
	Parent parent = (Parent)session.getAttribute("userinfor");
	
%>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1>欢迎<%=parent.getParentName() %>家长</h1></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   

 
 



      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"><a href="/test5/parentUpdateSelfInformation.action"> 修改个人信息</a></div>
    <div class="sideMenu">
      
     
      <h3 class="am-icon-cart-plus"><em></em> <a href="/test5/parentIndex.action"> 作业情况查询</a></h3>
      <h3 class="am-icon-cart-plus on"><em></em> <a href="/test5/parentQueryStudentGradeInformation.action"> 学生成绩查询</a></h3>
     
     <h3 class="am-icon-cart-plus"><em></em> <a href="/test5/parentQueryTeacherInformation.action"> 查看教师情况</a></h3>
     
      
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

    
    
    
    
    
    
    
</div>
	

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				<li><button type="button" onclick="window.location.href='parentIndex.action'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页 </li>

			</ul>

</div>
	
	


<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 学生成绩查询</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 学生成绩查询 > <a href="#">学生成绩</a></dl>
      
     
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    
    <li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
    <li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
  </ul>
</div>

   <form class="am-form am-g">
          <table width="90%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-title">姓名</th>
                <th class="table-title">课程</th>
                <th class="table-title">成绩</th>
              </tr>
            </thead>
            <tbody>
            <%
            	for(Commodity commodity:parent.getChild().getCommodityList()){
            %>
              <tr>
                <td><input type="checkbox" /></td>
                <td><a><%=parent.getChild().getStudentName() %></a></td>
                <td><%=commodity.getCommodityName() %></td>
            	<td><%=commodity.getGrade() %></td>
              </tr>
           <%} %>
            </tbody>
         </table>
           <ul class="am-pagination am-fr">
        	<!-- 
          <li class=""><a href="commodityInformation.jsp?page=">上一页</a></li>
          
          <li class="am-active"><a href="commodityInformation.jsp?page=">1</a></li>
         
          <li class=""><a href="commodityInformation.jsp?page=">下一页</a></li>
           -->
         
        </ul>
          
          
          
      
          <hr />
          
        </form>
 
 
 
 
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
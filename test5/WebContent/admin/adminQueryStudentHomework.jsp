<%@page import="java.util.ArrayList"%>
<%@page import="schoolhome.core.po.Student"%>
<%@page import="schoolhome.core.po.ClassBeanWithCommodity"%>
<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="schoolhome.core.po.ClassBean"%>
<%@page import="schoolhome.core.po.Teacher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>欢迎登录老师页面</title>
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
<style type="text/css">
	.admin-index dl:HOVER {
	background-color: #dcdcdc
}
</style>
</head>
<body>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->






</head>

<body>
<%
	Student student = (Student)session.getAttribute("studentHomework");
%>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1><%=student.getStudentName() %>作业信息</h1></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   <li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  
</li>

 

 <li class="soso">
 	


<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="圆角表单域" /></p>
<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
 </li>
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

</div>

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				<li><button type="button" onclick="window.location.href='/test5/admin/studentInformation.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回</li>
			</ul>

</div>


<div class="admin">
   <div class="admin-index">
   <%
   ArrayList<ClassBeanWithCommodity> classBeanWithCommodities = new ArrayList<ClassBeanWithCommodity>();
	for(ClassBeanWithCommodity classBeanWithCommodity:student.getClassBean().getClassBeanWithCommodityList()){
		int temp = 0;
		for(ClassBeanWithCommodity classBeanWithCommodity2:classBeanWithCommodities){
			if(classBeanWithCommodity.equals(classBeanWithCommodity2)){
				temp = 1;
				break;
			}
		}
		if(temp==0)classBeanWithCommodities.add(classBeanWithCommodity);
	}
	for(ClassBeanWithCommodity classBeanWithCommodity:classBeanWithCommodities){
   /* 	for(ClassBeanWithCommodity classBeanWithCommodity:student.getClassBean().getClassBeanWithCommodityList()){
   		for(ClassBeanWithCommodity classBeanWithCommodity : student.getClassBean().getClassBeanWithCommodityList()){
    		if(classBeanWithCommodity.getCommodity().getId()==commodity.getId()){ */
   %>
   <a class="changeColorByHao" onclick="window.location.href='/test5/adminQueryStudentHomeworkInformation.action?commodity_id=<%=classBeanWithCommodity.getCommodity_id()%>&&teacher_id=<%=classBeanWithCommodity.getTeacher_id()%>'">
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
        <dt class="qs"><i class="am-icon-area-chart"></i></dt>
        <dd style="color:black" class="f12"><b><%=classBeanWithCommodity.getCommodity().getCommodityName() %></b></dd>
        <dd style="color:black" class="f12"><%=classBeanWithCommodity.getTeacher().getTeacherName() %></dd>
      </dl>
   </a>
   <%}
   
   /* break;} }} */ %>
   <%-- <%
   	for(Commodity commodity:student.getCommodityList()){
   		for(ClassBeanWithCommodity classBeanWithCommodity : student.getClassBean().getClassBeanWithCommodityList()){
    		if(classBeanWithCommodity.getCommodity().getId()==commodity.getId()){
   %>
   <a class="changeColorByHao" onclick="window.location.href='/test5/adminQueryStudentHomeworkInformation.action?commodity_id=<%=commodity.getId()%>&&teacher_id=<%=classBeanWithCommodity.getTeacher_id()%>'">
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
        <dt class="qs"><i class="am-icon-area-chart"></i></dt>
        <dd style="color:black" class="f12"><b><%=classBeanWithCommodity.getCommodity().getCommodityName() %></b></dd>
        <dd style="color:black" class="f12"><%=classBeanWithCommodity.getTeacher().getTeacherName() %></dd>
      </dl>
   </a>
   <%break;} }} %> --%>
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
<%@page import="schoolhome.core.po.ClassSchedule"%>
<%@page import="schoolhome.core.po.Teacher"%>
<%@page import="schoolhome.core.po.ClassBeanWithCommodity"%>
<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="schoolhome.core.po.ClassBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>查看课表</title>
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
	Teacher teacher = (Teacher)session.getAttribute("userinfor");
	int classBean_id = (Integer)request.getAttribute("classBean_id");
%>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1>查看课表</h1></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">


      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    
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
				<li><button type="button" onclick="window.location.href='/test5/admin/teacherIndex.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页</button> </li>
				<li><button type="button" onclick="window.location.href='/test5/teacherFDT.action?id=<%=classBean_id %>'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回 </button></li>
			</ul>

</div>

<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 班级课表查询</ul>

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
              	<th class="table-title"></th>
                <th class="table-title">星期一</th>
                <th class="table-type">星期二</th>
                
                <th class="table-title">星期三</th>
                 <th class="table-title">星期四</th>
                <th class="table-type">星期五</th>
                
                <th class="table-title">星期六</th>
                <th class="table-type">星期日</th>
              </tr>
            </thead>
            <tbody>
            
            <tr>
            	<td>第1节</td>
            	<td>早读</td>
            	<td>早读</td>
            	<td>早读</td>
            	<td>早读</td>
            	<td>早读</td>
            </tr>
            <%
            
			ClassBean classBean = null;
            for(ClassBean classBeanTemp:teacher.getClassBeanList()){
            	if(classBeanTemp.getId()==classBean_id){
            		classBean = classBeanTemp;
            		break;
            	}
            }
			
            for(int i=2;i<=9;i++){
            	%><tr><td>第<%=i %>节</td><%
            	for(int j=1;j<=5;j++){
            		%>	
            		<%
            			int temp=0;
            			for(ClassBeanWithCommodity classBeanWithCommodity:classBean.getClassBeanWithCommodityList()){
            				for(ClassSchedule classSchedule:classBeanWithCommodity.getClassScheduleList()){
            				if(classSchedule.getClassTime()==j&&classSchedule.getClassLength()==i&&classBeanWithCommodity.getTeacher_id()==teacher.getId()){
            					temp++;
            					%>
            					<td style="background-color: #FFDEAD"><a href="#"><%=classBeanWithCommodity.getCommodity().getCommodityName() %></a><p style="font-size: 10px;"><%=classBeanWithCommodity.getTeacher().getTeacherName() %></p></td>
            					<%
            					continue;
            				}
            				if(classSchedule.getClassTime()==j&&classSchedule.getClassLength()==i){
            					temp++;
            		%>
            		<td><a href="#"><%=classBeanWithCommodity.getCommodity().getCommodityName() %></a><p style="font-size: 10px;"><%=classBeanWithCommodity.getTeacher().getTeacherName() %></p></td>
            		<%}}}
            		if(temp==0){
            		%>	
            		<td><a href="#"></a><p style="font-size: 10px;"></p></td>	
            		<%
            		}
            		%>
            	<%}%>
            	</tr>
           <%} %> 
            <tr>
            	<td>第10节</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            </tr>
            <tr>
            	<td>第11节</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            </tr>
            <tr>
            	<td>第12节</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            	<td>晚自习</td>
            </tr>
            </tbody>
          </table>
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
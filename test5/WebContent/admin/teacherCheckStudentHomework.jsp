<%@page import="schoolhome.core.po.StudentWithHomework"%>
<%@page import="java.util.ArrayList"%>
<%@page import="schoolhome.core.po.Homework"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>老师查看学生作业详情</title>
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
	StudentWithHomework studentWithHomework = (StudentWithHomework)request.getAttribute("studentWithHomework");
%>

<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1>批改<%=studentWithHomework.getStudent().getStudentName() %>作业</h1></div>

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
				<li><button type="button" onclick="window.location.href='/test5/admin/teacherIndex.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页 </li>
				<li><button type="button" onclick="window.location.href='/test5/teacherQueryHomeworkDetail.action?id=<%=studentWithHomework.getHomework().getH_ID() %>'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回 </li>
				
				
			</ul>

       

	
</div>
	
<%
	Homework homework = studentWithHomework.getHomework();
%>	


<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
     
   
      <h1 >&nbsp;&nbsp;题目：<%=homework.getH_name() %>
      	
       
        <intput style="float: right;margin-right: 10px;"  type="button" onclick="window.location.href='#'" class="am-btn am-btn-success am-radius">分数：<%=studentWithHomework.getGrade() %></intput>  
     </h1>
     
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    
    
  </ul>
</div>

   <div class="am-form am-g">
			<p>开始时间:<%=homework.getH_startTime() %></p>
			<p>结束时间:<%=homework.getH_endTime() %></p>
          <hr />
          <br />
          <h2>描述</h2>
          <p>&nbsp;&nbsp;<%=homework.getH_content() %></p>
          <h2>学生答案：</h2>
          <p>&nbsp;&nbsp;<%=studentWithHomework.getContent() %></p>
		<%
		  if(studentWithHomework.getWordFilePath()==null){
		  %>
		  <%}else{ %>
		  <br/>
		  <hr/>
		  <br/>
		  <a href="downloadHomework.action?fileName=<%=studentWithHomework.getWordFilePath()%>">学生word文件下载</a>
		  <%} %>
			 
		<form class="am-form tjlanmu" action="teacherCheckStudentHomeworkGrade.action" method="post">
     	<div class="am-form-group am-cf">
          <div class="zuo">分数：</div>
          <div class="you">
          <input type="hidden" style="width: 200px;" name="S_H_id" value="<%=studentWithHomework.getId() %>" class="am-input-sm">
            <input type="text" style="width: 200px;" name="grade" value="<%=studentWithHomework.getGrade() %>" class="am-input-sm">
          </div>
        </div>
      <div class="am-form-group am-cf">
           <div class="you">
            <p>
            <button type="submit" class="am-btn am-btn-success am-radius">提交</button>
           </p>
        </div>
      </div>
      </form>
                     
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
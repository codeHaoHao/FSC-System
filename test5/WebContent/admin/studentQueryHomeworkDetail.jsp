<%@page import="schoolhome.core.po.StudentWithHomework"%>
<%@page import="schoolhome.core.po.Student"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="schoolhome.core.po.TeacherCommodityHomework"%>
<%@page import="schoolhome.core.po.Homework"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>查看作业</title>
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
<%
	Student student = (Student)session.getAttribute("userinfor");
	TeacherCommodityHomework teacherCommodityHomework = (TeacherCommodityHomework)request.getAttribute("teacherCommodityHomework");
	StudentWithHomework studentWithHomework2 = (StudentWithHomework)request.getAttribute("studentWithHomework");
%>	
  <div class="am-topbar-brand"><h1>欢迎<%=student.getStudentName() %>学生</h1></div>

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
				<li><button type="button" onclick="window.location.href='/test5/admin/studentIndex.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页 </li>
				<li><button type="button" onclick="window.location.href='/test5/studentQueryHomework.action?commodity_id=<%=teacherCommodityHomework.getCommodity_id() %>&&teacher_id=<%=teacherCommodityHomework.getTeacher_id() %>'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回 </li>
			</ul>
</div>
<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
     
   
      <h1 >&nbsp;&nbsp;题目：<%=teacherCommodityHomework.getHomework().getH_name() %>
      <%
      	if(studentWithHomework2!=null){
      %>
      	<intput style="float: right;margin-right: 10px;"  type="button" onclick="window.location.href='#'" class="am-btn am-btn-success am-radius">分数：<%=studentWithHomework2.getGrade() %></intput>
        <%} %>
     </h1>
     
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    
    
  </ul>
</div>
		

   <div class="am-form am-g">
			<p>开始时间:<%=teacherCommodityHomework.getHomework().getH_startTime() %></p>
			<p>结束时间:<%=teacherCommodityHomework.getHomework().getH_endTime() %></p>
          <hr />
          <br />
          <h2>描述</h2>
          <p>&nbsp;&nbsp;<%=teacherCommodityHomework.getHomework().getH_content() %></p>
          <br/>
          <hr/>
          <br/>
		   <%
		   Date now = new Date();
		   if(now.before(teacherCommodityHomework.getHomework().getH_endTime())&&now.after(teacherCommodityHomework.getHomework().getH_startTime())){
		   %>
           <form class="am-form tjlanmu" action="studentSubmitHomework.action"  enctype="multipart/form-data" method="post">
	          <div class="am-form-group am-cf">
		          <div class="zuo"></div>
		          <input type="hidden" name="id" value="<%=teacherCommodityHomework.getId() %>"/>
		          <input type="hidden" name="student_id" value="<%=student.getId()%>"/>
		          <input type="hidden" name="H_ID" value="<%=teacherCommodityHomework.getHomework().getH_ID() %>"/>
		            <textarea rows="10"  name="content" cols="50" warp="virtual"><%if(studentWithHomework2!=null)for(StudentWithHomework studentWithHomework:student.getStudentWithHomeworkList()){if(studentWithHomework.getH_ID()==teacherCommodityHomework.getH_ID()){%><%=studentWithHomework.getContent()%><%}}%></textarea>
	          </div>
	          <div class="am-form-group am-cf">
		          <div class="zuo">上传文件：</div>
		          <div class="you" style="height: 45px;">
		            <input name="wordFile" type="file" id="doc-ipt-file-1">
		            <%
		            	if(studentWithHomework2==null||studentWithHomework2.getWordFilePath()==null){
		            %>
		            <p class="am-form-help">请选择要上传的文件...</p>
		            <%}else{ %>
		            <a href="downloadHomework.action?fileName=<%=studentWithHomework2.getWordFilePath()%>">文件下载</a>
		            <p class="am-form-help">你已上传文件</p>
		            <%} %>
		          </div>
        	 </div>
	          <div class="am-form-group am-cf">
			       <p>
			         <button type="submit" class="am-btn am-btn-success am-radius">提交</button>
			       </p>
      		</div>
          </form>
          <%}else if(now.after(teacherCommodityHomework.getHomework().getH_endTime())){ %>
          		<h2><p>已超过提交时间</p></h2>
          <%}else if(now.before(teacherCommodityHomework.getHomework().getH_startTime())){ %>
          		<h2><p>作业还未到达开始时间</p></h2>
          <%} %>
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
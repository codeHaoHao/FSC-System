<%@page import="schoolhome.core.po.ClassBeanWithCommodity"%>
<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="schoolhome.core.po.Student"%>
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
<title>查看学生成绩</title>
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
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->






</head>

<body>
<%
	Teacher teacher = (Teacher)session.getAttribute("userinfor");
	int classBean_id = (Integer)request.getAttribute("classBean_id");
%>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1>欢迎<%=teacher.getTeacherName() %>老师</h1></div>

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
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"><a href="/test5/teacherUpdateSelfInformation.action"> 修改个人信息</a></div>
    <div class="sideMenu">
      <h3 class="am-icon-flag on"><em></em> <a href="/test5/teacherIndex.action">录入学生成绩</a></h3>
     
      
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
				<li><button type="button" onclick="window.location.href='/test5/admin/teacherIndex.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页</button> </li>
				<li><button type="button" onclick="window.location.href='/test5/teacherFDT.action?id=<%=classBean_id %>'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回 </button></li>
				
				
			</ul>

</div>
<div class="am-popup am-popup-inner" id="my-student">
	
	    <div class="am-popup-hd">
      <h4 class="am-popup-title">查看学生信息</h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

     <form class="am-form tjlanmu" action="teacherUpdateStudentGrade.action?classBean_id=<%=classBean_id %>" method="post">
		

       <div class="am-form-group am-cf">
          <div class="zuo">学生姓名：</div>
          <div class="you">
            <input type="text" readonly="readonly" class="am-input-sm" id="myStudentName" placeholder="请输入student_id">
          </div>
        </div>
       
        <div class="am-form-group am-cf">
          <div class="zuo">idCard：</div>
          <div class="you">
            <input type="text" readonly="readonly"  class="am-input-sm" id="myStudentIdCard" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">班级：</div>
          <div class="you">
            <input type="text" readonly="readonly" class="am-input-sm" id="myStudentClassNum" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">性别：</div>
          <div class="you">
            <input type="text" readonly="readonly"  class="am-input-sm" id="myStudentGender" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">入学年份：</div>
          <div class="you">
            <input type="text" readonly="readonly"  class="am-input-sm" id="myStudentEnrollyear" placeholder="请输入commodity_id">
          </div>
        </div>
       
        <div class="am-form-group am-cf">
        <div class="zuo"></div>
        
        </div>
        
      </form>

    </div>

</div>
<div class="am-popup am-popup-inner" id="my-popups">
	
	    <div class="am-popup-hd">
      <h4 class="am-popup-title">修改成绩信息</h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

     <form class="am-form tjlanmu" action="teacherUpdateStudentGrade.action?classBean_id=<%=classBean_id %>" method="post">
		

       <div class="am-form-group am-cf">
          <div class="zuo">student_id：</div>
          <div class="you">
            <input type="text" readonly="readonly" name="student_id" class="am-input-sm" id="student_id" placeholder="请输入student_id">
          </div>
        </div>
       
        <div class="am-form-group am-cf">
          <div class="zuo">commodity_id：</div>
          <div class="you">
            <input type="text" readonly="readonly" name="commodity_id" class="am-input-sm" id="commodity_id" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">班级：</div>
          <div class="you">
            <input type="text" readonly="readonly" class="am-input-sm" id="classBeanName" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">学生姓名：</div>
          <div class="you">
            <input type="text" readonly="readonly"  class="am-input-sm" id="studentName" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">课程名称：</div>
          <div class="you">
            <input type="text" readonly="readonly"  class="am-input-sm" id="commodityName" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">grade：</div>
          <div class="you">
            <input type="text" name="grade" class="am-input-sm" id="grade" placeholder="请输入grade">
          </div>
        </div>
        
        
        <div class="am-form-group am-cf">
        <div class="zuo"></div>
        
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

</div>
<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 老师首页</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 老师首页 > <a href="#">老师首页</a></dl>
      
      
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    
    <li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
    <li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
  </ul>
</div>
		<script type="text/javascript">
			function windowOut(student_id,commodity_id,classBeanName,studentName,courseName,grade){
				
				document.getElementById("student_id").value=student_id;
				document.getElementById("commodity_id").value=commodity_id;
				document.getElementById("classBeanName").value=classBeanName;
				document.getElementById("studentName").value=studentName;
				document.getElementById("commodityName").value=courseName;
				document.getElementById("grade").value=grade;
			}
			function myStudent(myStudentName,myStudentIdCard,myStudentClassNum,myStudentGender,myStudentEnrollyear){
				document.getElementById("myStudentName").value=myStudentName;
				document.getElementById("myStudentIdCard").value=myStudentIdCard;
				document.getElementById("myStudentClassNum").value=myStudentClassNum;
				document.getElementById("myStudentGender").value=myStudentGender;
				document.getElementById("myStudentEnrollyear").value=myStudentEnrollyear;
				
			}
		</script>

    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-title">科目</th>
                <th class="table-title">班级</th>
                <th class="table-title">姓名</th>
                <th class="table-title">成绩</th>
                <th width="130px" class="table-set">操作</th>
              	
              </tr>
              
              
            </thead>
            <tbody>
            <%
            	
            	for(ClassBeanWithCommodity classBeanWithCommodity:teacher.getClassBeanWithCommodityList()){
            		if(classBeanWithCommodity.getClassBean_id()==classBean_id&&classBeanWithCommodity.getTeacher_id()==teacher.getId()){
            			for(Student student:classBeanWithCommodity.getClassBean().getStudentList()){
            %>
              <tr>
                <td><input type="checkbox" /></td>
                <%
                	int course_id = 0;
                	String courseName = null;
					course_id = classBeanWithCommodity.getCommodity().getId();
					courseName = classBeanWithCommodity.getCommodity().getCommodityName();
                %>
                <td><%=classBeanWithCommodity.getCommodity().getCommodityName() %></td>
                
                <td><%=classBeanWithCommodity.getClassBean().getClassBeanName() %></td>
                <td><a><%=student.getStudentName() %></a></td>
               <%
                	double studentGrade = 0;
                	for(Commodity commodity:student.getCommodityList()){
                		if(commodity.getId()==classBeanWithCommodity.getCommodity_id()){
                			studentGrade = commodity.getGrade();
                %>
                <td class="am-hide-sm-only"><%=commodity.getGrade() %></td>
               <%} }%>
                <td><div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <intput type="button" onclick="myStudent('<%=student.getStudentName() %>','<%=student.getIdCard() %>','<%=student.getClassBean().getClassBeanName() %>','<%=student.getGender() %>','<%=student.getEnrollyear() %>')" class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-student'}"><span class="am-icon-search"></span> </intput>
                      <intput type="button" onclick="windowOut('<%=student.getId() %>', '<%=course_id %>', '<%=classBeanWithCommodity.getClassBean().getClassBeanName() %>', '<%=student.getStudentName() %>', '<%=courseName %>', '<%=studentGrade %>')" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}"><span class="am-icon-pencil-square-o"></span></intput>
                    </div>
                  </div></td>
              </tr>
           <%}break;}} %>
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
<%@page import="schoolhome.core.po.ClassSchedule"%>
<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="schoolhome.core.po.ClassBeanWithCommodity"%>
<%@page import="schoolhome.core.po.Student"%>
<%@page import="schoolhome.core.service.impl.StudentServiceImpl"%>
<%@page import="schoolhome.core.service.StudentService"%>
<%@page import="schoolhome.core.po.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="checkAdminLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, classBean-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>
<script type="text/javascript">
function windowOut(id,classTime,classLength){
	document.getElementById("classSchedule_id").value=id;
	document.getElementById("classTime").value=classTime;
	document.getElementById("classLength").value=classLength;
}
</script>
</head>
<body>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->





</head>

<body>
<%
ClassBeanWithCommodity classBeanWithCommodity = (ClassBeanWithCommodity)request.getAttribute("classScheduleInformation");
%>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="assets/i/logo.png"></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   

 

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
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员</div>
    <div class="sideMenu">
      <h3 class="am-icon-flag"><em></em> <a href="#">课程管理</a></h3>
      <ul>
        <li><a href="/test5/commodityInformation.action">课程列表</a></li>
        
        <li><a href="/test5/categoryInformation.action">课程分类</a></li>
        
      </ul>
      
      <h3 class="am-icon-classBeans on"><em></em> <a href="#">会员管理</a></h3>
      <ul>
        <li><a href="/test5/studentInformation.action">学生列表</a> </li>
        <li><a href="/test5/classBeanInformation.action">班级列表</a></li>
        <li><a href="/test5/classBeanWithCommodityInformation.action">班级课程联系表</a></li>
        <!-- 
        <li><a href="/test5/studentGradeInformation.action">学生课程成绩联系表</a></li>
         -->
        <li><a href="/test5/parentInformation.action">家长列表</a></li>
        <li><a href="/test5/teacherInformation.action">教师列表</a></li>
      </ul>
      
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
				<li><button type="button" onclick="window.location.href='/test5/admin/classBeanWithCommodityInformation.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回</li>
				
				
			</ul>

       

	
</div>


<div class="am-popup am-popup-inner" id="my-popup" >
	
	    <div class="am-popup-hd">
      <h4 class="am-popup-title">添加信息 </h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

      <form class="am-form tjlanmu" action="addClassSchedule.action">


      <div class="am-form-group am-cf">
          <div class="zuo"></div>
          <div class="you">
            <input type="hidden" name="CCT_id" value="<%=classBeanWithCommodity.getId() %>" class="am-input-sm">
          </div>
        </div>
       
        <div class="am-form-group am-cf">
          <div class="zuo">星期几上课：</div>
          <div class="you">
            <input type="text" name="classTime" class="am-input-sm"  placeholder="请输入classTime">
          </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">第几节上课：</div>
          <div class="you">
            <input type="text" name="classLength" class="am-input-sm"  placeholder="请输入classLength">
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

	

</div>
	
	
	
	
	
	<div class="am-popup am-popup-inner" id="my-popups">
	
	    <div class="am-popup-hd">
      <h4 class="am-popup-title">修改信息</h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

     <form class="am-form tjlanmu" action="updateClassSchedule.action" method="post">
		<div class="am-form-group am-cf">
          <div class="zuo"></div>
          <div class="you">
            <span id="classBeanId"></span>
            <input name="CCT_id" type="hidden" value="<%=classBeanWithCommodity.getId()%>"/>
            <input name="classSchedule_id" type="hidden" class="am-input-sm" id="classSchedule_id" value="">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">星期几上课：</div>
          <div class="you">
          	<input type="hidden" name="oldClassTime" id="oldClassTime"/>
            <input type="text" name="classTime" class="am-input-sm" id="classTime" placeholder="请输入commodity_id">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">第几节：</div>
          <div class="you">
          <input type="hidden" name="oldClassLength" id="oldClassLength"/>
            <input type="text" name="classLength" class="am-input-sm" id="classLength" placeholder="请输入commodity_id">
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
      <ul class="am-icon-classBeans"> 会员管理</ul>
      
      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">商品列表</a></dl>
      
      <dl>
        <intput type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" data-am-modal="{target: '#my-popup'}"> 手动添加会员</intput>
      </dl>
      <!--这里打开的是新页面-->

      
    </div>
    
    


    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-check"><input type="checkbox" /></th>

                <th class="table-id">ID</th>
                <th class="table-title">班级的id号</th>
                <th class="table-type">课程名称</th>
                <th class="table-type">老师名称</th>
                <th class="table-type">上课时间</th>
                <th width="130px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
            <%
            	for(ClassSchedule classSchedule :classBeanWithCommodity.getClassScheduleList()){
            		
            		
            		%>
            		
            		<tr>
                <td><input type="checkbox" /></td>
                
                <td><%=classBeanWithCommodity.getId() %></td>
                <td><a href="#"><%=classBeanWithCommodity.getClassBean().getClassBeanName() %></a></td>
                <td><%=classBeanWithCommodity.getCommodity().getCommodityName() %></td>
               <td><%=classBeanWithCommodity.getTeacher().getTeacherName() %></td>
               <td><%=classSchedule.classSchduleToString() %></td>
                <td>
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-success am-round"><span class="am-icon-search" title="查看订单详情"></span> </button>
                     <intput onclick="windowOut('<%=classSchedule.getId() %>', '<%=classSchedule.getClassTime() %>', '<%=classSchedule.getClassLength() %>')"
                       class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="修改订单"><span class="am-icon-pencil-square-o"></span></intput>
                     <intput type="button" onclick="window.location.href='/test5/deleteClassSchedule.action?id=<%=classSchedule.getId() %>&&CCT_id=<%=classBeanWithCommodity.getId() %>'"  class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除订单"><span class="am-icon-trash-o" ></span></intput>
                    </div>
                  </div>
                </td>
              </tr>
            		
            		<%
            	}
            %>

              
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
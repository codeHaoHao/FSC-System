<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="schoolhome.core.po.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>学生成绩信息</title>
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
<script type="text/javascript">
function windowOut(studentId,studentName,commodityName,commodity_id,grade){
	document.getElementById("studentIdInput").value=studentId;
	document.getElementById("studentName").value=studentName;
	document.getElementById("commodityName").value=commodityName;
	document.getElementById("commodity_id").value=commodity_id;
	document.getElementById("grade").value=grade;
}
</script>
</head>
<body>

</head>

<body>
<%
	Student student = (Student)session.getAttribute("studentGradesList");
%>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><h1><%=student.getStudentName() %>的个人成绩信息</h1></div>

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

    
    
    
    
    
    
    
</div>

<div class="am-popup am-popup-inner" id="my-popups">
	
	    <div class="am-popup-hd">
      <h4 class="am-popup-title">修改成绩</h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

     <form class="am-form tjlanmu" action="updateStudentGrades.action" method="post">
		<div class="am-form-group am-cf">
          <div class="zuo"></div>
          <div class="you">
            <span id="studentId"></span>
            <input name="studentId" type="hidden" class="am-input-sm" id="studentIdInput" value="">
          </div>
        </div>

       <div class="am-form-group am-cf">
          <div class="zuo">学生姓名：</div>
          <div class="you">
            <input type="text" readonly="readonly" name="studentName" class="am-input-sm" id="studentName" placeholder="请输入uesrName">
          </div>
        </div>

        <div class="am-form-group am-cf">
          <div class="zuo">课程名称：</div>
          <div class="you">
            <input type="text" readonly="readonly" class="am-input-sm" id="commodityName" placeholder="请输入phone">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo"></div>
          <div class="you">
            <input type="hidden" readonly="readonly" name="commodity_id" class="am-input-sm" id="commodity_id" placeholder="请输入phone">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">成绩：</div>
          <div class="you">
            <input type="text" name="grade" class="am-input-sm" id="grade" placeholder="请输入phone">
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
<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				<li><button type="button" onclick="window.location.href='/test5/admin/studentInformation.jsp'" class="am-btn am-btn-default am-radius am-btn-xs"> 返回 </li>
			</ul>
</div>
	
	


<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 考试成绩查询</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 学生首页> <a href="#">考试成绩查询</a></dl>

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
                
                <th class="table-title">科目</th>
                <th class="table-type">成绩</th>
                <th width="130px" class="table-set">操作</th>
              </tr>
             
              
            </thead>
            <tbody>
            <%
            	for(Commodity commodity:student.getCommodityList()){
            %>
              <tr>
                <td><input type="checkbox" /></td>
                <td><a href="#"><%=commodity.getCommodityName() %></a></td>
                <td><%=commodity.getGrade() %></td>
				<td>
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                     <intput onclick="windowOut('<%=student.getId() %>', '<%=student.getStudentName() %>', '<%=commodity.getCommodityName() %>', '<%=commodity.getId() %>', '<%=commodity.getGrade() %>')"
                       class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="修改订单"><span class="am-icon-pencil-square-o"></span></intput>
                     <intput type="button" onclick="window.location.href='/test5/deleteStudentGradeByCommodityIdAndStudentId.action?student_id=<%=student.getId() %>&&commodity_id=<%=commodity.getId() %>'"  class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除订单"><span class="am-icon-trash-o" ></span></intput>
                    </div>
                  </div>
                </td>
              </tr>
           <%} %>
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
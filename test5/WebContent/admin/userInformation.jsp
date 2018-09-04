<%@page import="schoolhome.core.service.impl.UserServiceImpl"%>
<%@page import="schoolhome.core.service.UserService"%>
<%@page import="schoolhome.core.po.User"%>
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
function windowOut(id,uesrName,password,email,phone){
	document.getElementById("userId").innerHTML=id;
	document.getElementById("userIdInput").value=id;
	document.getElementById("userName").value=uesrName;
	document.getElementById("password").value=password;
	document.getElementById("email").value=email;
	document.getElementById("phone").value=phone;
}
</script>
</head>
<body>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->





</head>

<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="assets/i/logo.png"></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   <li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  <ul class="am-dropdown-content">
  	
  	
  	
    <li class="am-dropdown-header">所有消息都在这里</li>

    

    <li><a href="#">未激活会员 <span class="am-badge am-badge-danger am-round">556</span></a></li>
    <li><a href="#">未激活代理 <span class="am-badge am-badge-danger am-round">69</span></a></a></li>
    <li><a href="#">未处理汇款</a></li>
    <li><a href="#">未发放提现</a></li>
    <li><a href="#">未发货订单</a></li>
    <li><a href="#">低库存产品</a></li>
    <li><a href="#">信息反馈</a></li>
    
    
    
  </ul>
</li>

 <li class="kuanjie">
 	
 	<a href="userInformation.jsp?#">会员管理</a>          
 	<a href="#">奖金管理</a> 
 	<a href="#">订单管理</a>   
 	<a href="#">产品管理</a> 
 	<a href="#">个人中心</a> 
 	 <a href="#">系统设置</a>
 </li>

 <li class="soso">
 	
<p>   
	
	<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">全部</option>
          <option value="o">产品</option>
          <option value="o">会员</option>
          
        </select>

</p>

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
      <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
      <ul>
        <li>订单列表</li>
        <li>合并订单</li>
        <li>订单打印</li>
        <li>添加订单</li>
        <li>发货单列表</li>
        <li>换货单列表</li>
      </ul>
      <h3 class="am-icon-users on"><em></em> <a href="#">会员管理</a></h3>
      <ul>
        <li><a href="/test5/studentInformation.action">学生列表</a> </li>
        <li><a href="/test5/classBeanInformation.action">班级列表</a></li>
        <li><a href="/test5/classBeanWithCommodityInformation.action">班级课程联系表</a></li>
        <li><a href="/test5/studentGradeInformation.action">学生课程成绩联系表</a></li>
        <li><a href="/test5/parentInformation.action">家长列表</a></li>
        <li><a href="/test5/teacherInformation.action">教师列表</a></li>
      </ul>
      <h3 class="am-icon-volume-up"><em></em> <a href="#">信息通知</a></h3>
      <ul>
        <li>站内消息 /留言 </li>
        <li>短信</li>
        <li>邮件</li>
        <li>微信</li>
        <li>客服</li>
      </ul>
      <h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>
      <ul>
        <li>数据备份</li>
        <li>邮件/短信管理</li>
        <li>上传/下载</li>
        <li>权限</li>
        <li>网站设置</li>
        <li>第三方支付</li>
        <li>提现 /转账 出入账汇率</li>
        <li>平台设置</li>
        <li>声音文件</li>
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
				<li><button type="button" onclick="window.location.href='adminindex.action'" class="am-btn am-btn-default am-radius am-btn-xs"> 首页 </li>
				
				
			</ul>

       

	
</div>


<div class="am-popup am-popup-inner" id="my-popup" >
	
	    <div class="am-popup-hd">
      <h4 class="am-popup-title">添加会员 </h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

      <form class="am-form tjlanmu" action="addUser.action">


       <div class="am-form-group am-cf">
          <div class="zuo">userName：</div>
          <div class="you">
            <input type="text" name="userName" class="am-input-sm"  placeholder="请输入uesrName">
          </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">password：</div>
          <div class="you">
            <input type="password" name="password" class="am-input-sm"  placeholder="请输入password">
          </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">email：</div>
          <div class="you">
            <input type="email" name="email" class="am-input-sm"  placeholder="请输入email">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">phone：</div>
          <div class="you">
            <input type="text" name="phone" class="am-input-sm"  placeholder="请输入phone">
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
      <h4 class="am-popup-title">修改用户信息</h4>
      <span data-am-modal-close
            class="am-close">&times;</span>
    </div>
	
	    <div class="am-popup-bd">
      

     <form class="am-form tjlanmu" action="userInformationUpdate.action" method="post">
		<div class="am-form-group am-cf">
          <div class="zuo">userId:</div>
          <div class="you">
            <span id="userId"></span>
            <input name="userId" type="hidden" class="am-input-sm" id="userIdInput" value="">
          </div>
        </div>

       <div class="am-form-group am-cf">
          <div class="zuo">userName：</div>
          <div class="you">
            <input type="text" name="userName" class="am-input-sm" id="userName" placeholder="请输入uesrName">
          </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">password：</div>
          <div class="you">
            <input type="password" name="password" class="am-input-sm" id="password" placeholder="请输入password">
          </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">email：</div>
          <div class="you">
            <input type="email" name="email" class="am-input-sm" id="email" placeholder="请输入email">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">phone：</div>
          <div class="you">
            <input type="text" name="phone" class="am-input-sm" id="phone" placeholder="请输入phone">
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
      <ul class="am-icon-users"> 会员管理</ul>
      
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
                <th class="table-title">userName</th>
                <th class="table-type">email</th>
                <th class="table-author am-hide-sm-only">phone</th>
                <th class="table-author am-hide-sm-only">注册日期</th>
                <th class="table-date am-hide-sm-only">最近消费</th>
                <th width="130px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
            <%
            
            	
            	
            	
          		int page_count  = (int)session.getAttribute("page_count");//总记录数
          		
          		
          		int p = (int)session.getAttribute("p");
            	ArrayList<User> beans = (ArrayList<User>)session.getAttribute("userList");
            	for(User user :beans){
            		if(user.getIsadmin()==1){
            			continue;
            		}
            		
            		%>
            		
            		<tr>
                <td><input type="checkbox" /></td>
                
                <td><%=user.getId() %></td>
                <td><a href="#"><%=user.getUserName() %></a></td>
                <td><%=user.getEmail() %></td>
                <td class="am-hide-sm-only"><%=user.getPhone() %></td>
                <td class="am-hide-sm-only"><%=user.getCreateDate() %></td>
                <td class="am-hide-sm-only">null</td>
                <td>
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-success am-round"><span class="am-icon-search" title="查看订单详情"></span> </button>
                      <intput onclick="windowOut('<%=user.getId() %>', '<%=user.getUserName() %>', '<%=user.getPassword() %>', '<%=user.getEmail() %>', '<%=user.getPhone() %>')"
                       class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="修改订单"><span class="am-icon-pencil-square-o"></span></intput>
                     <intput type="button" onclick="window.location.href='/test5/deleteUserById.action?id=<%=user.getId() %>'"  class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除订单"><span class="am-icon-trash-o" ></span></intput>
                    </div>
                  </div>
                </td>
              </tr>
            		
            		<%
            	}
            %>

              
            </tbody>
          </table>
          
                 
          
         <ul class="am-pagination am-fr">
         <%
          	if(p!=1) out.print("<li><a href='/test5/userInformation.action?page="+1+"'"+">«</a></li>");
          %>
          <%
          	if(p>1) out.print("<li><a href='/test5/userInformation.action?page="+(p-1)+"'"+">‹</a></li>");
          %>
          <%
          	for(int i=3;i>=1;i--){
				if(p-i>=1){
          %>
          <li class=""><a href="/test5/userInformation.action?page=<%=p-i%>"><%=p-i %></a></li>
          <%}} %>
          <li class="am-active"><a href="/test5/userInformation.action?page=<%=p%>"><%=p %></a></li>
          <%
          	for(int i=1;i<=3;i++){
				if(p+i<=page_count){
          %>
          <li class=""><a href="/test5/userInformation.action?page=<%=p+i%>"><%=p+i %></a></li>
          
          <%}} %>
          <%
          	if(p<page_count) out.print("<li><a href='/test5/userInformation.action?page="+(p+1)+"'"+">›</a></li>");
          %>
          <%
          	if(p!=page_count)	out.print("<li><a href='/test5/userInformation.action?page="+page_count+"'"+">»</a></li>");
          %>
          
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
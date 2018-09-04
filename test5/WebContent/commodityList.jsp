<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Rockit Now</title>
<meta name="description" content="">
<meta name="author" content="">
<!--// Mobile Metas //-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!--// Stylesheets //-->
<link rel="stylesheet" href="indexFolder/css/base.css" />
<link rel="stylesheet" href="indexFolder/css/skeleton.css" />
<link rel="stylesheet" href="indexFolder/css/layout.css" />
<link rel="stylesheet" href="indexFolder/css/style.css" />
<link rel="stylesheet" href="indexFolder/css/player.css" />
<link rel="stylesheet" href="indexFolder/css/color.css" />
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--// Favicons //-->
<link rel="shortcut icon" href="indexFolder/images/favicon.ico" />
<link rel="rockit-touch-icon" href="indexFolder/images/rockit-touch-icon.png" />
<link rel="rockit-touch-icon" sizes="72x72" href="indexFolder/images/rockit-touch-icon-72x72.png" />
<link rel="rockit-touch-icon" sizes="114x114" href="indexFolder/images/rockit-touch-icon-114x114.png" />
<!--// Javascript //-->
<script type="text/javascript" src="indexFolder/js/jquery.min.js"></script>
<script type="text/javascript" src="indexFolder/js/animatedcollapse.js"></script>
<script type="text/javascript" src="indexFolder/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="indexFolder/js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="indexFolder/js/tabs.js"></script>
</head>
<body>
<!-- Outer Wrapper Start -->
<div id="outer-wrapper">
	<div class="inner">
    	<!-- Header Start -->
    	<div id="header">
        	<span class="topbar">&nbsp;</span>
        	<!-- Container Start -->
            <div class="container">
            	<!-- Logo Start -->
            <!-- 	<div class="five columns left">
                	<a href="index.html" class="logo"><img src="indexFolder/images/logo.png" alt="" /></a>
                </div> -->
                <!-- Logo End -->
                <div class="eleven columns right">
                	<!-- Top Links Start -->
                    <ul class="top-links">
                    	<li>
                        	<a href="/test5/returnLogin.action">登录</a>
                            <div id="login-box">
                            	<ul>
                                	<li><h4 class="white">User Login</h4></li>
                                    <li>
                                    	<input name="" value="yourname@email.com"
                                        onfocus="if(this.value=='yourname@email.com') {this.value='';}"
                                        onblur="if(this.value=='') {this.value='yourname@email.com';}"   type="text" class="bar" />
                                    </li>
                                    <li>
                                    	<input name="" value="password"
                                        onfocus="if(this.value=='password') {this.value='';}"
                                        onblur="if(this.value=='') {this.value='password';}"   type="password" class="bar" />
                                    </li>
                                    <li>
                                    	<input type="checkbox" class="left" />
                                        <p>Remember me</p>
                                    </li>
                                    <li>
                                    	<button class="backcolr">登陆</button>
                                    </li>
                                </ul>
                                <div class="forgot">
                                	<a href="#">Forget Password?</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        <li><a href="/test5/register.action">注册</a></li>
                        
                    </ul>
                    <!-- Top Links End -->
                    <!-- Navigation Start -->
                    <div class="navigation">
                    	
                        <div id="smoothmenu1" class="ddsmoothmenu">
                            <ul>
                                 <li ><a href="/test5/index.action">首页</a></li>
                                <li><a href="/test5/about-us.action">关于我们</a></li>
                                <li><a href="/test5/news.action">新闻</a></li>
                                <li class="current-menu-item"><a href="/test5/commodityList.action">课程</a>
                                    <ul>
                                        <li><a href="/test5/commodityList.action">全部课程</a></li>
                                        <li><a href="#">热门课程</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">&nbsp&nbsp&nbsp</a>
                                   
                                </li>
                                <li><a href="#">&nbsp&nbsp&nbsp</a>
                                	
                                </li>
                                <li><a href="#">&nbsp&nbsp&nbsp</a>
                                   
                                </li>
                                <li><a href="contact-us.html">&nbsp&nbsp&nbsp</a></li>
								<li><a href="http://www.cssmoban.com">&nbsp&nbsp&nbsp</a></li>
                            </ul>

                            <div class="clear"></div>
                        </div>
                    </div>
                    <!-- Navigation End -->
                    <div class="clear"></div>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Header End -->
        <div class="clear"></div>
        <div class="inner shadow">
        	<!-- Second Level Navigation Start -->
            
            <!-- Second Level Navigation End -->
            <div class="clear"></div>
            <!-- Sub Page Banner Start -->
            <div id="sub-banner" class="row">
            	<a href="#"><img src="indexFolder/images/sub-banner2.jpg" alt="" /></a>
                <div class="sub-caption">
                	<h1></h1>
                    <h1>学 <span class="colr">无止境</span></h1>
                </div>
            </div>
            <!-- Sub Page Banner End -->
            <div class="clear"></div>
        	<!-- Container Start -->
            <div class="container row">
            	<div class="sixteen columns left">
                	<h1 class="heading">请根据需求选择读物</h1>
                    <!-- Album Detail Start -->
                    <div class="in-sec nopad-bot">
                    	<div id="tab-rock">
                                	<ul class="prod-list">
                                	<%
                                	 int page_count = (int)session.getAttribute("page_count");
                    	          	int p = (int)session.getAttribute("p");//当前页数
                                		ArrayList<Commodity> commodityList = (ArrayList<Commodity>)session.getAttribute("commodityList");
                                		for(Commodity commodity:commodityList){
                                			
                                	%>
                                        <li>
                                            <a href="commodity-detail.action?id=<%=commodity.getId() %>" class="thumb"><img src="<%=commodity.getPhoto() %>" alt="" /><span>&nbsp;</span></a>
                                            <h4><%=commodity.getCommodityName() %></h4>
                                            <p><%=commodity.teacherToString() %></p>
                                           
                                        </li>
                                    <%} %>
                                    </ul>
                                    <div class="clear"></div>
                                </div>
                        <div class="clear"></div>
                    </div>
                    <!-- Tabs Section End -->
                    <div class="clear"></div>
                    <div class="in-sec">
                    <ul class="am-pagination am-fr">
        	<%
          	if(p!=1) out.print("<li><a href='commodityList.action?page="+1+"'"+">«</a></li>");
         	 %>
          <%
          	if(p>1) out.print("<li><a href='commodityList.action?page="+(p-1)+"'"+">‹</a></li>");
          %>
          <%
          	for(int i=3;i>=1;i--){
				if(p-i>=1){
          %>
          <li class=""><a href="commodityList.action?page=<%=p-i%>"><%=p-i %></a></li>
          <%}} %>
          <li class="am-active"><a href="commodityList.action?page=<%=p%>"><%=p %></a></li>
          <%
          	for(int i=1;i<=3;i++){
				if(p+i<=page_count){
          %>
          <li class=""><a href="commodityList.action?page=<%=p+i%>"><%=p+i %></a></li>
          
          <%}} %>
          <%
          	if(p<page_count) out.print("<li><a href='commodityList.action?page="+(p+1)+"'"+">›</a></li>");
          %>
          <%
          if(p!=page_count) out.print("<li><a href='commodityList.action?page="+page_count+"'"+">»</a></li>");
          %>
        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <!-- Footer Start -->
            <div id="footer">
            	<div class="foot-top">
                	<!-- Footer Logo Start -->
                   <!--  <div class="logo-foot">
                    	<a href="#"><img src="indexFolder/images/logo-foot.png" alt="" /></a>
                    </div>
                    Footer Logo End
                    Footer Navigation Start
                    <div class="links-foot">
                    	<ul>
                        	<li><a href="index.html">首页</a></li>
                            <li><a href="news.html">新闻</a></li>
                            <li><a href="课程.html">课程</a></li>
                            <li><a href="#">购物车</a></li>
                            <li><a href="about-us.html">关于我们</a></li>
                            
                        </ul>
                    </div> -->
                    <!-- Footer Navigation End -->
                    <!-- Newsletter Start -->
                    <div class="newsletter">
                    	<h5 class="white">搜索课程</h5>
                        <ul>
                        	<li class="left">
                            	<input name="" value="请输入课程名称"
                                onfocus="if(this.value=='请输入课程名称') {this.value='';}"
                                onblur="if(this.value=='') {this.value='请输入课程名称';}" type="text" class="bar" />    
                            </li>
                            <li class="right"><button class="backcolr">Submit</button></li>
                        </ul>
                    </div>
                    <!-- Newsletter End -->
                </div>
                <div class="foot-bottom">
                	<!-- Copyrights Start -->
                   
                    <!-- Copyrights End -->
                    <!-- Follow Us and Top Start -->
                    <div class="followus-top">
                    	<a href="#top" class="top">TOP</a>
                        <!-- Follow Us Start -->
                    	<ul>
                        	<li><h6 ><a href="#top" >About Us</a></h6></li>
                        	<li><a  class="facebook">&nbsp;</a></li>
                            <li><a class="twitter">&nbsp;</a></li>
                            <li><a  class="vimeo">&nbsp;</a></li>
                            <li><a class="amazon">&nbsp;</a></li>
                            <li><a  class="apple">&nbsp;</a></li>
                            <li><a class="grooveshark">&nbsp;</a></li>
                            <li><a  class="soundcloud">&nbsp;</a></li>
                        </ul>
                        <!-- Follow Us End -->
                    </div>
                    <!-- Follow Us and Top End -->
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- Outer Wrapper End -->
</body>
</html>
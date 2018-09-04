<%@page import="java.util.ArrayList"%>
<%@page import="schoolhome.core.po.Commodity"%>
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
<link rel="stylesheet" href="indexFolder/css/circle.css">
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
<script type="text/javascript" src="indexFolder/js/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="indexFolder/js/mod.js"></script>
<script type="text/javascript" src="indexFolder/js/circle.js"></script>
<script type="text/javascript" src="indexFolder/js/play.js"></script>

</head>
<body>
<div style="width: 0px; height: 0px;" class="cp-jplayer jquery_jplayer_1">
	<img style="width: 0px; height: 0px; display: none;" id="jp_poster_0">
    <audio src="indexFolder/js/Miaow-07-Bubble.oga" preload="metadata" ></audio>
</div>
<div style="width: 0px; height: 0px;" class="cp-jplayer jquery_jplayer_2">
	<img style="width: 0px; height: 0px; display: none;" id="jp_poster_0">
    <audio src="indexFolder/js/Miaow-07-Bubble.oga" preload="metadata" ></audio>
</div>
<div style="width: 0px; height: 0px;" class="cp-jplayer jquery_jplayer_3">
	<img style="width: 0px; height: 0px; display: none;" id="jp_poster_0">
    <audio src="indexFolder/js/Miaow-07-Bubble.oga" preload="metadata" ></audio>
</div>
<div style="width: 0px; height: 0px;" class="cp-jplayer jquery_jplayer_4">
	<img style="width: 0px; height: 0px; display: none;" id="jp_poster_0">
    <audio src="indexFolder/js/Miaow-07-Bubble.oga" preload="metadata" ></audio>
</div>
<div style="width: 0px; height: 0px;" class="cp-jplayer jquery_jplayer_5">
	<img style="width: 0px; height: 0px; display: none;" id="jp_poster_0">
    <audio src="indexFolder/js/Miaow-07-Bubble.oga" preload="metadata" ></audio>
</div>
<div style="width: 0px; height: 0px;" class="cp-jplayer jquery_jplayer_6">
	<img style="width: 0px; height: 0px; display: none;" id="jp_poster_0">
    <audio src="indexFolder/js/Miaow-07-Bubble.oga" preload="metadata" ></audio>
</div>
<!-- Outer Wrapper Start -->
<div id="outer-wrapper">
	<div class="inner">
    	<!-- Header Start -->
    	<div id="header" class="nomarg">
        	<span class="topbar">&nbsp;</span>
        	<!-- Container Start -->
            <div class="container">
            	<!-- Logo Start -->
            	<div class="five columns left">
                	<a href="index.html" class="logo"><img src="indexFolder/images/logo.png" alt="" /></a>
                </div>
                <!-- Logo End -->
                <div class="eleven columns right">
                	<!-- Top Links Start -->
                    <ul class="top-links">
                    	<li>
                        	<a href="javascript:animatedcollapse.toggle('login-box')">登录</a>
                            
                        <li><a href="#">注册</a></li>
                        <li>
                        	<a href="javascript:animatedcollapse.toggle('search-box')">搜索</a>
                           
                        </li>
                    </ul>
                    <!-- Top Links End -->
                    <!-- Navigation Start -->
                    <div class="navigation">
                    	
                        <div id="smoothmenu1" class="ddsmoothmenu">
                            <ul>
                                <li class="current-menu-item"><a href="/test5/index.action">首页</a></li>
                                <li><a href="/test5/about-us.action">关于我们</a></li>
                                <li><a href="/test5/news.action">新闻</a></li>
                                <li><a href="/test5/commodityList.action">课程</a>
                                    <ul>
                                        <li><a href="/test5/commodityList.action">全部课程</a></li>
                                        <li><a href="#">热门课程</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">&nbsp;</a>
                                   
                                </li>
                                <li><a href="#">&nbsp;</a>
                                	
                                </li>
                                <li><a href="#">&nbsp;</a>
                                   
                                </li>
                                <li><a href="#">&nbsp;</a></li>
                                <li><a href="#">&nbsp;</a></li>
                                <li><a href="contact-us.html">&nbsp;</a></li>
                                <li><a href="contact-us.html">&nbsp;</a></li>
                                <li><a href="contact-us.html">&nbsp;</a></li>
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
        	<!-- Sub Page Banner Start -->
            <div id="sub-banner" class="row">
            </div>
            <!-- Sub Page Banner End -->
            <div class="clear"></div>
        	<!-- Container Start -->
            <div class="container row">
            	<div class="two-thirds column left">
                	<h1 class="heading">课程详情</h1>
                    <!-- Album Detail Start -->
                    <div class="in-sec">
                        <div class="album-detail">
                        	
                        	<%
                        	Commodity commodity = (Commodity)session.getAttribute("commodityDetail");
                        	
                        	%>

                        	
                 	<a href="#" class="thumb"><img src="<%=commodity.getPhoto() %>" alt="" /><span>&nbsp;</span></a>    
                            <div class="desc">
                            	<p class="musicby"><%=commodity.getCommodityName() %></p>
                                <p class="released"><%=commodity.teacherToString() %></p>
                                <h4>内容简介</h4>
                                <p class="txt">
                                <%=commodity.getDescription() %>
                                </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="in-sec">
                        <div class="album-opts">                  
                          
                            <div class="clear"></div>
                        </div>
                    </div>
                    
                    <div class="in-sec">
                        <div class="album-tracks">
                        	
                            <div class="clear"></div>
                        </div>
                    </div>
                    <!-- 评价区Comments Start -->
                    <div class="comments">
                    	<h1 class="heading">热点评价</h1>
                        <ul>
                        	<li>
                            	<div class="avatar">
                                	<a href="#"><img src="indexFolder/images/avatar1.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in">
                                        <span class="pointer">&nbsp;</span>
                                        <div class="text-desc">
                                            <h5><a href="#">王珂</a></h5>
                                            <p class="ago">20个小时前</p>
                                            
                                            <p class="txt">
                                                这节课的最大意义就是让我体会到一切教育改革的重心在于提高课堂效率上。真正的高效率的教学就是师生用最短的时间获得最大的效率。高效课堂作为一种理念,更是一种价值追求,一种教学实践模式。

                                            </p>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="avatar">
                                	<a href="#"><img src="indexFolder/images/avatar2.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in">
                                        <span class="pointer">&nbsp;</span>
                                        <div class="text-desc">
                                            <h5><a href="#">张铭</a></h5>
                                            <p class="ago">2天前</p>
                                            
                                            <p class="txt">
                                                教师的教学效果极佳,可以使同学在领略知识魅力的同时提高自己实际技能。教师教课内容广大博深,高质量,高效率。教课内容新颖,独特,有个性。教师授课表现出来的激情和精神可以深深吸引并打动学生,希望我们的老师可以继续创新,造出更多的精品课。

                                            </p>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li >
                            	<div class="avatar">
                                	<a href="#"><img src="indexFolder/images/avatar3.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in">
                                        <span class="pointer">&nbsp;</span>
                                        <div class="text-desc">
                                            <h5><a href="#">张欣欣</a></h5>
                                            <p class="ago">3天前</p>
                                            
                                            <p class="txt">
                                            	教师课堂上的整体教学效果非常好,教师在教学方面极认真负责,教师的基本知识技能过硬,因此,课上所达到的效果是很好的,指导具有针对性,使同学更容易获得提高。课上教师很注意与学生的互动环节,尤其是赵老师互动的效果很好,语言也很生动、形象。得到同学们的喜爱,教师并未忽视同学们的自己动手的锻炼、课堂互动效果极好。

                                            </p>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li >
                            	<div class="avatar">
                                	<a href="#"><img src="indexFolder/images/avatar4.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in">
                                        <span class="pointer">&nbsp;</span>
                                        <div class="text-desc">
                                            <h5><a href="#">张鸽</a></h5>
                                            <p class="ago">3天前</p>
                                           
                                            <p class="txt">
                                            	老师在授课中,内容深且广,涵盖面广,能联系古今,结合时代背景,在充分了解诗人,词人等古人的人生经历的同时更好地使学生们理解古文学作品的内涵与意蕴,同时在学习中使学生陶冶情操,增加了素养。教学效果显著,合同学们在学好古代文学专业课的同时,增加了人文素质,提高了文学品味,加强自身修养,使学生在轻松活跃的学习氛围中,增长了知识。

                                            </p>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="avatar">
                                	<a href="#"><img src="indexFolder/images/avatar5.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in">
                                        <span class="pointer">&nbsp;</span>
                                        <div class="text-desc">
                                            <h5><a href="#">李芙</a></h5>
                                            <p class="ago">3天前</p>
                                          
                                            <p class="txt">
                                            	教师通过对课本的独到深入的讲解,达到了很好的教学效果,能结合多种教学手段,使学生对知识的掌握更深刻。教学内容重点突出,教学目的十分明确,教师具有极高的专业技能。授课方式新颖别致,激起同学们的兴趣,教师很注重互动,课堂学习氛围轻松愉快,真正达到了教学的目的要求。

                                            </p>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                   
                </div>
                <!-- Album Detail End -->
                <div class="one-third column left">
                	<div class="box-small">
                    	<h1 class="heading"><a href="/test5/commodityList.action">更多课程</a></h1>
                        <div class="box-in">
                        	<!-- 左上方Now Playing Start -->
                        	<div class="list-thumb">
                            	<ul>
                            	<%
                            	ArrayList<Commodity> commodityList = (ArrayList<Commodity>)session.getAttribute("commodityList");
                            	int i=0;
                            	for(Commodity commodityBean: commodityList){
                            		if(commodityBean.getId()!=commodity.getId()){
                            		if(i<3){
                            	%>
                                	<li>
                                    	<a href="commodity-detail.action?id=<%=commodityBean.getId() %>" class="thumb"><img width="64px" height="64px" src="<%=commodityBean.getPhoto() %>" alt="" /></a>
                                        <div class="desc">
                                        	<h5><a href="commodity-detail.action?id=<%=commodityBean.getId() %>"><%=commodityBean.getCommodityName() %></a></h5>
                                            <p><%=commodityBean.getDescription() %></p>
                                            <a href="commodity-detail.action?id=<%=commodityBean.getId() %>" class="readmore">Read More</a>
                                        </div>
                                    </li>
                                   <%i++;}}} %>
                                </ul>
                            </div>
                            <!-- Now Playing End -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="box-small">
                    	<a href="#"><img src="indexFolder/images/advert1.jpg" alt="" /></a>
                        <div class="clear"></div>
                    </div>
                    <div class="box-small">
                        <div class="box-in">
                        	<!-- Now Playing Start -->
                        	<a href="#"><img src="indexFolder/images/facebook.jpg" alt="" /></a>
                            <!-- Now Playing End -->
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <!-- Footer Start -->
           

  <div id="footer">
            	<div class="foot-top">
                	<!-- Footer Logo Start -->
                    <div class="logo-foot">
                    	<a href="#"><img src="indexFolder/images/logo-foot.png" alt="" /></a>
                    </div>
                    <!-- Footer Logo End -->
                    <!-- Footer Navigation Start -->
                    <div class="links-foot">
                    	<ul>
                        	
                        </ul>
                    </div>
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


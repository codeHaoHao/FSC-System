<%@page import="schoolhome.core.po.Commodity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<%
	ArrayList<Commodity> indexCommodityList = (ArrayList<Commodity>)session.getAttribute("indexCommodityList");
if(indexCommodityList==null){
	response.sendRedirect("/test5/index.action");
	return;
}

%>
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
<link rel="stylesheet" href="indexFolder/css/fancybox.css" />
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
<script type="text/javascript" src="indexFolder/js/jquery.infinite-carousel.js"></script>
<script type="text/javascript" src="indexFolder/js/animatedcollapse.js"></script>
<script type="text/javascript" src="indexFolder/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="indexFolder/js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="indexFolder/js/tabs.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery.countdown.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="indexFolder/js/jplayer.playlist.min.js"></script>
<script type="text/javascript" src="indexFolder/js/player.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery.fancybox-1.3.1.js"></script>
<script type="text/javascript" src="indexFolder/js/lightbox.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="indexFolder/js/jquery.mCustomScrollbar.js"></script>

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
            	<!-- <div class="five columns left">
                	<a href="index.html" class="logo"><img src="indexFolder/images/logo.png" alt="" /></a>
                </div> -->
                <!-- Logo End -->
                <div class="eleven columns right">
                	<!-- Top Links Start -->
                    <ul class="top-links">
                    	<li><a href="/test5/returnLogin.action">登录</a></li>
                        <li><a href="/test5/register.action">注册</a></li>
                        <li>
                        	<a href="javascript:animatedcollapse.toggle('search-box')">搜索</a>
                            <div id="search-box">
                            	<input name="" value="Enter any keyword"
                                onfocus="if(this.value=='Enter any keyword') {this.value='';}"
                                onblur="if(this.value=='') {this.value='Enter any keyword';}" type="text" class="bar" />
                                <button class="backcolr">Search</button>
                            </div>
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
                                        <li><a href="#aaa">热门课程</a></li>
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
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
        <div class="inner shadow">
        	<!-- Banner Start -->
            <div id="banner" class="row">
                <div class="slider-wrapper theme-default">
                    <div id="slider" class="nivoSlider">
                        <a href="#"><img src="indexFolder/images/图2.jpg" title="#banner1" alt="" /></a>
                        <a href="#"><img src="indexFolder/images/图3.jpg" title="#banner2" alt="" /></a>
                        <a href="#"><img src="indexFolder/images/图4.jpg" title="#banner3" alt="" /></a>
                        <a href="#"><img src="indexFolder/images/图5.jpg" title="#banner4" alt="" /></a>
                    </div>
                    <!-- Banner Caption Start -->
                    <div id="banner1" class="nivo-html-caption">
                        <div class="capt-heading">
                        	<h1>欢迎 <span class="colr">TO</span> JIALIDUN School</h1>
                            <h1><span class="colr">加利敦高中</span></h1>
                        </div>
                        <div class="capt-text">
                        	<h4 class="white">加利敦高中的起源</h4>
                            <p>
                            	加利敦高中始建于1996年。属 河南省教育厅管辖，是省 重点中学之一，属 商丘专署文教局管辖。 
                            	加利敦高中现为省示范高中，坐落在美丽的在睢州城湖岸边，总占地305486平方米，
                            	分老校区（占地70035平方米）；新校区（占地235451平方米）。
                            </p>
                        </div>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner2" class="nivo-html-caption">
                        <div class="capt-heading">
                        	<h1>欢迎 <span class="colr">To </span> JIALIDUN School</h1>
                            <h1><span class="colr">加利敦高中</span></h1>
                        </div>
                        <div class="capt-text">
                        	<h4 class="white">加利敦高中的起源</h4>
                            <p>
                            	加利敦高中始建于1996年。属 河南省教育厅管辖，是省 重点中学之一，属 商丘专署文教局管辖。 
                            	加利敦高中现为省示范高中，坐落在美丽的在睢州城湖岸边，总占地305486平方米，
                            	分老校区（占地70035平方米）；新校区（占地235451平方米）。
                            </p>
                        </div>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner3" class="nivo-html-caption">
                        <div class="capt-heading">
                        	<h1>欢迎 <span class="colr">To </span> JIALIDUN School</h1>
                            <h1><span class="colr">加利敦高中</span></h1>
                        </div>
                        <div class="capt-text">
                        	<h4 class="white">加利敦高中的起源</h4>
                            <p>
                            	加利敦高中始建于1996年。属 河南省教育厅管辖，是省 重点中学之一，属 商丘专署文教局管辖。 
                            	加利敦高中现为省示范高中，坐落在美丽的在睢州城湖岸边，总占地305486平方米，
                            	分老校区（占地70035平方米）；新校区（占地235451平方米）。
                            </p>
                        </div>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner4" class="nivo-html-caption">
                        <div class="capt-heading">
                        	<h1>欢迎 <span class="colr">To </span> JIALIDUN School</h1>
                            <h1><span class="colr">加利敦高中</span></h1>
                        </div>
                        <div class="capt-text">
                        	<h4 class="white">加利敦高中的起源</h4>
                            <p>
                            	加利敦高中始建于1996年。属 河南省教育厅管辖，是省 重点中学之一，属 商丘专署文教局管辖。 
                            	加利敦高中现为省示范高中，坐落在美丽的在睢州城湖岸边，总占地305486平方米，
                            	分老校区（占地70035平方米）；新校区（占地235451平方米）。
                            </p>
                        </div>
                    </div>
                    <!-- Banner Caption End -->
                </div>
            </div>
            <!-- Banner End -->
            <div class="clear"></div>
            <!-- Container Start -->
            <div class="container row">
            	<!-- Event Counter Start -->
            	<div class="one-third column small-banners">
                	
                </div>
                <!-- Twitter End -->
            </div>
            <!-- Banners End -->
            <div class="container row">
            	<div class="two-thirds column left">
                	<!-- Tabs Section Start -->
                    <div class="tab-section">
                    	<div class="tab-head">
                        	<h1>学校热点</h1>
                            <div class="tab_menu_container">
                                <ul id="tab_menu">  
                                    <li><a class="" rel="tab-news">热点新闻</a></li>
                                    <li><a class="current" rel="tab-gallery">学生活动</a></li>
                                </ul>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="tab_container">
                            <div class="tab_container_in">
                                <div id="tab-news" class="tab-list">	
                                	<!-- News List Start -->				
                                	<ul class="news-list">
                                    	<li>
                                        	<div class="date">
                                            	<h6>筑梦启航</h6>
                                                <h1>7.31</h1>
                                            </div>
                                            <div class="desc">
                                            	<h4><a href="#">我校举行2017级“筑梦启航”精英特训营开营仪式</a></h4>
                                                <p>
                                                	7月31日上午8时，我校2018级“筑梦启航”精英特训营开营仪式在职教中心大礼堂隆重举行。我校校长张广中、副校长冯超，高一年级负责人许洪初、周海军、许培林、陈文明，郑州善朝教育集团李鹏政教练等出席了开营仪式，仪式由副校长冯超主持。<a href="news.html">更多</a>
                                                </p>
                                            </div>
                                        </li>
                                        <li>
                                        	<div class="date">
                                            	<h6>招聘启事</h6>
                                                <h1>6.30</h1>
                                            </div>
                                            <div class="desc">
                                            	<h4><a href="#">【招聘启事】</a></h4>
                                                <p>
                                                	因教学需要，加利顿高中招聘教师，要求师范专业本科及以上学历，有意者请在八月十二日前与孟老师联系，电话13938921679.招聘学科:语文、数学、英语、化学。<a href="news.html">更多</a>
                                                </p>
                                            </div>
                                        </li>
                                        <li>
                                        	<div class="date">
                                            	<h6>缅怀革命先烈 弘扬爱国情怀</h6>
                                                <h1>8.1</h1>
                                            </div>
                                            <div class="desc">
                                            	<h4><a href="#">缅怀革命先烈 弘扬爱国情怀——我校举行2018年“春蕾陪伴一对一” 春蕾生爱国主义教育活动</a></h4>
                                                <p>
                                                	为缅怀先烈的丰功伟绩，祭奠烈士英灵，大力弘扬爱国主义和革命英雄主义精神。7月4日上午8时，我校2018年“春蕾陪伴一对一”春蕾生爱国主义教育活动在睢杞战役烈士陵园举行。<a href="news.html">更多</a>
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                    <!-- News List End -->
                                    <a  name="aaa" href="#" class="button">向上滑动</a>
                                     <a href="#" class="button1">更多热点</a>
                                </div> 
                                <div id="tab-gallery" class="tab-list"> 
                                	<!-- Gallery Small Section Start -->
                                	<ul class="gallery-small">
                                        <li>
                                            <a href="#" class="thumb play"><img src="indexFolder/images/学生活动照片1.jpg" alt="" /></a>
                                            <div class="gal-caption video-bg">
                                				<h3><a href="#" class="play colr">敬老院义务活动</a></h3>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#" class="tip4 thumb"><img src="indexFolder/images/学生活动照片2.png" alt="" /></a>
                                            <div class="gal-caption image-bg">
                                				<h3><a href="#" class="tip4 colr">植树节</a></h3>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#" class="thumb play"><img src="indexFolder/images/学生活动照片3.JPG" alt="" /></a>
                                            <div class="gal-caption video-bg">
                                				<h3><a href="#" class="play colr">红歌会</a></h3>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#" class="tip4 thumb"><img src="indexFolder/images/学生活动照片4.jpg" alt="" /></a>
                                            <div class="gal-caption image-bg">
                                				<h3><a href="#" class="tip4 colr">趣味运动</a></h3>
                                            </div>
                                        </li>
                                        
                                    </ul>
                                    <!-- Gallery Small Section End -->
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Tabs Section End -->
                </div>
                <div class="one-third column left">
                	<div class="box-small">
                    	<h1 class="heading">留言板</h1>
                        <div class="box-in">
                        	<!-- Now Playing Start -->
                        	<div class="nowplaying">
                            	<h5>学校GOOD！</h5>
                                <p>——***家长</p>
                                <div id="jquery_jplayer_2" class="jp-jplayer"></div>
                                <div id="jp_container_2" class="jp-audio">
                                    <div class="jp-type-playlist">
                                        <div class="jp-gui jp-interface">
                                            <ul class="jp-controls">
                                                <li><a href="javascript:;" class="jp-previous" tabindex="1">previous</a></li>
                                                <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                                                <li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
                                                <li><a href="javascript:;" class="jp-next" tabindex="1">next</a></li>
                                                <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
                                                <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                                                <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
                                                <li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
                                            </ul>
                                            <div class="jp-progress">
                                                <div class="jp-seek-bar">
                                                    <div class="jp-play-bar"></div>
                                                </div>
                                            </div>
                                            <div class="jp-volume-bar">
                                                <div class="jp-volume-bar-value"></div>
                                            </div>
                                            <div class="jp-current-time"></div>
                                            <div class="jp-duration"></div>
                                            <ul class="jp-toggles">
                                                <li><a href="javascript:;" class="jp-shuffle" tabindex="1" title="shuffle">shuffle</a></li>
                                                <li><a href="javascript:;" class="jp-shuffle-off" tabindex="1" title="shuffle off">shuffle off</a></li>
                                                <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
                                                <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeat off</a></li>
                                            </ul>
                                        </div>
                                        <div class="">jp-playlist
                                        	<div id="mcs2_container">
                                                <div class="customScrollBox">
                                                    <div class="container">
                                                        <div class="content">
                                                            <ul>
                                                                <li>赞\(≧▽≦)
                                                                	<p>--李先生</p>
                                                                </li>
                                                                <li>这个课程太好了
                                                                	<p>--郝女士</p>
                                                                </li>
                                                                <li>视频模糊，看不清，怎么办
                                                                	<p>--李女士</p>
                                                                </li>
                                                                <li>讲的太好了，不懂的都懂了！！！
                                                                	<p>--张女士</p>
                                                                </li>
                                                                <li>听老师课学会方法复杂题简单化
                                                                	<p>--王先生</p>
                                                                </li>
                                                                <li>讲解细致，很好，值得学生练习！
                                                                	<p>--张先生</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="dragger_container">
                                                        <div class="dragger">&nbsp;</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="jp-no-solution">
                                            <span>Update Required</span>
                                            To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Now Playing End -->
                            <div class="clear"></div>
                        </div>
                        <!-- Buy Now Start -->
                      <!--   <div class="buynow">
                        	<h5 class="white"></h5>
                            <ul>                           	
                                <li><a href="">购买</a></li>
                                <li><a href="">加入购物车</a></li>
                            	
                            </ul>
                        </div> -->
                        <!-- Buy Now End -->
                    </div>
                </div>
            </div>
            <div class="clear"></div>
			<div class="container row hidemobile">
            	<div class="sixteen columns">
                	<!-- Albums Start -->
                	<div class="prod-sec">
                    	<div class="prod-head">
                        	<h1>推荐课程</h1>
                            <a href="/test5/commodityList.action" class="buttonsmall right">更多课程</a>
                            <div class="clear"></div>
                        </div>
                        <ul class="prod-list">
                        	<%
                        	int temp=0;
                        	for(Commodity commodity:indexCommodityList){
                        		if(temp>3)break;
                        	%>
                        	<li>
                            	<a href="album-detail.html" class="thumb"><img src="<%=commodity.getPhoto() %>" alt="" /><span>&nbsp;</span></a>
                                <h4 class="title"><a href="album-detail.html"><%=commodity.getCommodityName() %></a></h4>
                                <p><%=commodity.teacherToString()%></p>
                            </li>
                           <%temp++;} %>
                        </ul>
                    </div>
                    <!-- Albums End -->
                </div>
            </div>
            <div class="clear"></div>
            <!-- Footer Start -->
            <div id="footer">
            	<div class="foot-top">
                	<!-- Footer Logo Start -->
                   <!--  <div class="logo-foot">
                    	<a href="#"><img src="indexFolder/images/logo-foot.png" alt="" /></a>
                    </div> -->
                    <!-- Footer Logo End -->
                    <!-- Footer Navigation Start -->
               <!--      <div class="links-foot">
                    	<ul>
                        	<li><a href="index.html">首页</a></li>
                            <li><a href="news.html">新闻</a></li>
                            <li><a href="about-us">关于我们</a></li>
                            <li><a href="课程.html">课程</a></li>
                            <li><a href="#">&nbsp&nbsp&nbsp</a></li>
                            <li><a href="#">&nbsp&nbsp&nbsp</a></li>
                            <li><a href="#">&nbsp&nbsp&nbsp</a></li>
                        </ul>
                    </div> -->
                    <!-- Footer Navigation End -->
                    <!-- Newsletter Start -->
                    <div class="newsletter">
                    	<h5 class="white">最近热点</h5>
                        <ul>
                        	<li class="left">
                            	<input name="" value="Enter Email Address"
                                onfocus="if(this.value=='Enter Email Address') {this.value='';}"
                                onblur="if(this.value=='') {this.value='Enter Email Address';}" type="text" class="bar" />    
                            </li>
                            <li class="right"><button class="backcolr">Submit</button></li>
                        </ul>
                    </div>
                    <!-- Newsletter End -->
                </div>
                <div class="foot-bottom">
                	<!-- Copyrights Start -->
                    <div class="copyrights">
                    	<p>Copyright More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> 2012</p>
                    </div>
                    <!-- Copyrights End -->
                    <!-- Follow Us and Top Start -->
                    <div class="followus-top">
                    	<a href="#top" class="top">TOP</a>
                        <!-- Follow Us Start -->
                    	<ul>
                        	<li><h6 class="white">Follow Us</h6></li>
                        	<li><a href="#" class="facebook">&nbsp;</a></li>
                            <li><a href="#" class="twitter">&nbsp;</a></li>
                            <li><a href="#" class="vimeo">&nbsp;</a></li>
                            <li><a href="#" class="amazon">&nbsp;</a></li>
                            <li><a href="#" class="apple">&nbsp;</a></li>
                            <li><a href="#" class="grooveshark">&nbsp;</a></li>
                            <li><a href="#" class="soundcloud">&nbsp;</a></li>
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
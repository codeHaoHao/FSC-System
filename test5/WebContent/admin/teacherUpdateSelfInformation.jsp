<%@page import="schoolhome.core.po.Teacher"%>
<%@page import="schoolhome.core.po.Parent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <style type="text/css">
  .container{background-color:#35404d;;width:1500px;height:640px;}
  .header{background-color:#35404d ;font-family:宋体;font-size:20px;font-weight:bold;padding-top:5px;height:45px;margin-bottom:20px;}
   ul{margin:0px;list-style:none;}
   li{float:left;width:100px;margin:px;}
   a{display:block;color:red;text-align:center;padding:9px;}
   a:link{color:black;text-decoration:none;}
   a:hover{background-color:gray;transform:skewX(deg);}
  .pagebody{width:1200px;height:520px;}
  .p1{background-color:grey;color:white;text-align:left;}
  .sidebar{background-color:#666666 ;margin:5px;width:300px;height:520px;float:left;clear:left;}
  .photo1{text-align:center;border-radius:85px;}
  .photo{text-align:center;}
  .mainbody{background-color:white;float:left;clear:right;width:850px;height:520px;margin:5px;font-size:17px;}
  .footer{background-color:black;align-bottom:10px;width:1000px;color:white;font-size:12px;text-align:center;height:40px;}
  .menudiv{width:1px;height:16px;background:white;}
  .nav{padding-left:340px;}
  .p2{padding-left:200px;}
   input#ds{font-weight:bold;}
 
 </style>
 </head>

  <body align="center">
   <div class="container">
    
   <div class="header">
   <font color="white"><p>请在此修改个人信息</p></font>
  </div>


   <div class="pagebody">
     <div class="sidebar">
         <p class="photo"><img src="images/家长.jpg"width="170px"height="170px"class="photo1"></p>
	 <p class="p1">&nbsp&nbsp&nbsp最近照片</p>
	 <p class="photo"><img src="images/01.jpg"width="60"height="60">
	                  <img src="images/02.jpg"width="60"height="60">
	                  <img src="images/03.jpg"width="60"height="60">
	                  <img src="images/04.jpg"width="60"height="60"></p>
	 <p class="photo"><img src="images/05.jpg"width="60"height="60">
	                  <img src="images/06.jpg"width="60"height="60">
                          <img src="images/07.jpg"width="60"height="60">
	                  <img src="images/08.jpg"width="60"height="60"></p>
	 <p class="p1">对网站的满意度</p>
         <p class=p2>
	 <form action="#"method="post">
	  <input type="checkbox"name="basketball"value="basketball">满意<br>
       
          <input type="checkbox"name="tennis"value="tennis">一般<br>
	  <input type="checkbox"name="tennis"value="tennis">差劲<br>
          <input type="submit"value="提交">
	 </form>
         </p>
     
	 </div>
       <div class="mainbody">
	  <p ><img src="images/titlebg.png"width=""height="">&nbsp&nbsp你的信息是：</p>
	  <div style="width:820px;height:0px;border-top:1px black dashed;"/>
		<%
			Teacher teacher = (Teacher)session.getAttribute("userinfor");
		%>
        <form action="teacherExecuteUpdateSelfInformation.action" method="post">
        <input type="hidden" name="id" value="<%=teacher.getId()%>">
  <p>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号: <input type="text" name="userName" value="<%=teacher.getUserName()%>"/></p>
  <p>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码: <input type="text" name="password" value="<%=teacher.getPassword()%>" /></p>
  <p>教师姓名: <input type="text" name="teacherName" value="<%=teacher.getTeacherName()%>"/></p>
  <p>教师性别: <input type="text" name="gender" value="<%=teacher.getGender()%>"/></p>
  <p>年龄: <input type="text" name="age" value="<%=teacher.getAge()%>"/></p>
  <p>手机号: <input type="text" name="telephone" value="<%=teacher.getTelephone()%>"/></p>
  <input type="submit"value="确认修改"id="ds" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="返回教师首页" onclick="window.location.href='/test5/teacherIndex.action'" id="ds">
  </form>


 
</table>	  
</div>
      
</div>

     
     </div>
 </body>
</html>
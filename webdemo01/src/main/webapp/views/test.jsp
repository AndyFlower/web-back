<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>第二个页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	编译后的文件在tomcat路径下，
	其中包括init()：初始化的方法  destory()：销毁之前的方法  service()：对用户请求生成响应三个方法
	-->

  </head>
  
  <body>
    <%
      for(int i=0; i<10 ; i++){
         out.println("<font size='"+i+"'>");
     
     %>
     快乐学习</font>
     <br/>
     <hr/>
     <%
     }
      %>
  </body>
</html>

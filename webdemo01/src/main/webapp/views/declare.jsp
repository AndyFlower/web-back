<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'declare.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
  </head>
   <!-- 下面是JSP声明部分 -->
   <!-- Servlet的容器只有一个实例，在jsp中声明的变量是成员变量，成员变量在创建实例的时候初始化，该值一直保存，直到实例销毁 -->
    <%!
    public int count;
    public String info(){
       return "hello";
    }
    
     %>
  <body>
  <%
  out.println(count++);
   %>
   <hr>
   <%
   out.println(info());
    %>
  </body>
</html>

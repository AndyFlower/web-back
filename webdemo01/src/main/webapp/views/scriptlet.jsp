<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'scriptlet.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table bgcolor="#9999dd" border="1px" width="300px">
    <!-- java脚本，这些脚本会对HTML的标签产生作用 -->
    <%
    for(int i=0;i<10;i++){
    %>
    <!-- 上面的循环在控制<tr>标签循环 -->
    <tr>
    <td>循环值：</td>
    <td><%=i %></td>
    </tr>
    <%
    }
     %>
    </table>
  </body>
</html>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'connDb.jsp' starting page</title>
    
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
    <%
    //注册数据库驱动
    Class.forName("com.mysql.jdbc.Driver");
    //获取数据库连接
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/deve", "root", "123456");
    //创建Statement
    Statement stmt = conn.createStatement();
    //执行查询
    ResultSet rs = stmt.executeQuery("select * from user");
     %>
     <table bgcolor="#9999dd" border="1" width="300px">
     <%
     while(rs.next()){
     %>
     <tr>
     <td><%=rs.getString(1) %></td>
     <td><%=rs.getString(2) %></td>
     <%
     }
      %>
     </table>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/5
  Time: 9:00
  To change this template use File | Settings | File Templates.
  web.xml中版本是2.3页面是不支持EL表达式的，会出现获取不到值的情况，页面开启<%@ page isELIgnored="false" %>
--%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Submitted Student Information</h2>
<table>
    <tr>
        <td>Name</td>
        <td>${name}</td>
    </tr>
    <tr>
        <td>Age</td>
        <td>${age}</td>
    </tr>
    <tr>
        <td>ID</td>
        <td>${id}</td>
    </tr>
</table>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/8
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method = "POST" modelAttribute = "fileUpload"
           enctype = "multipart/form-data">
    Please select a file to upload :
    <input type = "file" name = "file" />
    <input type = "submit" value = "upload" />
</form:form>
</body>
</html>

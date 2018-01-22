<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/8
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .error {
        color: #ff0000;
    }

    .errorblock {
        color: #000;
        background-color: #ffEEEE;
        border: 3px solid #ff0000;
        padding: 8px;
        margin: 16px;
    }
</style>
<body>
<h2>Student Information</h2>
<form:form method = "POST" action = "/addStudent" commandName = "student">
    <form:errors path = "*" cssClass = "errorblock" element = "div" />
    <table>
        <tr>
            <td><form:label path = "name">Name</form:label></td>
            <td><form:input path = "name" /></td>
            <td><form:errors path = "name" cssClass = "error" /></td>
        </tr>
        <tr>
            <td><form:label path = "age">Age</form:label></td>
            <td><form:input path = "age" /></td>
        </tr>
        <tr>
            <td><form:label path = "id">id</form:label></td>
            <td><form:input path = "id" /></td>
        </tr>
        <tr>
            <td colspan = "2">
                <input type = "submit" value = "Submit"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
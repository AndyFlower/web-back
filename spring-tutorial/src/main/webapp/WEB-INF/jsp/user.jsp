<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/5
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>User Information</h2>
<form:form method = "POST" action = "/addUser">
    <table>
        <tr>
            <td><form:label path = "username">User Name</form:label></td>
            <td><form:input path = "username" /></td>
        </tr>
        <tr>
            <td><form:label path = "password">Pass</form:label></td>
            <td><form:password path = "password" /></td>
        </tr>
        <tr>
            <td><form:label path = "address">Address</form:label></td>
            <td><form:textarea path = "address" rows = "5" cols = "30" /></td>
        </tr>
        <tr>
            <td><form:label path = "receivePaper">Subscribe Newsletter</form:label></td>
            <td><form:checkbox path = "receivePaper" /></td>
        </tr>
        <%--<tr>
            <td><form:label path = "favoriteFrameworks">Favorite Web Frameworks</form:label></td>
            <td><form:checkboxes items = "${webFrameworkList}" path = "favoriteFrameworks" /></td>
        </tr>
        <tr>
            <td><form:label path = "country">Country</form:label></td>
            <td>
                <form:select path = "country">
                    <form:option value = "NONE" label = "Select"/>
                    <form:options items = "${countryList}" />
                </form:select>
            </td>
        </tr>
        --%>
        <tr>
            <td><form:label path = "gender">Gender</form:label></td>
            <td>
                <form:radiobutton path = "gender" value = "M" label = "Male" />
                <form:radiobutton path = "gender" value = "F" label = "Female" />
            </td>
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

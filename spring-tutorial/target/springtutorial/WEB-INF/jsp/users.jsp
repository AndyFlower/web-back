<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/5
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Submitted User Information</h2>
<table>
    <tr>
        <td>Username</td>
        <td>${username}</td>
    </tr>
    <tr>
        <td>Password</td>
        <td>${password}</td>
    </tr>
    <tr>
        <td>Address</td>
        <td>${address}</td>
    </tr>
    <tr>
        <td>Subscribed to Newsletter</td>
        <td>${receivePaper}</td>
    </tr>
    <%--<tr>
        <td>Favorite Web Frameworks</td>
        <td> <% String[] favoriteFrameworks = (String[])request.getAttribute("favoriteFrameworks");
            for(String framework: favoriteFrameworks) {
                out.println(framework);
            }
        %></td>
    </tr>
     <tr>
        <td>Country</td>
        <td>${country}</td>
    </tr>
    --%>
    <tr>
        <td>Gender</td>
        <td>${(gender=="M"? "Male" : "Female")}</td>
    </tr>

</table>
</body>
</html>

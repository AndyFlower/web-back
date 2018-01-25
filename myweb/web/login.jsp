<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/23
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <style type="text/css">
        body{
            background:url(http://localhost:8080/myweb/images/logo.jpg);
        }

    </style>
    <script src="<%=basePath%>js/jquery-3.3.1.js"></script>
    <script src="<%=basePath%>js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css"/>


</head>
<body >
<div class="container">



    <div class="row" style="margin-top: 300px;">
        <div class="col-xs-4">
        </div>
        <div class="col-xs-4">
            <form class="form-horizontal">
                <div class="control-group">
                    <label class="control-label" for="inputEmail">邮箱</label>
                    <div class="controls">
                        <input id="inputEmail" type="text" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">密码</label>
                    <div class="controls">
                        <input id="inputPassword" type="password" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox"><input type="checkbox" /> Remember me</label> <button type="submit" class="btn">登陆</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-xs-4">
        </div>
    </div>
</div>
</body>
</html>

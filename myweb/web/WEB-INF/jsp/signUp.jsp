<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/25
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="<%=basePath%>css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link rel="icon" href="favicon.ico" type="image/x-icon" >
    <!-- font-awesome icons -->
    <link href="<%=basePath%>css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--webfonts-->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--//webfonts-->
    <!-- js -->
    <script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
    <!-- //js -->

</head>
<body>
<body class="login-bg">
<div class="login-body">
    <div class="login-heading">
        <h1>Sign up</h1>
    </div>
    <div class="login-info">
        <form action="<%=basePath%>signUpConfirm">
            <input type="text" class="user" name="name" placeholder="Name" required="">
            <input type="text" class="user" name="email" placeholder="Email" required="">
            <input type="password" name="password" class="lock" placeholder="Password">
            <input type="password" name="password2" class="lock" placeholder="Confirm Password">
            <input type="submit" name="Sign In" value="Sign up">
            <div class="signup-text">
                <a href="<%=basePath%>login">Already have an account? Login here.</a>
            </div>
        </form>
    </div>
</div>
<div class="go-back login-go-back">
    <a href="index.html">Go To Home</a>
</div>
<div class="copyright login-copyright">
    <p>Copyright &copy; 2018.Company name All rights reserved</p></div>
</body>

</body>
</html>

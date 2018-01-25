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
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){
            window.scrollTo(0,1);
        }
    </script>
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="<%=basePath%>css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link rel="icon" href="favicon.ico" type="image/x-icon" >
    <!-- font-awesome icons -->
    <link href="<%=basePath%>css/font-awesome.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

    <script src="<%=basePath%>js/jquery-3.3.1.js"></script>


</head>
<body class="login-bg">
<div class="login-body">
    <div class="login-heading">
        <h1>Login</h1>
    </div>
    <div class="login-info">
        <form action="<%=basePath%>loginConfirm">
            <input type="text" class="user" name="email" placeholder="Email" required="">
            <input type="password" name="password" class="lock" placeholder="Password">
            <div class="forgot-top-grids">
                <div class="forgot-grid">
                    <ul>
                        <li>
                            <input type="checkbox" id="brand1" value="">
                            <label for="brand1"><span></span>Remember me</label>
                        </li>
                    </ul>
                </div>
                <div class="forgot">
                    <a href="#">Forgot password?</a>
                </div>
                <div class="clearfix"> </div>
            </div>
            <input type="submit" name="Sign In" value="Login">
            <div class="signup-text">
                <a href="<%=basePath%>signUp">Don't have an account? Create one now</a>
            </div>
            <hr>
            <h2>or login with</h2>
            <div class="login-icons">
                <ul>
                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="dribbble"><i class="fa fa-dribbble"></i></a></li>
                </ul>
            </div>
        </form>
    </div>
</div>
<div class="go-back login-go-back">
    <a href="index.html">Go To Home</a>
</div>
<div class="copyright login-copyright">
    <p>Copyright &copy; 2018.Company name All rights reserved</p>
</div>
</body>

</html>

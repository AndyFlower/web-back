<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>按钮</title>
    <%@ include file="header.jsp"%>
    <link href="css/demo-page.css" rel="stylesheet" media="all">
    <link href="css/hover.css" rel="stylesheet" media="all">



</head>
<body class="cbp-spmenu-push">
<div class="main-content">
    <%@ include file="sidebar.jsp"%>
    <!-- header-starts -->
    <div class="sticky-header header-section ">
        <div class="header-left">
            <!--logo -->
            <div class="logo">
                <a href="index.html">
                    <ul>
                        <li><img src="<%=basePath%>images/logo1.png" alt="" /></li>
                        <li><h1>Baxster</h1></li>
                        <div class="clearfix"> </div>
                    </ul>
                </a>
            </div>
            <!--//logo-->
            <div class="header-right header-right-grid">
                <div class="profile_details_left"><!--notifications of menu start -->
                    <ul class="nofitications-dropdown">
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                            <ul class="dropdown-menu anti-dropdown-menu">
                                <li>
                                    <div class="notification_header">
                                        <h3>You have 3 new messages</h3>
                                    </div>
                                </li>
                                <li><a href="#">
                                    <div class="user_img"><img src="<%=basePath%>images/1.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet</p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li class="odd"><a href="#">
                                    <div class="user_img"><img src="<%=basePath%>images/2.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li><a href="#">
                                    <div class="user_img"><img src="<%=basePath%>images/3.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li>
                                    <div class="notification_bottom">
                                        <a href="#">See all messages</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                            <ul class="dropdown-menu anti-dropdown-menu">
                                <li>
                                    <div class="notification_header">
                                        <h3>You have 3 new notification</h3>
                                    </div>
                                </li>
                                <li><a href="#">
                                    <div class="user_img"><img src="<%=basePath%>images/2.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet</p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li class="odd"><a href="#">
                                    <div class="user_img"><img src="<%=basePath%>images/1.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li><a href="#">
                                    <div class="user_img"><img src="<%=basePath%>images/3.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li>
                                    <div class="notification_bottom">
                                        <a href="#">See all notifications</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
                            <ul class="dropdown-menu anti-dropdown-menu">
                                <li>
                                    <div class="notification_header">
                                        <h3>You have 8 pending task</h3>
                                    </div>
                                </li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar yellow" style="width:40%;"></div>
                                    </div>
                                </a></li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar green" style="width:90%;"></div>
                                    </div>
                                </a></li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar red" style="width: 33%;"></div>
                                    </div>
                                </a></li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar  blue" style="width: 80%;"></div>
                                    </div>
                                </a></li>
                                <li>
                                    <div class="notification_bottom">
                                        <a href="#">See all pending tasks</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="clearfix"> </div>
                </div>
            </div>


            <div class="clearfix"> </div>
        </div>
        <!--search-box-->
        <div class="search-box">
            <form class="input">
                <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />

            </form>
        </div>
        <!--//end-search-box-->
        <div class="header-right">

            <!--notification menu end -->
            <div class="profile_details">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <div class="profile_img">
                                <span class="prfil-img"><img src="<%=basePath%>images/a.png" alt=""> </span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li>
                            <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li>
                            <li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--toggle button start-->
            <button id="showLeftPush"><i class="fa fa-bars"></i></button>
            <!--toggle button end-->
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //header-ends -->
    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page">
            <!--buttons-->
            <div class="grids">
                <div class="progressbar-heading grids-heading">
                    <h2>Buttons</h2>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>2D Transitions</h4>
                    </div>
                    <a href="#" class="hvr-grow">Grow</a>
                    <a href="#" class="hvr-shrink">Shrink</a>
                    <a href="#" class="hvr-pulse">Pulse</a>
                    <a href="#" class="hvr-pulse-grow">Pulse Grow</a>
                    <a href="#" class="hvr-pulse-shrink">Pulse Shrink</a>
                    <a href="#" class="hvr-push">Push</a>
                    <a href="#" class="hvr-pop">Pop</a>
                    <a href="#" class="hvr-bounce-in">Bounce In</a>
                    <a href="#" class="hvr-bounce-out">Bounce Out</a>
                    <a href="#" class="hvr-rotate">Rotate</a>
                    <a href="#" class="hvr-grow-rotate">Grow Rotate</a>
                    <a href="#" class="hvr-float">Float</a>
                    <a href="#" class="hvr-sink">Sink</a>
                    <a href="#" class="hvr-bob">Bob</a>
                    <a href="#" class="hvr-hang">Hang</a>
                    <a href="#" class="hvr-skew">Skew</a>
                    <a href="#" class="hvr-skew-forward">Skew Forward</a>
                    <a href="#" class="hvr-skew-backward">Skew Backward</a>
                    <a href="#" class="hvr-wobble-horizontal">Wobble Horizontal</a>
                    <a href="#" class="hvr-wobble-vertical">Wobble Vertical</a>
                    <a href="#" class="hvr-wobble-to-bottom-right">Wobble To Bottom Right</a>
                    <a href="#" class="hvr-wobble-to-top-right">Wobble To Top Right</a>
                    <a href="#" class="hvr-wobble-top">Wobble Top</a>
                    <a href="#" class="hvr-wobble-bottom">Wobble Bottom</a>
                    <a href="#" class="hvr-wobble-skew">Wobble Skew</a>
                    <a href="#" class="hvr-buzz">Buzz</a>
                    <a href="#" class="hvr-buzz-out">Buzz Out</a>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>Background Transitions</h4>
                    </div>
                    <a href="#" class="hvr-fade">Fade</a>
                    <a href="#" class="hvr-back-pulse">Back Pulse</a>
                    <a href="#" class="hvr-sweep-to-right">Sweep To Right</a>
                    <a href="#" class="hvr-sweep-to-left">Sweep To Left</a>
                    <a href="#" class="hvr-sweep-to-bottom">Sweep To Bottom</a>
                    <a href="#" class="hvr-sweep-to-top">Sweep To Top</a>
                    <a href="#" class="hvr-bounce-to-right">Bounce To Right</a>
                    <a href="#" class="hvr-bounce-to-left">Bounce To Left</a>
                    <a href="#" class="hvr-bounce-to-bottom">Bounce To Bottom</a>
                    <a href="#" class="hvr-bounce-to-top">Bounce To Top</a>
                    <a href="#" class="hvr-radial-out">Radial Out</a>
                    <a href="#" class="hvr-radial-in">Radial In</a>
                    <a href="#" class="hvr-rectangle-in">Rectangle In</a>
                    <a href="#" class="hvr-rectangle-out">Rectangle Out</a>
                    <a href="#" class="hvr-shutter-in-horizontal">Shutter In Horizontal</a>
                    <a href="#" class="hvr-shutter-out-horizontal">Shutter Out Horizontal</a>
                    <a href="#" class="hvr-shutter-in-vertical">Shutter In Vertical</a>
                    <a href="#" class="hvr-shutter-out-vertical">Shutter Out Vertical</a>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>Icons</h4>
                    </div>
                    <a href="#" class="hvr-icon-back">Icon Back</a>
                    <a href="#" class="hvr-icon-forward">Icon Forward</a>
                    <a href="#" class="hvr-icon-down">Icon Down</a>
                    <a href="#" class="hvr-icon-up">Icon Up</a>
                    <a href="#" class="hvr-icon-spin">Icon Spin</a>
                    <a href="#" class="hvr-icon-drop">Icon Drop</a>
                    <a href="#" class="hvr-icon-fade">Icon Fade</a>
                    <a href="#" class="hvr-icon-float-away">Icon Float Away</a>
                    <a href="#" class="hvr-icon-sink-away">Icon Sink Away</a>
                    <a href="#" class="hvr-icon-grow">Icon Grow</a>
                    <a href="#" class="hvr-icon-shrink">Icon Shrink</a>
                    <a href="#" class="hvr-icon-pulse">Icon Pulse</a>
                    <a href="#" class="hvr-icon-pulse-grow">Icon Pulse Grow</a>
                    <a href="#" class="hvr-icon-pulse-shrink">Icon Pulse Shrink</a>
                    <a href="#" class="hvr-icon-push">Icon Push</a>
                    <a href="#" class="hvr-icon-pop">Icon Pop</a>
                    <a href="#" class="hvr-icon-bounce">Icon Bounce</a>
                    <a href="#" class="hvr-icon-rotate">Icon Rotate</a>
                    <a href="#" class="hvr-icon-grow-rotate">Icon Grow Rotate</a>
                    <a href="#" class="hvr-icon-float">Icon Float</a>
                    <a href="#" class="hvr-icon-sink">Icon Sink</a>
                    <a href="#" class="hvr-icon-bob">Icon Bob</a>
                    <a href="#" class="hvr-icon-hang">Icon Hang</a>
                    <a href="#" class="hvr-icon-wobble-horizontal">Icon Wobble Horizontal</a>
                    <a href="#" class="hvr-icon-wobble-vertical">Icon Wobble Vertical</a>
                    <a href="#" class="hvr-icon-buzz">Icon Buzz</a>
                    <a href="#" class="hvr-icon-buzz-out">Icon Buzz Out</a>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>Border Transitions</h4>
                    </div>
                    <a href="#" class="hvr-border-fade">Border Fade</a>
                    <a href="#" class="hvr-hollow">Hollow</a>
                    <a href="#" class="hvr-trim">Trim</a>
                    <a href="#" class="hvr-ripple-out">Ripple Out</a>
                    <a href="#" class="hvr-ripple-in">Ripple In</a>
                    <a href="#" class="hvr-outline-out">Outline Out</a>
                    <a href="#" class="hvr-outline-in">Outline In</a>
                    <a href="#" class="hvr-round-corners">Round Corners</a>
                    <a href="#" class="hvr-underline-from-left">Underline From Left</a>
                    <a href="#" class="hvr-underline-from-center">Underline From Center</a>
                    <a href="#" class="hvr-underline-from-right">Underline From Right</a>
                    <a href="#" class="hvr-reveal">Reveal</a>
                    <a href="#" class="hvr-underline-reveal">Underline Reveal</a>
                    <a href="#" class="hvr-overline-reveal">Overline Reveal</a>
                    <a href="#" class="hvr-overline-from-left">Overline From Left</a>
                    <a href="#" class="hvr-overline-from-center">Overline From Center</a>
                    <a href="#" class="hvr-overline-from-right">Overline From Right</a>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>Shadow and Glow Transitions</h4>
                    </div>
                    <a href="#" class="hvr-shadow">Shadow</a>
                    <a href="#" class="hvr-grow-shadow">Grow Shadow</a>
                    <a href="#" class="hvr-float-shadow">Float Shadow</a>
                    <a href="#" class="hvr-glow">Glow</a>
                    <a href="#" class="hvr-shadow-radial">Shadow Radial</a>
                    <a href="#" class="hvr-box-shadow-outset">Box Shadow Outset</a>
                    <a href="#" class="hvr-box-shadow-inset">Box Shadow Inset</a>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>Speech Bubbles</h4>
                    </div>
                    <a href="#" class="hvr-bubble-top">Bubble Top</a>
                    <a href="#" class="hvr-bubble-right">Bubble Right</a>
                    <a href="#" class="hvr-bubble-bottom">Bubble Bottom</a>
                    <a href="#" class="hvr-bubble-left">Bubble Left</a>
                    <a href="#" class="hvr-bubble-float-top">Bubble Float Top</a>
                    <a href="#" class="hvr-bubble-float-right">Bubble Float Right</a>
                    <a href="#" class="hvr-bubble-float-bottom">Bubble Float Bottom</a>
                    <a href="#" class="hvr-bubble-float-left">Bubble Float Left</a>
                </div>
                <div class="panel panel-widget">
                    <div class="button-heading">
                        <h4>Curls</h4>
                    </div>
                    <a href="#" class="hvr-curl-top-left">Curl Top Left</a>
                    <a href="#" class="hvr-curl-top-right">Curl Top Right</a>
                    <a href="#" class="hvr-curl-bottom-right">Curl Bottom Right</a>
                    <a href="#" class="hvr-curl-bottom-left">Curl Bottom Left</a>
                </div>
            </div>
            <!--//buttons-->

        </div>
    </div>
    <!--footer-->
    <div class="dev-page">
      <%@ include file="footer.jsp"%>
        <!-- /page footer -->
    </div>
    <!--//footer-->
</div>
<!-- Classie -->
<script src="<%=basePath%>js/classie.js"></script>
<script>
    var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
        showLeftPush = document.getElementById( 'showLeftPush' ),
        body = document.body;

    showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        disableOther( 'showLeftPush' );
    };


    function disableOther( button ) {
        if( button !== 'showLeftPush' ) {
            classie.toggle( showLeftPush, 'disabled' );
        }
    }
</script>
<!-- Bootstrap Core JavaScript -->

<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=basePath%>js/dev-loaders.js"></script>
<script type="text/javascript" src="<%=basePath%>js/dev-layout-default.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.marquee.js"></script>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="<%=basePath%>js/jquery.jqcandlestick.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/jqcandlestick.css" />

<!--max-plugin-->
<script type="text/javascript" src="<%=basePath%>js/plugins.js"></script>
<!--//max-plugin-->

<!--scrolling js
<script src="<%=basePath%>js/jquery.nicescroll.js"></script>
<script src="<%=basePath%>js/scripts.js"></script>-->
<!--//scrolling js-->
</body>
</html>


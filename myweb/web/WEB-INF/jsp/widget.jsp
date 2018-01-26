<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>widget</title>
    <%@ include file="header.jsp"%>
    <!-- move-chart -->
    <link rel="stylesheet" href="css/atlas.css" type="text/css" charset="utf-8">
    <!-- //move-chart -->
    <!-- date-picker -->
    <link rel="stylesheet" href="css/bootstrap-material-datetimepicker.css" />
    <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- //date-picker -->
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
            <!--grids-->
            <div class="grids">
                <div class="progressbar-heading grids-heading">
                    <h2>Widgets</h2>
                </div>
                <div class="widget-grids">
                    <!-- move-chart -->
                    <div class="panel panel-widget">
                        <div id="maps">
                            <ul></ul>
                        </div>
                        <canvas id="viewport" width="800" height="600"></canvas>
                    </div>
                    <!-- //move-chart -->
                    <!-- pie-charts -->
                    <div class="panel panel-widget">
                        <div id="content">
                            <h3 id="title"></h3>
                            <div class="demo-container1">
                                <div id="placeholder" class="demo-placeholder1"></div>
                                <div id="menu">
                                    <button id="example-2">Without Legend</button>
                                    <button id="example-3">Label Formatter</button>
                                    <button id="example-4">Label Radius</button>
                                    <button id="example-5">Label Styles #1</button>
                                    <button id="example-6">Label Styles #2</button>
                                    <button id="example-7">Hidden Labels</button>
                                    <button id="example-8">Combined Slice</button>
                                    <button id="example-11">Donut Hole</button>
                                    <button id="example-12">Interactivity</button>
                                </div>
                            </div>

                            <p id="description"></p>

                            <h3>Source Code</h3>
                            <pre><code id="code"></code></pre>
                        </div>
                    </div>
                    <!-- //pie-charts -->
                    <!-- date-picker -->
                    <div class="panel panel-widget">
                        <div class="date-picker-heading">
                            <h3>Bootstrap Material DatePicker</h3>
                        </div>
                        <div class="well">
                            <h4>Date Picker</h4>
                            <div class="form-control-wrapper">
                                <input type="text" id="date" class="form-control floating-label" placeholder="Date">
                            </div>
                        </div>
                        <div class="well">
                            <h4>Time Picker</h4>
                            <div class="form-control-wrapper">
                                <input type="text" id="time" class="form-control floating-label" placeholder="Time">
                            </div>
                        </div>
                        <div class="well">
                            <h4>Date Time Picker</h4>
                            <div class="form-control-wrapper">
                                <input type="text" id="date-format" class="form-control floating-label" placeholder="Begin Date Time">
                            </div>
                        </div>
                        <div class="well">
                            <h4>French Locales (Week starts at Monday)</h4>
                            <div class="form-control-wrapper">
                                <input type="text" id="date-fr" class="form-control floating-label" value="18/03/2015 08:00" placeholder="Date de début">
                            </div>
                        </div>
                        <div class="well">
                            <h4>Min Date set</h4>
                            <div class="form-control-wrapper">
                                <input type="text" id="min-date" class="form-control floating-label" placeholder="Start Date">
                            </div>
                        </div>
                        <div class="well">
                            <h4>Events</h4>
                            <div class="form-control-wrapper">
                                <input type="text" id="date-start" class="form-control floating-label" placeholder="Start Date">
                            </div>
                            <div class="form-control-wrapper">
                                <input type="text" id="date-end" class="form-control floating-label" placeholder="End Date">
                            </div>
                        </div>
                    </div>
                    <!-- //date-picker -->
                </div>
            </div>
            <!--//grids-->

        </div>
    </div>
    <!--footer-->
    <div class="dev-page">

        <!-- page footer -->
        <!-- dev-page-footer-closed dev-page-footer-fixed -->
        <div class="dev-page-footer dev-page-footer-fixed">
            <!-- container -->
            <div class="container">
                <div class="copyright">
                    <p>Copyright &copy; 2018.Company name All rights reserved</p>
                </div>
                <!-- page footer buttons -->
                <ul class="dev-page-footer-buttons">
                    <li><a href="#footer_content_1" class="dev-page-footer-container-open"><span class="glyphicon glyphicon glyphicon-sort" aria-hidden="true"></span></a></li>
                    <li><a href="#footer_content_2" class="dev-page-footer-container-open"><span class="glyphicon glyphicon glyphicon-signal" aria-hidden="true"></span></a></li>
                    <li><a href="#footer_content_3" class="dev-page-footer-container-open"><span class="glyphicon glyphicon glyphicon glyphicon-file" aria-hidden="true"></span></a></li>
                </ul>
                <!-- //page footer buttons -->
                <!-- page footer container -->
                <div class="dev-page-footer-container">

                    <!-- loader and close button -->
                    <div class="dev-page-footer-container-layer">
                        <a href="#" class="dev-page-footer-container-layer-button"></a>
                    </div>
                    <!-- //loader and close button -->

                    <!-- informers -->
                    <div class="dev-page-footer-container-content" id="footer_content_1">
                        <div class="block-hdnews">
                            <div class="list-wrpaaer" style="height:200px;">
                                <ul class="list-aggregate" id="marquee-horizontal">
                                    <li class="fat-l" style="width:300px">
                                        <a href="#">Lorem ipsum dolor</a>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        </p>
                                    </li>

                                    <li class="fat-l" style="width:300px">
                                        <a href="#">Consectetur</a>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        </p>
                                    </li>

                                    <li class="fat-l" style="width:300px">
                                        <a href="#">Adipiscing elit</a>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        </p>
                                    </li>

                                    <li class="fat-l" style="width:300px">
                                        <a href="#">Lorem ipsum dolor</a>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        </p>
                                    </li>
                                    <li class="fat-l" style="width:300px">
                                        <a href="#">Consectetur</a>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        </p>
                                    </li>

                                    <li class="fat-l" style="width:300px">
                                        <a href="#">Adipiscing elit</a>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        </p>
                                    </li>

                                </ul>
                            </div><!-- list-wrpaaer -->

                        </div> <!-- block-hdnews -->

                        <script type="text/javascript">

                            $(function(){


                                $('#marquee-vertical').marquee();
                                $('#marquee-horizontal').marquee({direction:'horizontal', delay:0, timing:50});

                            });

                        </script>
                    </div>
                    <!-- //informers -->

                    <!-- informers -->
                    <div class="dev-page-footer-container-content" id="footer_content_2">
                        <div class="graphs">
                            <div class="col-md-4 graph-points">
                                <div class="graph-left">
                                    <script type="text/javascript">
                                        // Generate data

                                        var data = [];

                                        var time = new Date('Dec 1, 2013 12:00').valueOf();

                                        var h = Math.floor(Math.random() * 100);
                                        var l = h - Math.floor(Math.random() * 20);
                                        var o = h - Math.floor(Math.random() * (h - l));
                                        var c = h - Math.floor(Math.random() * (h - l));

                                        var v = Math.floor(Math.random() * 1000);

                                        for (var i = 0; i < 30; i++) {
                                            data.push([time, o, h, l, c, v]);
                                            h += Math.floor(Math.random() * 10 - 5);
                                            l = h - Math.floor(Math.random() * 20);
                                            o = h - Math.floor(Math.random() * (h - l));
                                            c = h - Math.floor(Math.random() * (h - l));
                                            v += Math.floor(Math.random() * 100 - 50);
                                            time += 30 * 60000; // Add 30 minutes
                                        }
                                    </script>
                                    <div id="example-1"></div>
                                    <script type="text/javascript">
                                        $(function() {
                                            $('#example-1').jqCandlestick({
                                                data: data,
                                                theme: 'light',
                                                series: [{
                                                }],
                                            });
                                        });
                                    </script>
                                </div>
                                <div class="graph-right">
                                    <h3>TODAY'S STATS</h3>
                                    <p>Duis aute irure dolor in reprehenderit.</p>
                                    <ul>
                                        <li>Earning: $400 USD</li>
                                        <li>Items Sold: 20 Items</li>
                                        <li>Last Hour Sales: $34 USD</li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="col-md-4 bar-grid">
                                <div class="graph-left">
                                    <canvas id="line"></canvas>
                                    <script>
                                        var lineChartData = {
                                            labels : ["Mon","Tue","Wed","Thu","Fri","Sat","Mon"],
                                            datasets : [
                                                {
                                                    fillColor : "rgba(202, 202, 202, 0)",
                                                    strokeColor : "#3E495A",
                                                    pointColor : "#fbfbfb",
                                                    pointStrokeColor : "#fbfbfb",
                                                    data : [20,35,45,30,10,65,40]
                                                }
                                            ]

                                        };
                                        new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
                                    </script>
                                </div>
                                <div class="graph-right">
                                    <h3>TODAY'S STATS</h3>
                                    <p>Duis aute irure dolor in reprehenderit.</p>
                                    <ul>
                                        <li>Earning: $400 USD</li>
                                        <li>Items Sold: 20 Items</li>
                                        <li>Last Hour Sales: $34 USD</li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="col-md-4 switch-right">
                                <div class="graph-left">
                                    <canvas id="bar"></canvas>
                                    <script>
                                        var barChartData = {
                                            labels : ["Mon","Tue","Wed","Thu","Fri","Sat","Mon","Tue","Wed","Thu"],
                                            datasets : [
                                                {
                                                    fillColor : "#fbc02d",
                                                    strokeColor : "#fbc02d",
                                                    highlightFill: "rgba(220,220,220,0.75)",
                                                    highlightStroke: "rgba(220,220,220,1)",
                                                    data : [25,40,50,65,55,30,20,10,6,4]
                                                },
                                                {
                                                    fillColor : "#3E495A",
                                                    strokeColor : "#3E495A",
                                                    data : [30,45,55,70,40,25,15,8,5,2]
                                                }
                                            ]

                                        };
                                        new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
                                    </script>
                                </div>
                                <div class="graph-right">
                                    <h3>TODAY'S STATS</h3>
                                    <p>Duis aute irure dolor in reprehenderit.</p>
                                    <ul>
                                        <li>Earning: $400 USD</li>
                                        <li>Items Sold: 20 Items</li>
                                        <li>Last Hour Sales: $34 USD</li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>

                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <!-- //informers -->

                    <!-- projects -->
                    <div class="dev-page-footer-container-content" id="footer_content_3">
                        <div class="social">
                            <div class="col-md-3 top-comment-grid">
                                <div class="comments">
                                    <div class="comments-icon">
                                        <i class="fa fa-comments"></i>
                                    </div>
                                    <div class="comments-info">
                                        <h3>85</h3>
                                            <a href="#">Comments</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-md-3 top-comment-grid">
                                <div class="comments likes">
                                    <div class="comments-icon">
                                        <i class="fa fa-facebook"></i>
                                    </div>
                                    <div class="comments-info likes-info">
                                        <h3>2150</h3>
                                            <a href="#">Likes</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-md-3 top-comment-grid">
                                <div class="comments tweets">
                                    <div class="comments-icon">
                                        <i class="fa fa-twitter"></i>
                                    </div>
                                    <div class="comments-info tweets-info">
                                        <h3>325</h3>
                                            <a href="#">Tweets</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-md-3 top-comment-grid">
                                <div class="comments views">
                                    <div class="comments-icon">
                                        <i class="fa fa-eye"></i>
                                    </div>
                                    <div class="comments-info views-info">
                                        <h3>471</h3>
                                            <a href="#">Views</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <!-- //projects -->
                </div>
                <!-- //page footer container -->

            </div>
            <!-- //container -->
        </div>
        <!-- /page footer -->
    </div>
    <!--//footer-->
</div>
<!-- Classie -->
<script src="js/classie.js"></script>
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
<link href="css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="<%=basePath%>js/jquery.jqcandlestick.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/jqcandlestick.css" />

<!--max-plugin-->
<script type="text/javascript" src="<%=basePath%>js/plugins.js"></script>
<!--//max-plugin-->

<!--scrolling js-->
<script src="<%=basePath%>js/jquery.nicescroll.js"></script>
<script src="<%=basePath%>js/scripts.js"></script>
<!--//scrolling js-->
<!-- move-chart -->
<script src="<%=basePath%>js/arbor.js"></script>
<script src="<%=basePath%>js/atlas.js"></script>
<!-- pie-charts -->
<script language="javascript" type="text/javascript" src="<%=basePath%>js/jquery.flot.js"></script>
<script language="javascript" type="text/javascript" src="<%=basePath%>js/jquery.flot.pie.js"></script>
<script type="text/javascript">

    $(function() {

        // Example Data

        //var data = [
        //	{ label: "Series1",  data: 10},
        //	{ label: "Series2",  data: 30},
        //	{ label: "Series3",  data: 90},
        //	{ label: "Series4",  data: 70},
        //	{ label: "Series5",  data: 80},
        //	{ label: "Series6",  data: 110}
        //];

        //var data = [
        //	{ label: "Series1",  data: [[1,10]]},
        //	{ label: "Series2",  data: [[1,30]]},
        //	{ label: "Series3",  data: [[1,90]]},
        //	{ label: "Series4",  data: [[1,70]]},
        //	{ label: "Series5",  data: [[1,80]]},
        //	{ label: "Series6",  data: [[1,0]]}
        //];

        //var data = [
        //	{ label: "Series A",  data: 0.2063},
        //	{ label: "Series B",  data: 38888}
        //];

        // Randomly Generated Data

        var data = [],
            series = Math.floor(Math.random() * 6) + 3;

        for (var i = 0; i < series; i++) {
            data[i] = {
                label: "Series" + (i + 1),
                data: Math.floor(Math.random() * 100) + 1
            }
        }

        var placeholder = $("#placeholder");

        $("#example-1").click(function() {

            placeholder.unbind();

            $("#title").text("Default pie chart");
            $("#description").text("The default pie chart with no options set.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true
                    }
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true",
                "        }",
                "    }",
                "});"
            ]);
        });

        $("#example-2").click(function() {

            placeholder.unbind();

            $("#title").text("Default without legend");
            $("#description").text("The default pie chart when the legend is disabled. Since the labels would normally be outside the container, the chart is resized to fit.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-3").click(function() {

            placeholder.unbind();

            $("#title").text("Custom Label Formatter");
            $("#description").text("Added a semi-transparent background to the labels and a custom labelFormatter function.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        label: {
                            show: true,
                            radius: 1,
                            formatter: labelFormatter,
                            background: {
                                opacity: 0.8
                            }
                        }
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true,",
                "            radius: 1,",
                "            label: {",
                "                show: true,",
                "                radius: 1,",
                "                formatter: labelFormatter,",
                "                background: {",
                "                    opacity: 0.8",
                "                }",
                "            }",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-4").click(function() {

            placeholder.unbind();

            $("#title").text("Label Radius");
            $("#description").text("Slightly more transparent label backgrounds and adjusted the radius values to place them within the pie.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        label: {
                            show: true,
                            radius: 3/4,
                            formatter: labelFormatter,
                            background: {
                                opacity: 0.5
                            }
                        }
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true,",
                "            radius: 1,",
                "            label: {",
                "                show: true,",
                "                radius: 3/4,",
                "                formatter: labelFormatter,",
                "                background: {",
                "                    opacity: 0.5",
                "                }",
                "            }",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-5").click(function() {

            placeholder.unbind();

            $("#title").text("Label Styles #1");
            $("#description").text("Semi-transparent, black-colored label background.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        label: {
                            show: true,
                            radius: 3/4,
                            formatter: labelFormatter,
                            background: {
                                opacity: 0.5,
                                color: "#000"
                            }
                        }
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: { ",
                "            show: true,",
                "            radius: 1,",
                "            label: {",
                "                show: true,",
                "                radius: 3/4,",
                "                formatter: labelFormatter,",
                "                background: { ",
                "                    opacity: 0.5,",
                "                    color: '#000'",
                "                }",
                "            }",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-6").click(function() {

            placeholder.unbind();

            $("#title").text("Label Styles #2");
            $("#description").text("Semi-transparent, black-colored label background placed at pie edge.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        radius: 3/4,
                        label: {
                            show: true,
                            radius: 3/4,
                            formatter: labelFormatter,
                            background: {
                                opacity: 0.5,
                                color: "#000"
                            }
                        }
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true,",
                "            radius: 3/4,",
                "            label: {",
                "                show: true,",
                "                radius: 3/4,",
                "                formatter: labelFormatter,",
                "                background: {",
                "                    opacity: 0.5,",
                "                    color: '#000'",
                "                }",
                "            }",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-7").click(function() {

            placeholder.unbind();

            $("#title").text("Hidden Labels");
            $("#description").text("Labels can be hidden if the slice is less than a given percentage of the pie (10% in this case).");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        label: {
                            show: true,
                            radius: 2/3,
                            formatter: labelFormatter,
                            threshold: 0.1
                        }
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true,",
                "            radius: 1,",
                "            label: {",
                "                show: true,",
                "                radius: 2/3,",
                "                formatter: labelFormatter,",
                "                threshold: 0.1",
                "            }",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-8").click(function() {

            placeholder.unbind();

            $("#title").text("Combined Slice");
            $("#description").text("Multiple slices less than a given percentage (5% in this case) of the pie can be combined into a single, larger slice.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        combine: {
                            color: "#999",
                            threshold: 0.05
                        }
                    }
                },
                legend: {
                    show: false
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true,",
                "            combine: {",
                "                color: '#999',",
                "                threshold: 0.1",
                "            }",
                "        }",
                "    },",
                "    legend: {",
                "        show: false",
                "    }",
                "});"
            ]);
        });

        $("#example-11").click(function() {

            placeholder.unbind();

            $("#title").text("Donut Hole");
            $("#description").text("A donut hole can be added.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        innerRadius: 0.5,
                        show: true
                    }
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            innerRadius: 0.5,",
                "            show: true",
                "        }",
                "    }",
                "});"
            ]);
        });

        $("#example-12").click(function() {

            placeholder.unbind();

            $("#title").text("Interactivity");
            $("#description").text("The pie can be made interactive with hover and click events.");

            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true
                    }
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            });

            setCode([
                "$.plot('#placeholder', data, {",
                "    series: {",
                "        pie: {",
                "            show: true",
                "        }",
                "    },",
                "    grid: {",
                "        hoverable: true,",
                "        clickable: true",
                "    }",
                "});"
            ]);

            placeholder.bind("plothover", function(event, pos, obj) {

                if (!obj) {
                    return;
                }

                var percent = parseFloat(obj.series.percent).toFixed(2);
                $("#hover").html("<span style='font-weight:bold; color:" + obj.series.color + "'>" + obj.series.label + " (" + percent + "%)</span>");
            });

            placeholder.bind("plotclick", function(event, pos, obj) {

                if (!obj) {
                    return;
                }

                percent = parseFloat(obj.series.percent).toFixed(2);
                alert(""  + obj.series.label + ": " + percent + "%");
            });
        });

        // Show the initial default chart

        $("#example-1").click();

        // Add the Flot version string to the footer

        $("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
    });

    // A custom label formatter used by several of the plots

    function labelFormatter(label, series) {
        return "<div style='font-size:8pt; text-align:center; padding:2px; color:white;'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
    }

    //

    function setCode(lines) {
        $("#code").text(lines.join("\n"));
    }

</script>
<!-- pie-charts -->
<!-- date-picker -->
<script type="text/javascript">
    $(document).ready(function()
    {
        $('#date').bootstrapMaterialDatePicker
        ({
            time: false
        });

        $('#time').bootstrapMaterialDatePicker
        ({
            date: false,
            shortTime: true,
            format: 'HH:mm'
        });

        $('#date-format').bootstrapMaterialDatePicker
        ({
            format: 'dddd DD MMMM YYYY - HH:mm'
        });
        $('#date-fr').bootstrapMaterialDatePicker
        ({
            format: 'DD/MM/YYYY HH:mm',
            lang: 'fr',
            weekStart: 1,
            cancelText : 'ANNULER'
        });

        $('#date-end').bootstrapMaterialDatePicker
        ({
            weekStart: 0, format: 'DD/MM/YYYY HH:mm'
        });
        $('#date-start').bootstrapMaterialDatePicker
        ({
            weekStart: 0, format: 'DD/MM/YYYY HH:mm'
        }).on('change', function(e, date)
        {
            $('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
        });

        $('#min-date').bootstrapMaterialDatePicker({ format : 'DD/MM/YYYY HH:mm', minDate : new Date() });

        $.material.init()
    });
</script>
<script type="text/javascript" src="<%=basePath%>js/material.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/moment-with-locales.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap-material-datetimepicker.js"></script>
<!-- //date-picker -->
</body>
</html>

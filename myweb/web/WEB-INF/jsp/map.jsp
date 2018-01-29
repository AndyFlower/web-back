<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>地图</title>
    <%@include file="header.jsp"%>
    <!-- maps -->
    <link href="<%=basePath%>css/jqvmap.css" media="screen" rel="stylesheet" type="text/css" />
    <!-- //maps -->

</head>
<body class="cbp-spmenu-push">
<div class="main-content">
    <%@include file="sidebar.jsp"%>
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
                    <h2>Maps</h2>
                </div>
                <div class="map-grids">
                    <div class="col-md-6">
                        <div class="map-info">
                            <h3>Vector Map</h3>
                        </div>
                        <div class="panel panel-widget">
                            <div id="vmap"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="map-info">
                            <h3>Interactive Map</h3>
                        </div>
                        <div class="panel panel-widget">
                            <div id="container1"></div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="map-grids">
                    <div class="col-md-6">
                        <div class="map-info">
                            <h3>Pretty Map</h3>
                        </div>
                        <div class="panel panel-widget">
                            <div class="map-canvas"></div>
                            <h5>Examples</h5>
                            <button id="default-map-btn">default</button>
                            <button id="green-map-btn">green</button>
                            <button id="blue-map-btn">blue with controls</button>
                            <button id="grey-map-btn">grey</button>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="map-info">
                            <h3>Default Map</h3>
                        </div>
                        <div class="panel panel-widget">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d6056558.454375799!2d13.59848807125107!3d42.16517993416346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1453718837836"  allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!--//grids-->

        </div>
    </div>
    <!--footer-->
    <div class="dev-page">

        <!-- page footer -->
        <!-- dev-page-footer-closed dev-page-footer-fixed -->
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
<!-- maps -->
<script src="<%=basePath%>js/jquery.vmap.js" type="text/javascript"></script>
<script src="<%=basePath%>js/jquery.vmap.usa.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('#vmap').vectorMap({
            map: 'usa_en',
            enableZoom: true,
            showTooltip: true,
            selectedRegion: 'MO'
        });
    });
</script>

<script src="<%=basePath%>js/datamaps-all.js"></script>
<script src="<%=basePath%>js/map.js"></script>

<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="<%=basePath%>js/prettymaps.js"></script>
<script>

    $(function(){
        //default
        $('.map-canvas').prettyMaps({
            address: ['Melbourne, Australia', 'Richmond, Australia'],
            image: 'map-icon.png',
            hue: '#FF0000',
            saturation: -20
        });

        //red map example
        $('#default-map-btn').on('click', function(){
            $('.map-canvas').prettyMaps();
        });

        //green map example
        $('#green-map-btn').on('click', function(){
            $('.map-canvas').prettyMaps({
                address: ['Melbourne, Australia'],
                image: 'map-icon.png',
                hue: '#00FF55',
                saturation: -30
            });
        });

        //blue map example
        $('#blue-map-btn').on('click', function(){
            $('.map-canvas').prettyMaps({
                image: 'map-icon.png',
                hue: '#0073FF',
                saturation: -30,
                zoom: 16,
                panControl: true,
                zoomControl: true,
                mapTypeControl: true,
                scaleControl: true,
                streetViewControl: true,
                overviewMapControl: true,
                scrollwheel: false,
            });
        });

        //grey map example
        $('#grey-map-btn').on('click', function(){
            $('.map-canvas').prettyMaps({
                image: 'map-icon.png',
                saturation: -100,
                lightness: 10
            });
        });
    });

</script>

</body>

</html>

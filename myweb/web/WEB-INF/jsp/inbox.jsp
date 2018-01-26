<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>inbox</title>
    <%@include file="header.jsp"%>
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
                        <li><img src="<%=basePath%>/logo1.png" alt="" /></li>
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
                    <h2>Inbox</h2>
                </div>
                <div class="panel panel-widget">
                    <div class="inbox-page">
                        <h4>Today</h4>
                        <div class="inbox-row widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i1.png" alt=""></div>
                            <div class="mail mail-name"> <h6>Janiya</h6> </div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <div class="mail"><p>Nullam quis risus eget urna mollis ornare</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>30 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow" id="accordion1" role="tablist" aria-multiselectable="true">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i2.png" alt=""></div>
                            <div class="mail mail-name"><h6>Walsh</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                <div class="mail"><p>Mollis nullam quis risus eget ornare</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>30 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="mail-body">
                                    <p>Quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="images/i3.png" alt=""></div>
                            <div class="mail mail-name"><h6>Skolski</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapsethree">
                                <div class="mail"><p>Ornare vel eu leo nullam quis urna mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>30 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="mail-body">
                                    <p>Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="images/i4.png" alt=""></div>
                            <div class="mail mail-name"><h6>Emoori</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                                <div class="mail"><p>Vely Ornare  leo nullam quis risus mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapsefour">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>30 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <div class="mail-body">
                                    <p> Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget">
                    <div class="inbox-page">
                        <h4>Yesterday Messages</h4>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="images/i2.png" alt=""></div>
                            <div class="mail mail-name"><h6> Walsh </h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                                <div class="mail"><p>Mollis nullam quis risus eget urna  ornare</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>29 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch Nihil.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i1.png" alt=""></div>
                            <div class="mail mail-name"><h6>Janiya</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="true" aria-controls="collapsesix">
                                <div class="mail"><p>Nullam quis risus eget urna mollis ornare</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>29 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsix">
                                <div class="mail-body">
                                    <p>Officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="images/i3.png" alt=""></div>
                            <div class="mail mail-name"><h6>Skolski</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSev" aria-expanded="true" aria-controls="collapsesev">
                                <div class="mail"><p>Ornare vel eu leo nullam quis urna mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSev" aria-expanded="true" aria-controls="collapseSev">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>29 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseSev" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsev">
                                <div class="mail-body">
                                    <p>wolf moon officia aute, non cupidatat skateboard dolor brunch aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="images/i4.png" alt=""></div>
                            <div class="mail mail-name"><h6>Emoori</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="true" aria-controls="collapseEight">
                                <div class="mail"><p>Vely Ornare  leo nullam eget urna mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="true" aria-controls="collapseEight">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>29 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingeight">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget">
                    <div class="inbox-page">
                        <h4>Older Messages</h4>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i2.png" alt=""></div>
                            <div class="mail mail-name"><h6> Walsh</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="true" aria-controls="collapsenine">
                                <div class="mail"><p>Mollis nullam quis risus ornare vel leo</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="true" aria-controls="collapseNine">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>29 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingnine">
                                <div class="mail-body">
                                    <p>Skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i1.png" alt=""></div>
                            <div class="mail mail-name"><h6>Janiya</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTen" aria-expanded="true" aria-controls="collapseTen">
                                <div class="mail"><p>Nullam quis risus mollis ornare leo</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTen" aria-expanded="true" aria-controls="collapseTen">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>28 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapseTen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingten">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i3.png" alt=""></div>
                            <div class="mail mail-name"><h6>Skolski</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="true" aria-controls="collapse11">
                                <div class="mail"><p>Ornare vel quis risus eget urna mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="true" aria-controls="collapse11">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>28 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
                                <div class="mail-body">
                                    <p>Nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i4.png" alt=""></div>
                            <div class="mail mail-name"><h6>Emoori</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="true" aria-controls="collapse12">
                                <div class="mail"><p>Vely Ornare  leo nullam quis risus eget </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="true" aria-controls="collapse12">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>27 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche repreh enderit brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i1.png" alt=""></div>
                            <div class="mail mail-name"><h6>Janiya</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="true" aria-controls="collapse13">
                                <div class="mail"><p>Vely Ornare quis risus eget urna mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="true" aria-controls="collapse13">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>26 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon temsunt </p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i3.png" alt=""></div>
                            <div class="mail mail-name"><h6>Skolski</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse14" aria-expanded="true" aria-controls="collapse14">
                                <div class="mail"><p>Vely Ornare  leo nullam quis risus eget </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="true" aria-controls="collapse15">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>26 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse14" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading14">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i1.png" alt=""></div>
                            <div class="mail mail-name"><h6>Janiya</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="true" aria-controls="collapse15">
                                <div class="mail"><p>Nullam quis risus mollis ornare vel eu leo</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="true" aria-controls="collapse15">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>26 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse15" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading15">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i2.png" alt=""></div>
                            <div class="mail mail-name"><h6> Walsh</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse16" aria-expanded="true" aria-controls="collapse16">
                                <div class="mail"><p>Mollis nullam quis risus eget urna</p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse16" aria-expanded="true" aria-controls="collapse16">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>25 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse16" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading16">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua putica sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i3.png" alt=""></div>
                            <div class="mail mail-name"><h6>Skolski</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse17" aria-expanded="true" aria-controls="collapse17">
                                <div class="mail"><p>Ornare vel eu leo nullam quis urna mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse17" aria-expanded="true" aria-controls="collapse17">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>25 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse17" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading17">
                                <div class="mail-body">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="inbox-row widget-shadow">
                            <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                            <div class="mail"><img src="<%=basePath%>images/i4.png" alt=""></div>
                            <div class="mail mail-name"><h6>Emoori</h6></div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse18" aria-expanded="true" aria-controls="collapse18">
                                <div class="mail"><p>Vely Ornare  leo nullam quis risus mollis </p></div>
                            </a>
                            <div class="mail-right">
                                <div class="dropdown">
                                    <a href="#" data-toggle="dropdown" aria-expanded="false">
                                        <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                    </a>
                                    <ul class="dropdown-menu float-right">
                                        <li>
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse18" aria-expanded="true" aria-controls="collapse18">
                                                <i class="fa fa-reply mail-icon"></i>
                                                Reply
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <i class="fa fa-download mail-icon"></i>
                                                Archive
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="font-red" title="">
                                                <i class="fa fa-trash-o mail-icon"></i>
                                                Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mail-right"><p>10 Dec</p></div>
                            <div class="clearfix"> </div>
                            <div id="collapse18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading18">
                                <div class="mail-body">
                                    <p>Laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                    <form>
                                        <input type="text" placeholder="Reply to sender" required="">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
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

<!--scrolling js-->
<script src="<%=basePath%>js/jquery.nicescroll.js"></script>
<script src="<%=basePath%>js/scripts.js"></script>
<!--//scrolling js-->
</body>
</html>


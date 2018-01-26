<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>typograph</title>
    <%@ include file="header.jsp"%>
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

            <!--typography-->
            <div class="typography">
                <div class="typo-heading">
                    <h2>Short Codes</h2>
                </div>
                <div class="panel panel-widget">
                    <div class="grid_3 grid_4">
                        <h3 class="hdg">Headings</h3>
                        <div class="bs-example">
                            <table class="table">
                                <tbody>
                                <tr>
                                    <td><h1 id="h1">h1. Bootstrap heading<a class="anchorjs-link" href="#h1.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h1></td>
                                    <td class="type-info">Semibold 36px</td>
                                </tr>
                                <tr>
                                    <td><h2 id="h2">h2. Bootstrap heading<a class="anchorjs-link" href="#h2.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h2></td>
                                    <td class="type-info">Semibold 30px</td>
                                </tr>
                                <tr>
                                    <td><h3 id="h3">h3. Bootstrap heading<a class="anchorjs-link" href="#h3.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h3></td>
                                    <td class="type-info">Semibold 24px</td>
                                </tr>
                                <tr>
                                    <td><h4 id="h4">h4. Bootstrap heading<a class="anchorjs-link" href="#h4.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h4></td>
                                    <td class="type-info">Semibold 18px</td>
                                </tr>
                                <tr>
                                    <td><h5 id="h5.-bootstrap-heading">h5. Bootstrap heading<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                    <td class="type-info">Semibold 14px</td>
                                </tr>
                                <tr>
                                    <td><h6>h6. Bootstrap heading</h6></td>
                                    <td class="type-info">Semibold 12px</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Buttons</h3>
                        <div class="but_list">
                            <p>
                                <button type="button" class="btn btn_5 btn-lg btn-default">Default</button>
                                <button type="button" class="btn btn_5 btn-lg btn-primary">Primary</button>
                                <button type="button" class="btn btn_5 btn-lg btn-success warning_1">Success</button>
                                <button type="button" class="btn btn_5 btn-lg btn-info">Info</button>
                                <button type="button" class="btn btn_5 btn-lg btn-warning warning_11">Warning</button>
                                <button type="button" class="btn btn_5 btn-lg btn-danger">Danger</button>
                                <button type="button" class="btn btn_5 btn-lg btn-link">Link</button>
                            </p>
                            <p>
                                <button type="button" class="btn btn-default">Default</button>
                                <button type="button" class="btn btn-primary">Primary</button>
                                <button type="button" class="btn btn-success warning_2">Success</button>
                                <button type="button" class="btn btn-info">Info</button>
                                <button type="button" class="btn btn-warning warning_22">Warning</button>
                                <button type="button" class="btn btn-danger">Danger</button>
                                <button type="button" class="btn btn-link">Link</button>
                            </p>
                            <p>
                                <button type="button" class="btn btn-sm btn-default">Default</button>
                                <button type="button" class="btn btn-sm btn-primary">Primary</button>
                                <button type="button" class="btn btn-sm btn-success warning_3">Success</button>
                                <button type="button" class="btn btn-sm btn-info">Info</button>
                                <button type="button" class="btn btn-sm btn-warning warning_33">Warning</button>
                                <button type="button" class="btn btn-sm btn-danger">Danger</button>
                                <button type="button" class="btn btn-sm btn-link">Link</button>
                            </p>
                            <p>
                                <button type="button" class="btn btn-xs btn-default">Default</button>
                                <button type="button" class="btn btn-xs btn-primary">Primary</button>
                                <button type="button" class="btn btn-xs btn-success warning_4">Success</button>
                                <button type="button" class="btn btn-xs btn-info">Info</button>
                                <button type="button" class="btn btn-xs btn-warning warning_44">Warning</button>
                                <button type="button" class="btn btn-xs btn-danger">Danger</button>
                                <button type="button" class="btn btn-xs btn-link">Link</button>
                            </p>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Labels</h3>
                        <div class="but_list">
                            <h1>
                                <span class="label btn_6 label-default">Default</span>
                                <span class="label btn_6 label-primary">Primary</span>
                                <span class="label btn_6 label-success">Success</span>
                                <span class="label btn_6 label-info">Info</span>
                                <span class="label btn_6 label-warning">Warning</span>
                                <span class="label btn_6 label-danger">Danger</span>
                            </h1>
                            <h2>
                                <span class="label btn_7 label-default">Default</span>
                                <span class="label btn_7 label-primary">Primary</span>
                                <span class="label btn_7 label-success">Success</span>
                                <span class="label btn_7 label-info">Info</span>
                                <span class="label btn_7 label-warning">Warning</span>
                                <span class="label btn_7 label-danger">Danger</span>
                            </h2>
                            <h3>
                                <span class="label label-default">Default</span>
                                <span class="label label-primary">Primary</span>
                                <span class="label label-success">Success</span>
                                <span class="label label-info">Info</span>
                                <span class="label label-warning">Warning</span>
                                <span class="label label-danger">Danger</span>
                            </h3>
                            <h4>
                                <span class="label label-default">Default</span>
                                <span class="label label-primary">Primary</span>
                                <span class="label label-success">Success</span>
                                <span class="label label-info">Info</span>
                                <span class="label label-warning">Warning</span>
                                <span class="label label-danger">Danger</span>
                            </h4>
                            <h5>
                                <span class="label label-default">Default</span>
                                <span class="label label-primary">Primary</span>
                                <span class="label label-success">Success</span>
                                <span class="label label-info">Info</span>
                                <span class="label label-warning">Warning</span>
                                <span class="label label-danger">Danger</span>
                            </h5>
                            <h6>
                                <span class="label label-default">Default</span>
                                <span class="label label-primary">Primary</span>
                                <span class="label label-success">Success</span>
                                <span class="label label-info">Info</span>
                                <span class="label label-warning">Warning</span>
                                <span class="label label-danger">Danger</span>
                            </h6>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Progress Bars</h3>
                        <div class="tab-content">
                            <div class="tab-pane active" id="domprogress">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" style="width: 20%"></div>
                                </div>
                                <p>Info with <code>progress-bar-info</code> class.</p>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info" style="width: 60%"></div>
                                </div>
                                <p>Success with <code>progress-bar-success</code> class.</p>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" style="width: 30%"></div>
                                </div>
                                <p>Warning with <code>progress-bar-warning</code> class.</p>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning" style="width: 70%"></div>
                                </div>
                                <p>Danger with <code>progress-bar-danger</code> class.</p>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger" style="width: 50%"></div>
                                </div>
                                <p>Inverse with <code>progress-bar-inverse</code> class.</p>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-inverse" style="width: 40%"></div>
                                </div>
                                <p>Inverse with <code>progress-bar-inverse</code> class.</p>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
                                    <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
                                    <div class="progress-bar progress-bar-danger" style="width: 10%"><span class="sr-only">10% Complete (danger)</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Alerts</h3>
                        <div class="but_list">
                            <div class="alert alert-success" role="alert">
                                <strong>Well done!</strong> You successfully read this important alert message.
                            </div>
                            <div class="alert alert-info" role="alert">
                                <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                            </div>
                            <div class="alert alert-warning" role="alert">
                                <strong>Warning!</strong> Best check yo self, you're not looking too good.
                            </div>
                            <div class="alert alert-danger" role="alert">
                                <strong>Oh snap!</strong> Change a few things up and try submitting again.
                            </div>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Pagination</h3>
                        <div class="col-md-6 page_1">
                            <nav>
                                <ul class="pagination pagination-lg">
                                    <li><a href="#" aria-label="Previous"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </nav>
                            <nav>
                                <ul class="pagination">
                                    <li><a href="#" aria-label="Previous"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </nav>
                            <nav>
                                <ul class="pagination pagination-sm">
                                    <li><a href="#" aria-label="Previous"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-md-6 page_1">
                            <ul class="pagination pagination-lg">
                                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                            <nav>
                                <ul class="pagination">
                                    <li class="disabled"><a href="#" aria-label="Previous"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </nav>
                            <ul class="pagination pagination-sm">
                                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Breadcrumbs</h3>
                        <div class="but_list">
                            <ol class="breadcrumb">
                                <li class="active">Home</li>
                            </ol>
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li class="active">Library</li>
                            </ol>
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Library</a></li>
                                <li class="active">Data</li>
                            </ol>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Badges</h3>
                        <div class="but_list">
                            <div class="col-md-6 page_1">
                                <p>Add modifier classes to change the appearance of a badge.</p>
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th width="50%">Classes</th>
                                        <th width="50%">Badges</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>No modifiers</td>
                                        <td><span class="badge1">42</span></td>
                                    </tr>
                                    <tr>
                                        <td><code>.badge-primary</code></td>
                                        <td><span class="badge1 badge-primary">1</span></td>
                                    </tr>
                                    <tr>
                                        <td><code>.badge-success</code></td>
                                        <td><span class="badge1 badge-success">22</span></td>
                                    </tr>
                                    <tr>
                                        <td><code>.badge-info</code></td>
                                        <td><span class="badge1 badge-info">30</span></td>
                                    </tr>
                                    <tr>
                                        <td><code>.badge-warning</code></td>
                                        <td><span class="badge1 badge-warning">412</span></td>
                                    </tr>
                                    <tr>
                                        <td><code>.badge-danger</code></td>
                                        <td><span class="badge1 badge-danger">999</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-6 page_1">
                                <p>Easily highlight new or unread items with the <code>.badge</code> class</p>
                                <div class="list-group list-group-alternate">
                                    <a href="#" class="list-group-item"><span class="badge1">201</span> <i class="ti ti-email"></i> Inbox </a>
                                    <a href="#" class="list-group-item"><span class="badge1 badge-primary">5021</span> <i class="ti ti-eye"></i> Profile visits </a>
                                    <a href="#" class="list-group-item"><span class="badge1">14</span> <i class="ti ti-headphone-alt"></i> Call </a>
                                    <a href="#" class="list-group-item"><span class="badge1">20</span> <i class="ti ti-comments"></i> Messages </a>
                                    <a href="#" class="list-group-item"><span class="badge1 badge-warning">14</span> <i class="ti ti-bookmark"></i> Bookmarks </a>
                                    <a href="#" class="list-group-item"><span class="badge1 badge-danger">30</span> <i class="ti ti-bell"></i> Notifications </a>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Tabs</h3>
                        <div class="but_list">
                            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                                <ul id="myTab" class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Home</a></li>
                                    <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Profile</a></li>
                                    <li role="presentation" class="dropdown">
                                        <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                                            <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">@fat</a></li>
                                            <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div id="myTabContent" class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                                        <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
                                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
                                        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid_3 grid_5">
                        <h3>Wells</h3>
                        <div class="but_list">
                            <div class="well">
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                            </div>
                            <div class="well">
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here
                            </div>
                            <div class="well">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--//typography-->
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
</body>

</html>
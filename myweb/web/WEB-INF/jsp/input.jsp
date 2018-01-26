<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>input</title>
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
                                <span class="prfil-img"><img src="images/a.png" alt=""> </span>
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
                    <h2>Forms</h2>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class="form-grids widget-shadow" data-example-id="basic-forms">
                            <div class="form-title">
                                <h4>Basic Form :</h4>
                            </div>
                            <div class="form-body">
                                <form> <div class="form-group"> <label for="exampleInputEmail1">Email address</label> <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email"> </div> <div class="form-group"> <label for="exampleInputPassword1">Password</label> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> </div> <div class="form-group"> <label for="exampleInputFile">File input</label> <input type="file" id="exampleInputFile"> <p class="help-block">Example block-level help text here.</p> </div> <div class="checkbox"> <label> <input type="checkbox"> Check me out </label> </div> <button type="submit" class="btn btn-default">Submit</button> </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class=" form-grids form-grids-right">
                            <div class="widget-shadow " data-example-id="basic-forms">
                                <div class="form-title">
                                    <h4>Horizontal form :</h4>
                                </div>
                                <div class="form-body">
                                    <form class="form-horizontal"> <div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Email</label> <div class="col-sm-9"> <input type="email" class="form-control" id="inputEmail3" placeholder="Email"> </div> </div> <div class="form-group"> <label for="inputPassword3" class="col-sm-2 control-label">Password</label> <div class="col-sm-9"> <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> </div> </div> <div class="form-group"> <div class="col-sm-offset-2 col-sm-10"> <div class="checkbox"> <label> <input type="checkbox"> Remember me </label> </div> </div> </div> <div class="col-sm-offset-2"> <button type="submit" class="btn btn-default">Sign in</button> </div> </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class="inline-form widget-shadow">
                            <div class="form-title">
                                <h4>Inline form Example 1 :</h4>
                            </div>
                            <div class="form-body">
                                <div data-example-id="simple-form-inline"> <form class="form-inline"> <div class="form-group"> <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email"> </div> <div class="form-group"> <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password"> </div> <div class="checkbox"> <label> <input type="checkbox"> Remember me </label> </div> <button type="submit" class="btn btn-default">Sign in</button> </form> </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class="form-two widget-shadow">
                            <div class="form-title">
                                <h4>Inline form Example 2 :</h4>
                            </div>
                            <div class="form-body" data-example-id="simple-form-inline">
                                <form class="form-inline"> <div class="form-group"> <label for="exampleInputName2">Name</label> <input type="text" class="form-control" id="exampleInputName2" placeholder="Your name"> </div> <div class="form-group"> <label for="exampleInputEmail2">Email</label> <input type="email" class="form-control" id="exampleInputEmail2" placeholder="mail.abc@example.com"> </div> <button type="submit" class="btn btn-default">Send invitation</button> </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="progressbar-heading general-heading">
                        <h4>General Form :</h4>
                    </div>
                    <div class="forms">
                        <h3 class="title1"></h3>
                        <div class="form-three widget-shadow">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="focusedinput" class="col-sm-2 control-label">Focused Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1" id="focusedinput" placeholder="Default Input">
                                    </div>
                                    <div class="col-sm-2">
                                        <p class="help-block">Your help text!</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="disabledinput" class="col-sm-2 control-label">Disabled Input</label>
                                    <div class="col-sm-8">
                                        <input disabled="" type="text" class="form-control1" id="disabledinput" placeholder="Disabled Input">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-8">
                                        <input type="password" class="form-control1" id="inputPassword" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="checkbox" class="col-sm-2 control-label">Checkbox</label>
                                    <div class="col-sm-8">
                                        <div class="checkbox-inline1"><label><input type="checkbox"> Unchecked</label></div>
                                        <div class="checkbox-inline1"><label><input type="checkbox" checked=""> Checked</label></div>
                                        <div class="checkbox-inline1"><label><input type="checkbox" disabled=""> Disabled Unchecked</label></div>
                                        <div class="checkbox-inline1"><label><input type="checkbox" disabled="" checked=""> Disabled Checked</label></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="checkbox" class="col-sm-2 control-label">Checkbox Inline</label>
                                    <div class="col-sm-8">
                                        <div class="checkbox-inline"><label><input type="checkbox"> Unchecked</label></div>
                                        <div class="checkbox-inline"><label><input type="checkbox" checked=""> Checked</label></div>
                                        <div class="checkbox-inline"><label><input type="checkbox" disabled=""> Disabled Unchecked</label></div>
                                        <div class="checkbox-inline"><label><input type="checkbox" disabled="" checked=""> Disabled Checked</label></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="selector1" class="col-sm-2 control-label">Dropdown Select</label>
                                    <div class="col-sm-8"><select name="selector1" id="selector1" class="form-control1">
                                        <option>Lorem ipsum dolor sit amet.</option>
                                        <option>Dolore, ab unde modi est!</option>
                                        <option>Illum, fuga minus sit eaque.</option>
                                        <option>Consequatur ducimus maiores voluptatum minima.</option>
                                    </select></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Multiple Select</label>
                                    <div class="col-sm-8">
                                        <select multiple="" class="form-control1">
                                            <option>Option 1</option>
                                            <option>Option 2</option>
                                            <option>Option 3</option>
                                            <option>Option 4</option>
                                            <option>Option 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="txtarea1" class="col-sm-2 control-label">Textarea</label>
                                    <div class="col-sm-8"><textarea name="txtarea1" id="txtarea1" cols="50" rows="4" class="form-control1"></textarea></div>
                                </div>
                                <div class="form-group">
                                    <label for="radio" class="col-sm-2 control-label">Radio</label>
                                    <div class="col-sm-8">
                                        <div class="radio block"><label><input type="radio"> Unchecked</label></div>
                                        <div class="radio block"><label><input type="radio" checked=""> Checked</label></div>
                                        <div class="radio block"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
                                        <div class="radio block"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="radio" class="col-sm-2 control-label">Radio Inline</label>
                                    <div class="col-sm-8">
                                        <div class="radio-inline"><label><input type="radio"> Unchecked</label></div>
                                        <div class="radio-inline"><label><input type="radio" checked=""> Checked</label></div>
                                        <div class="radio-inline"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
                                        <div class="radio-inline"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="smallinput" class="col-sm-2 control-label label-input-sm">Small Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1 input-sm" id="smallinput" placeholder="Small Input">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="mediuminput" class="col-sm-2 control-label">Medium Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1" id="mediuminput" placeholder="Medium Input">
                                    </div>
                                </div>
                                <div class="form-group mb-n">
                                    <label for="largeinput" class="col-sm-2 control-label label-input-lg">Large Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1 input-lg" id="largeinput" placeholder="Large Input">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="progressbar-heading general-heading">
                        <h4>General Form :</h4>
                    </div>
                    <div class="forms">
                        <div class="form-three widget-shadow">
                            <div data-example-id="form-validation-states-with-icons"> <form> <div class="form-group has-success has-feedback"> <label class="control-label" for="inputSuccess2">Input with success</label> <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status"> <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span> <span id="inputSuccess2Status" class="sr-only">(success)</span> </div> <div class="form-group has-warning has-feedback"> <label class="control-label" for="inputWarning2">Input with warning</label> <input type="text" class="form-control" id="inputWarning2" aria-describedby="inputWarning2Status"> <span class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span> <span id="inputWarning2Status" class="sr-only">(warning)</span> </div> <div class="form-group has-error has-feedback"> <label class="control-label" for="inputError2">Input with error</label> <input type="text" class="form-control" id="inputError2" aria-describedby="inputError2Status"> <span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span> <span id="inputError2Status" class="sr-only">(error)</span> </div> <div class="form-group has-success has-feedback"> <label class="control-label" for="inputGroupSuccess1">Input group with success</label> <div class="input-group"> <span class="input-group-addon">@</span> <input type="text" class="form-control" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status"> </div> <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span> <span id="inputGroupSuccess1Status" class="sr-only">(success)</span> </div> </form> </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class="form-three widget-shadow">
                            <div class=" panel-body-inputin">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Email Address</label>
                                        <div class="col-md-8">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</span>
                                                <input type="text" class="form-control1" placeholder="Email Address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Password</label>
                                        <div class="col-md-8">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="fa fa-key"></i>
													</span>
                                                <input type="password" class="form-control1" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Email Address</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</span>
                                                <input id="email" class="form-control1" type="text" placeholder="Email Address">
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">With tooltip</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Password</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-key"></i>
													</span>
                                                <input type="password" class="form-control1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">With tooltip</p>
                                        </div>
                                    </div>
                                    <div class="form-group has-success">
                                        <label class="col-md-2 control-label">Input Addon Success</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</span>
                                                <input id="email" class="form-control1" type="text" placeholder="Email Address">
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">Email is valid!</p>
                                        </div>
                                    </div>
                                    <div class="form-group has-error">
                                        <label class="col-md-2 control-label">Input Addon Error</label>
                                        <div class="col-md-8">
                                            <div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-key"></i>
													</span>
                                                <input type="password" class="form-control1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">Error!</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Checkbox Addon</label>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="input-group-addon"><input type="checkbox"></div>
                                                <input type="text" class="form-control1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Checkbox Addon</label>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <input type="text" class="form-control1">
                                                <div class="input-group-addon"><input type="checkbox"></div>

                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">Checkbox on right</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Radio Addon</label>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <div class="input-group-addon"><input type="radio"></div>
                                                <input type="text" class="form-control1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Radio Addon</label>
                                        <div class="col-md-8">
                                            <div class="input-group">
                                                <input type="text" class="form-control1">
                                                <div class="input-group-addon"><input type="radio"></div>

                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">Radio on right</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Input Processing</label>
                                        <div class="col-md-8">
                                            <div class="input-icon right spinner">
                                                <i class="fa fa-fw fa-spin fa-spinner"></i>
                                                <input id="email" class="form-control1" type="text" placeholder="Processing...">
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <p class="help-block">Processing right</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Static Paragraph</label>
                                        <div class="col-md-8">
                                            <p class="form-control1 m-n">email@example.com</p>
                                        </div>
                                    </div>
                                    <div class="form-group mb-n">
                                        <label class="col-md-2 control-label">Readonly</label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control1" placeholder="Readonly" readonly="">
                                        </div>
                                    </div>
                                </form>
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
                    <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
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
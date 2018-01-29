<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form</title>
    <%@include file="header.jsp"%>
</head>
<body>
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
                    <h2>Input Forms</h2>
                </div>
                <div class="forms-grids">
                    <div class="col-md-6">
                        <div class="panel panel-widget">
                            <div class="my-div">
                                <form method="post" action="" class="valida" >
                                    <div class="input-info">
                                        <h3>Input Texts:</h3>
                                    </div>
                                    <label for="field-1" >Field 1.1: (required)</label>
                                    <div class="form-group" >
                                        <input type="text" name="field-1" id="field-1" required="true" class="form-control" />
                                    </div>

                                    <label for="field-1-2" >Field 1.2: (not required, filter: date)</label>
                                    <div class="form-group" >
                                        <input type="text" name="field-1-2" id="field-1-2" filter="date" class="form-control"
                                               data-invalid="Given value must be a valid date formated as 0000-00-00"  />
                                    </div>

                                    <label for="field-1-3" >Field 1.3: (required, filter: greater_than:10|less_than:15)</label>
                                    <div class="form-group" >
                                        <input type="text" name="field-1-3" id="field-1-3"
                                               required="true" filter="greater_than:10|less_than:15" class="form-control"
                                               data-required="Given value must be between 10 and 15" />
                                    </div>

                                    <div class="row" >

                                        <div class="col-xs-12 col-sm-5" >

                                            <label for="field-1-2" >Field 1.4.1: (required, filter: email)</label>
                                            <div class="form-group" >
                                                <input type="text" name="field-1-4-1" id="field-1-4-1" filter="email" class="form-control" required="true"
                                                       data-invalid="Must be a valid email address"  />
                                            </div>

                                        </div>

                                        <div class="col-xs-12 col-sm-7" >

                                            <label for="field-1-2" >Field 1.4.2: (required, filter: email|matches:field-1-4-1)</label>
                                            <div class="form-group" >
                                                <input type="text" name="field-1-4-2" id="field-1-4-2" filter="email|matches:field-1-4-1" class="form-control" required="true"
                                                       data-invalid="Must be a valid email address and match field 1.4.1's value"  />
                                            </div>

                                        </div>

                                    </div>

                                    <hr >

                                    <h4 >SELECTS:</h4>

                                    <label for="field-2" >Field 2: (required)</label>
                                    <div class="form-group" >
                                        <select name="field-2" id="field-2" required="true" class="form-control" >
                                            <option value=""></option>
                                            <option value="val-1">Value 1</option>
                                            <option value="val-2">Value 2</option>
                                        </select>
                                    </div>

                                    <hr >

                                    <h4 >TEXTAREAS:</h4>

                                    <label for="field-4" >Field 4.1: (required)</label>
                                    <div class="form-group" >
                                        <textarea name="field-4" id="field-4" required="true" class="form-control" ></textarea>
                                    </div>

                                    <label for="field-4-2" >Field 4.2: (required, maxlength: 10)</label>
                                    <div class="form-group" >
                                        <textarea name="field-4-2" id="field-4-2" required="true" maxlength="10" class="form-control" ></textarea>
                                    </div>

                                    <hr >
                                    <p>
                                        <input type="submit" name="sub-1" value="Submit" class="btn btn-primary" />
                                        <input type="reset" name="res-1" id="res-1" value="Reset" class="btn btn-danger"  />
                                    </p>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-widget">
                            <div class="validation-grids widget-shadow" data-example-id="basic-forms">
                                <div class="input-info">
                                    <h3>Register Form :</h3>
                                </div>
                                <div class="form-body form-body-info">
                                    <form data-toggle="validator" novalidate="true">
                                        <div class="form-group valid-form">
                                            <input type="text" class="form-control" id="inputName" placeholder="Username" required="">
                                        </div>
                                        <div class="form-group has-feedback">
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required="">
                                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                                            <span class="help-block with-errors">Please enter a valid email address</span>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required="">
                                            <span class="help-block">Minimum of 6 characters</span>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm password" required="">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="gender" required="">
                                                    Female
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="gender" required="">
                                                    Male
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="terms" data-error="Before you wreck yourself" required="">
                                                    I have read and accept terms of use.
                                                </label>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary disabled">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-widget">
                            <div class="validation-grids validation-grids-right">
                                <div class="widget-shadow login-form-shadow" data-example-id="basic-forms">
                                    <div class="input-info">
                                        <h3>Login form :</h3>
                                    </div>
                                    <div class="form-body form-body-info">
                                        <form data-toggle="validator" novalidate="true">
                                            <div class="form-group has-feedback">
                                                <input type="email" class="form-control" id="inputEmail" placeholder="Enter Your Email" data-error="Bruh, that email address is invalid" required="">
                                                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required="">
                                            </div>
                                            <div class="bottom">
                                                <div class="form-group">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" id="terms" data-error="Before you wreck yourself" required="">
                                                            Remember me
                                                        </label>
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-primary disabled">Login</button>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-widget">
                            <div class="inline-form widget-shadow">
                                <div class="input-info">
                                    <h3>Recover form :</h3>
                                </div>
                                <div class="form-body form-body-info">
                                    <form data-toggle="validator" novalidate="true">
                                        <div class="form-group has-feedback">
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required="">
                                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Enter your phone number" required="">
                                        </div>
                                        <div class="bottom">
                                            <div class="form-group recover-button">
                                                <button type="submit" class="btn btn-primary disabled">Login</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
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
       <%@include file="footer.jsp"%>
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
<!-- input-forms -->
<script type="text/javascript" src="<%=basePath%>js/valida.2.1.6.min.js"></script>
<script type="text/javascript" >

    $(document).ready(function() {

        // show Valida's version.
        $('#version').valida( 'version' );

        // Exemple 1
        $('.valida').valida();

        // Exemple 2
        /*
         $('.valida').valida({

         // basic settings
         validate: 'novalidate',
         autocomplete: 'off',
         tag: 'p',

         // default messages
         messages: {
         submit: 'Wait ...',
         required: 'Este campo é obrigatório',
         invalid: 'Field with invalid data',
         textarea_help: 'Digitados <span class="at-counter">{0}</span> de {1}'
         },

         // filters & callbacks
         use_filter: true,

         // a callback function that will be called right before valida runs.
         // it must return a boolan value (true for good results and false for errors)
         before_validate: null,

         // a callback function that will be called right after valida runs.
         // it must return a boolan value (true for good results and false for errors)
         after_validate: null

         });
         */

        // setup the partial validation
        $('#partial-1').on('click', function( ev ) {
            ev.preventDefault();
            $('#res-1').click(); // clear form error msgs
            $('form').valida('partial', '#field-1'); // validate only field-1
            $('form').valida('partial', '#field-1-3'); // validate only field-1-3
        });

    });

</script>
<!-- //input-forms -->
<!--validator js-->
<script src="<%=basePath%>js/validator.min.js"></script>
<!--//validator js-->

</body>

</body>
</html>

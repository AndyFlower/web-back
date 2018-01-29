<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/26
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    String path1 = request.getContextPath();
    String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>
<!--left-fixed -navigation-->
<div class="sidebar" role="navigation">
    <div class="navbar-collapse">
        <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
            <div class="scrollbar scrollbar1">
                <ul class="nav" id="side-menu">

                    <!--

                      <c:forEach items="${menuTree }" var="menuTree">
                            <li>
                                <a href=""><i class="fa fa-home nav_icon"></i>${menuTree.name}
                                    <c:if test="${menuTree.children.size() > 0 }"><span class="fa arrow"></c:if>
                                </a>
                                <c:if test="${menuTree.children.size() > 0 }">
                                    <ul class="nav nav-second-level collapse">
                                        <c:forEach items="${menuTree.children}" var="children">
                                            <li>
                                                <a href="">${children.name}</a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </c:if>
                            </li>
                        </c:forEach>

                    -->

                    <li>
                        <a href="<%=basePath1%>index"><i class="fa fa-home nav_icon"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-cogs nav_icon"></i>Components<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="<%=basePath1%>processbar">Progressbar</a>
                            </li>
                            <li>
                                <a href="<%=basePath1%>grid">Grid</a>
                            </li>
                        </ul>
                        <!-- /nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-book nav_icon"></i>Elements <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="<%=basePath1%>button">Buttons</a>
                            </li>
                            <li>
                                <a href="<%=basePath1%>typography">Typography</a>
                            </li>
                        </ul>
                        <!-- /nav-second-level -->
                    </li>
                    <li>
                        <a href="<%=basePath1%>widget"><i class="fa fa-th-large nav_icon"></i>Widgets</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-check-square-o nav_icon"></i>Forms<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="<%=basePath1%>input">Inputs</a>
                            </li>
                            <li>
                                <a href="<%=basePath1%>form">Form Validation</a>
                            </li>
                        </ul>
                        <!-- //nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="<%=basePath1%>inbox">Inbox</a>
                            </li>
                            <li>
                                <a href="<%=basePath1%>email">Compose email</a>
                            </li>
                        </ul>
                        <!-- //nav-second-level -->
                    </li>
                    <li>
                        <a href="<%=basePath1%>map"><i class="fa fa-location-arrow nav_icon"></i>Maps</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-file-text-o nav_icon"></i>Pages<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="<%=basePath1%>login">Login</a>
                            </li>
                            <li>
                                <a href="<%=basePath1%>signUp">SignUp</a>
                            </li>
                            <li>
                                <a href="blank-page.html">Blank Page</a>
                            </li>
                        </ul>
                        <!-- //nav-second-level -->
                    </li>
                    <li>
                        <a href="<%=basePath1%>chart" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>Charts</a>
                    </li>
                    <li>
                        <a href="#" class="chart-nav"><i class="fa fa-list-ul nav_icon"></i>Extras<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="<%=basePath1%>table">Tables</a>
                            </li>
                            <li>
                                <a href="<%=basePath1%>notFound">404 Page</a>
                            </li>
                        </ul>
                        <!-- //nav-second-level -->
                    </li>
                </ul>
            </div>
            <!-- //sidebar-collapse -->
        </nav>
    </div>
</div>
<!--left-fixed -navigation-->

<%--
  Created by IntelliJ IDEA.
  User: sangliping
  Date: 2018/1/29
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
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

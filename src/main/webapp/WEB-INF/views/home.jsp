<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="/resources/img/favicon.png">

  <title>SIGN ME</title>

  <link rel="stylesheet" href="/resources/icofont/icofont.min.css">
  <!-- Bootstrap CSS -->
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="/resources/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="/resources/css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="/resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="/resources/css/owl.carousel.css" type="text/css">
  <link href="/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="/resources/css/fullcalendar.css">
  <link href="/resources/css/widgets.css" rel="stylesheet">
  <link href="/resources/css/style.css" rel="stylesheet">
  <link href="/resources/css/style-responsive.css" rel="stylesheet" />
  <link href="/resources/css/xcharts.min.css" rel=" stylesheet">
  <link href="/resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
<body>
  <!-- container section start -->
  <section id="container" class="">

<!-- include (header, sidebar) start -->  
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
<%@ include file="/WEB-INF/views/include/sidebar.jsp" %>
<!-- include (header, sidebar) end -->
	<!--main content start-->
     <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Home</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">Home</a></li>
            </ol>
          </div>
        </div>

            <div class="col-sm-6">
              <section class="panel">
                <header class="panel-heading">프로필</header>
              
              <table class="table" width=500px;>
                <tr>
                  <td rowspan=5><img src="/resources/img/myimage.jpg" width="200" height="180" alt="프로필"></TD>
                    <td >사번</td>
                      <td >10000</TD>
                      </TR>
                      <TR>
                        <td>이름</td>
                          <td >ICT3</td>
                        </tr>
                        <tr>
                          <td >부서</td>
                            <td >ICT3</td>
                            </TR>
                            <tr>
                              <td >직위</td>
                              <td >대리<br>
                              </tr>
                            </table>
                          </section>
                          </div>
                          <div class="col-sm-6">
          <section class="panel">
            <header class="panel-heading">
              <a href="/board/general"> 공지사항</a>
            </header>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>제목</th>
                  <th>내용</th>
                  <th>작성일</th>
                  <th>작성자</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td></td>
                  <td>1</td>
                  <td></td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>완료</td>
                  <td>2</td>
                  <td>오늘</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>보류</td>
                  <td>3</td>
                  <td>내일</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
            </table>
          </section>
        </div>
        <div class="col-sm-6">
          <section class="panel">
            <header class="panel-heading">
              <a href="form_message.html"> 쪽지함</a>
            </header>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>보낸 사람</th>
                  <th>내용</th>
                  <th>날짜</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>보류</td>
                  <td>어제</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>오늘</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>보류</td>
                  <td>3</td>
                  <td>내일</td>
                </tr>
              </tbody>
            </table>
            </section>
            </div>
				<section>
<!-- 		달력			 -->
					
					
					
				</section>
			</section>
  </section>

 
  <!-- container section start -->
  <div class="text-right">
        <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </section>

<!-- javascripts -->
  <script src="/resources/js/jquery.js"></script>
  <script src="/resources/js/jquery-ui-1.10.4.min.js"></script>
  <script src="/resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="/resources/js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="/resources/js/jquery.scrollTo.min.js"></script>
  <script src="/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="/resources/assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="/resources/js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="/resources/js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <script src="/resources/js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="/resources/js/calendar-custom.js"></script>
    <script src="/resources/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="/resources/js/jquery.customSelect.min.js"></script>
    <script src="/resources/assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="/resources/js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="/resources/js/sparkline-chart.js"></script>
    <script src="/resources/js/easy-pie-chart.js"></script>
    <script src="/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/resources/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/resources/js/xcharts.min.js"></script>
    <script src="/resources/js/jquery.autosize.min.js"></script>
    <script src="/resources/js/jquery.placeholder.min.js"></script>
    <script src="/resources/js/gdp-data.js"></script>
    <script src="/resources/js/morris.min.js"></script>
    <script src="/resources/js/sparklines.js"></script>
    <script src="/resources/js/charts.js"></script>
    <script src="/resources/js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>

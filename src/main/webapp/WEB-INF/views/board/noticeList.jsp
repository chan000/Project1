<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
<link rel="icon" type="image/png"  href="/resources/img/signmefavicon.png"/>
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
  <style type="text/css">
.justify-content-center{justify-content:center!important}
.pagination{display:flex;padding-left:0;list-style:none}
</style>
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

<!-- main content start -->
 <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-notification"></i>????????????</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">??????</a></li>
              <li><i class="icofont-list"></i>?????????</li>
              <li><i class="icofont-notification"></i>????????????</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-sm-6">
            
          </div>
          <div class="col-sm-6">
            <section class="panel">
        </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            
              <header class="panel-heading">
              <h3>
                ????????????
                </h3>
              </header>
              <section class="panel">
              <table class="table table-striped table-advance table-hover">
                <thead>
                  <tr>
                    <th class="text-center">??????</th>
                    <th class="text-center">?????????</th>
                    <th class="text-center">??????</th>
                    <th class="text-center">?????????</th>
                    <th class="text-center">????????????</th>
                    
                    
                  </tr>
                </thead>
                <tbody>  
                  <c:forEach items="${noticeList}" var="list">
                  <tr>
                    <td class="text-center">${list.nno}</td>
                    <td class="text-center">${list.deptname}</td>
                    <td class="text-center"><a href="/board/noticeRead?nno=${list.nno}&page=${cri.page }&searchType=${cri.searchType}&keyword=${cri.keyword}">${list.ntitle}</a></td>
                    <td class="text-center">${list.mname}</td>
                    <td class="text-center">${list.nwrite_date}</td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
              <br><br>
<div class="text-center">
	<select name="deptno">
		<option value="tcw" <c:if test="${cri.searchType == 'tcw'}">selected</c:if>>??????</option>
		<option value="t" <c:if test="${cri.searchType == 't'}">selected</c:if>>??????</option>
		<option value="tc" <c:if test="${cri.searchType == 'tc'}">selected</c:if>>??????+??????</option>
		<option value="w" <c:if test="${cri.searchType == 'w'}">selected</c:if>>?????????</option>
	</select>
<input type="text" name="keyword" id="keywordInput"	value="${cri.keyword }" >
<button class="btn btn-lg btn-default" id="searchBtn"><i class="icofont-search-document"></i></button>
<br>
</div>

  	<div class="row">
         <ul class="pagination justify-content-center" style="text-align : center">
        <c:if test="${pageMaker.prev}">
          <li class="page-item disabled">
          	<a class="page-link" href="/board/noticeList?page=${pageMaker.startPage -1}&searchType=${cri.searchType}&keyword=${cri.keyword}">
          		&laquo;
          	</a>
          </li>
        </c:if>
        <c:forEach begin="${pageMaker.startPage}"
        			end ="${pageMaker.endPage}"
        			var ="idx">
        	<li class="page-item
        		<c:out value="${pageMaker.cri.page == idx ? 'active' : ''}" />">
        			<a class="page-link" href="/board/noticeList?page=${idx}&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx}</a></li>			
        </c:forEach>
          <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
          <li class="page-item">
          	<a class="page-link" href="/board/noticeList?page=${pageMaker.endPage +1}&searchType=${cri.searchType}&keyword=${cri.keyword}">
          		&raquo;
          	</a>
          </li>
          </c:if>
        </ul>
      
       </div>  
            </section>
          </div>
        </div>
    
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Pu
           rchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
  </section>

  <!-- container section start -->

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
	<script type="text/javascript">
		$(document).ready(function(){
			
			// ????????? ??? ????????? controller?????? ???????????????.
			// ${bno}?????? ???????????? ??????????????? ????????? ???????????????.
			// ????????? ????????? ??????????????? ??????
			// ????????? ????????? ??????????????? ?????? ????????? ????????? ????????? ???
			var bno = "${bno}";
			
			// ?????? ??? bno??? ??????
			console.log(bno);
			
			// alert()????????? ????????? ?????? ??????????????????
			// n??? ?????? ????????????????????? ?????? ??????????????? ???????????????.
			// ???????????? ????????? ??????????????? ??????????????? ????????? ???????????????.
			if(bno !== ''){
				alert(bno + "??? ?????? ?????????????????????.");
			}
			
			//???????????? ??????
			$('#searchBtn').on("click", function(event){
				self.location = "noticeList"
					+ "?page=1"
					+ "&searchType="
					+ $("select option:selected").val()
					+ "&keyword=" + $("#keywordInput").val();
			});
		});
	</script>
</body>

</html>

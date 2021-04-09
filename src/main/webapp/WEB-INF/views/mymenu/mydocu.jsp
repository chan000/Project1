<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<head>
<style type="text/css"> .no-drag {-ms-user-select: none; -moz-user-select: -moz-none; -webkit-user-select: none; -khtml-user-select: none; user-select:none;} </style>
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
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-tasks"></i>문서 관리</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">Home</a></li>
              <li><i class="icon_document_alt"></i>내 정보</li>
              <li><i class="icon_document_alt"></i>내 문서 열람</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                <div class="row">
                  <h3 class="col-lg-2 col-md-2 col-sm-2">내 문서 열람</h3>

                </div>
              </header>
              <section class="panel">
              <table style="text-align: text-center;" class="table table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center" style="width: 15%">문서번호</th>
                    <th class="text-center" style="width: 15%">분류</th>
                    <th class="text-center" style="width: 30%">제목</th>
                    <th class="text-center" style="width: 20%">작성일</th>
                    <th class="text-center" style="width: 10%">결재상태</th>
                    <th class="text-center" style="width: 15%">결재일</th>
                  </tr>
                </thead>
             <tbody id="boardbody">
                  
                </tbody>
         </table>
         <div class="row text-center">
         <select name="searchType" class="text-center">
  				<option value="t"
  				<c:out value="${cri.searchType eq 't' ? 'selected' : '' }" />>	
  				제목
  				</option>
  				<option value="c"
  				<c:out value="${cri.searchType eq 'c' ? 'selected' : '' }" />>	
  				본문
  				</option>
  			</select>
  			
  			<input type="text"
  					name="keyword"
  					id="keywordInput"
  					value="${cri.keyword }">
  			<button class="btn btn-default" id="searchBtn">검 색</button>
         </div>
  			<div class="row text-center">
                  <ul class="pagination">
                    <c:if test="${pageMaker.prev}">
                    	<li><a href="/mymenu/mydocu?page=${pageMaker.startPage - 1}&searchType=${cri.searchType}&keyword=${cri.keyword}">«</a></li>
                    </c:if>
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
                    	<li class="<c:out value="${pageMaker.cri.page == index ? 'active' : '' }" />" >
                    		<a href="/mymenu/mydocu?page=${index}&searchType=${cri.searchType}&keyword=${cri.keyword}">${index}</a></li>
                    </c:forEach>
                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    	<li><a href="/mymenu/mydocu?page=${pageMaker.endPage + 1}&searchType=${cri.searchType}&keyword=${cri.keyword}">»</a></li>
                    </c:if>
                  </ul>
  			</div>
	</section>
            
          </div>
        </div>
        <!-- page end-->
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
    
<script type="text/javascript">
$(document).ready(function() {
	
	function getdocuList(){
		
	var mno = ${login.mno};
	var bno = "${board.bno}";
		$.getJSON("/mymenu/docu/" + mno, function(data) {
			
			var str="";
			
			$(data).each(function() {
				
				var timestamp1 = this.bwrite_date;
    			var date1 = new Date(timestamp1);
    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
				
    			var formattedTime2 = "";
    			
    			if (this.bsign_date != null) {
	    			var timestamp2 = this.bsign_date;
	    			var date2 = new Date(timestamp2);
	    			formattedTime2 = date2.getFullYear() + "-" + ("0" + (date2.getMonth() + 1)).slice(-2) + "-" + ("0" + date2.getDate()).slice(-2);
    				
    			}
    			
    			if (this.signstate == 2) {
    				this.signstate = "미결재";
    			} else if (this.signstate == 1){
    				this.signstate = "결재보류"
    			} else if(this.signstate == 0){
    				this.signstate = "결재완료"
    			}
    			
    			str += "<tr data-bno='" + this.bno + "' class='text-center mybno' data-btitle='" + this.btitle + "'>"
				+ "<td>" + this.bno + "</td><td class='fname'>" + this.fname + "</td><td><a href='/mymenu/mydocuread?bno="+this.bno+"'>" + this.btitle + "</a></td><td>" + formattedTime1 + "</td><td>"
				+ this.signstate + "</td><td>" + formattedTime2 + "</td>"
				+ "</tr>";
			});
			$("#boardbody").html(str);
		}); // getJson
	
	} // docuList
	getdocuList();
});// document
</script>
<script type="text/javascript">
$(document).ready(function(){
	
	var bno = "${board.bno}";;
	
	console.log(bno);
	if(bno !== ''){
		alert(bno + "번 글이 삭제되었습니다.");
	}
	
	$('#searchBtn').on("click", function(event){
		self.location = "mydocu"
			+ "?page=1"
			+ "&searchType="
			+ $("select option:selected").val()
			+ "&keyword=" + $("#keywordInput").val();
	});
});
</script>
</body>
</html>

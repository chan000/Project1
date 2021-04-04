<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-folder-open"></i><a href="/manage/docu">문서 관리</a></li>
              <li><i class="icofont-tasks"></i>게시글 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        
        
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                <div class="row">
                  <h3 class="col-lg-2 col-md-2 col-sm-2">게시글 관리</h3>
                  
                  <div class="container">
                      <button class="btn btn-danger pull-right" id="boarddelbtn" type="button"><i class="icofont-ui-delete"></i></button>
                  </div>
                </div>
              </header>
              <section class="panel">
              <table style="text-align: text-center;" class="table table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center no-drag" id="allchoiceboard" style="width: 5%; cursor:pointer;">선택</th>
                    <th class="text-center" style="width: 15%">문서번호</th>
                    <th class="text-center" style="width: 8%">분류</th>
                    <th class="text-center" style="width: 27%">제목</th>
                    <th class="text-center" style="width: 10%">작성자</th>
                    <th class="text-center" style="width: 15%">작성일</th>
                    <th class="text-center" style="width: 10%">결재자</th>
                    <th class="text-center" style="width: 15%">결재일</th>
<!--                     <th class="text-center" style="width: 10%">관리</th> -->
                  </tr>
                </thead>
                <tbody id="boardbody">
                  
                </tbody>
              </table>
            </section>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                <div class="row">
                  <h3 class="col-lg-2 col-md-2 col-sm-2">공지사항 관리</h3>
                  
                  <div class="container">
                      <button class="btn btn-danger pull-right" type="button" id="noticedelbtn"><i class="icofont-ui-delete"></i></button>
                  </div>
                </div>
              </header>
              <section class="panel">
              <table style="text-align: text-center;" class="table table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center no-drag" id="allchoicenotice" style="width: 5%; cursor:pointer;">선택</th>
                    <th class="text-center" style="width: 15%">문서번호</th>
                    <th class="text-center" style="width: 15%">분류</th>
                    <th class="text-center" style="width: 30%">제목</th>
                    <th class="text-center" style="width: 15%">작성자</th>
                    <th class="text-center" style="width: 20%">작성일</th>
<!--                     <th class="text-center" style="width: 10%">관리</th> -->
                  </tr>
                </thead>
                <tbody id="noticebody">
                </tbody>
              </table>
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
    $(document).ready(function() {
    	function getBoardList(){
		    $.getJSON("/docu/board", function(data) {
			    var str = "";
		    	$(data).each(
		    		function() {
// 		    			console.log(this);
		    			var timestamp1 = this.bwrite_date;
		    			var date1 = new Date(timestamp1);
		    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
		    			
		    			var formattedTime2 = "";
		    			
		    			if (this.bsign_date != null) {
			    			var timestamp2 = this.bsign_date;
			    			var date2 = new Date(timestamp2);
			    			formattedTime2 = date2.getFullYear() + "-" + ("0" + (date2.getMonth() + 1)).slice(-2) + "-" + ("0" + date2.getDate()).slice(-2);
		    				
		    			}

		    			if (this.bsigner == null) {
		    				this.bsigner = "미결재";
		    			}
		    			
		    			
		    			
		    			str += "<tr data-bno='" + this.bno + "' class='text-center mybno' data-btitle='" + this.btitle + "'>"
		    				+ "<td><div class='checkbox text-center'><label><input type='checkbox' name='boardchkbox' value='" + this.bno + "'></label></div></td>"
		    				+ "<td>" + this.bno + "</td><td class='fname'>" + this.fname + "</td><td>" + this.btitle + "</td><td>" + this.mname + "</td><td>"
		    				+ formattedTime1 + "</td><td>" + this.bsigner + "</td><td>" + formattedTime2 + "</td><td>"
		    				+ "</tr>";
		    		});
		    	$("#boardbody").html(str);
		    });
		} // getFormList
		getBoardList();
		
		function getNoticeList(){
		    $.getJSON("/docu/notice", function(data) {
			    var str = "";
		    	$(data).each(
		    		function() {
// 		    			console.log(this);
		    			var timestamp1 = this.nwrite_date;
		    			var date1 = new Date(timestamp1);
		    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
		    			
		    					    			
		    			
		    			
		    			str += "<tr data-nno='" + this.nno + "' class='text-center mynno' data-ntitle='" + this.ntitle + "'>"
		    				+ "<td><div class='checkbox'><label><input type='checkbox' name='noticechkbox' value='" + this.nno + "'></label></div></td>"
		    				+ "<td>" + this.nno + "</td><td class='fname'>" + this.fname + "</td><td>" + this.ntitle + "</td><td>" + this.mname + "</td><td>"
		    				+ formattedTime1 + "</td><td>"
		    				+ "</tr>";
		    		});
		    	$("#noticebody").html(str);
		    });
		} // getFormList
		getNoticeList();
		
		$("#boarddelbtn").on("click", function(e) {
			
			var result = confirm("정말 삭제하시겠습니까?");
			
			if(result) {
				var boardnum = [];
				$("input[name='boardchkbox']:checked").each(function(){
					var temp = $(this).val();
					boardnum.push(temp);
				});
				
				console.log(boardnum);
				
				console.log(boardnum[boardnum.length-1]);
				
				
				
				$.each(boardnum, function(index, value) {
					$.ajax({
						type : 'delete',
						url : '/docu/boarddel/' + value,
						header : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "DELETE"
						},
						dataType : 'text',
						success : function(result) {
							console.log("result : " + result);
							if(result == 'SUCCESS' && value === boardnum[boardnum.length-1]) {
								alert("선택된 게시글이 삭제 되었습니다.")
								getBoardList();
							}
						}
					})
				})
			} else {
				e.preventDefault();
			}
			
			
		})
		
		$("#noticedelbtn").on("click", function(e) {
			
			var result = confirm("정말 삭제하시겠습니까?");
			
			if(result) {
				var noticenum = [];
				$("input[name='noticechkbox']:checked").each(function(){
					var temp = $(this).val();
					noticenum.push(temp);
				});
				
				console.log(noticenum);
				
				console.log(noticenum[noticenum.length-1]);
				
				
				
				$.each(noticenum, function(index, value) {
					$.ajax({
						type : 'delete',
						url : '/docu/noticedel/' + value,
						header : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "DELETE"
						},
						dataType : 'text',
						success : function(result) {
							console.log("result : " + result);
							if(result == 'SUCCESS' && value === noticenum[noticenum.length-1]) {
								alert("선택된 게시글이 삭제 되었습니다.")
								getNoticeList();
							}
						}
					})
				})
				
			} else {
				e.preventDefault();
			}
			
			
		})
		
		var cntboard = 0;
		$("#allchoiceboard").on("click", function() {
			cntboard++;
			if (cntboard % 2 == 1) {
				$("input[name='boardchkbox']").prop("checked",true);
			} else if (cntboard % 2 == 0) {
				$("input[name='boardchkbox']").prop("checked",false);
			}
			
		})
		
		var cntnotice = 0;
		$("#allchoicenotice").on("click", function() {
			cntnotice++;
			if (cntnotice % 2 == 1) {
				$("input[name='noticechkbox']").prop("checked",true);
			} else if (cntnotice % 2 == 0) {
				$("input[name='noticechkbox']").prop("checked",false);
			}
			
		})
	});
    
    </script>
</body>

</html>

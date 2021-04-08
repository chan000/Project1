<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="/resources/img/favicon.png">

  <title>Creative - Bootstrap Admin Template</title>

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

<!-- main content start -->
 
 
 	<section id="main-content">
      <section class="wrapper">
        <div class="row" style="width:1000px">
          <div class="col-lg-12">
            <h1 class="text-primary"><i class="icofont-law-document"></i><Strong>신청서 작성</Strong></h1>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">메인</a></li>
              <li><i class="icon_document_alt"></i>문서 작성</li>
              <li><i class="fa fa-file-text-o"></i>신청서 작성</li>
            </ol>
          </div>
        </div>
        <div class="row layer" style="position: static; width: 1000px">
          <div >
            <section class="panel">
              <header class="panel-heading">
                문서기안
              </header>
              <div class="panel-body" >
                <form action="/sign/reportWrite" class="form-horizontal " method="post">
                  <!-- 추후 삭제 가능-->
                  <div class="row" style="height:130px">
                    
                    <div class="col-md-8">
                    </div>
                      
                      <table style="border: 1px solid; width:300px" class="text-center">
                        <tr style="border: 1px solid">
                          <td><h4>과장 홍길동</h4></td>
                          <td style="border :1px solid"><h4>과장 홍길동</h4></td>
                        </tr>
                        <tr >
                          <td style="height:100px; border :1px solid"></td>
                          <td style="height:100px"></td>
                        </tr>
                      </table>
                    </div>

                  <div class="form-group" style="margin-top:20px">
                    <div class="col-sm-8">
                      
                    </div>
                    <div class="col-sm-2" style="margin-left:20px; margin-right:-17px">
                      <button class="btn btn-info" style="text" data-toggle="modal" data-target="#myModal">결재권자</button>
                    </div>
                    <div class="col-sm-1" style="padding-left:-200px">
                      <button class="btn btn-info" data-toggle="modal" data-target="#myModal">결재권자</button>
                    </div>
                  </div>
				<!-- the modal -->
				 <div class="modal fade" id="myModal">
				    <div class="modal-dialog">
				      <div class="modal-content">
				
				        <!-- Modal Header -->
				        <div class="modal-header">
				          <h4 class="modal-title"><Strong>결재권자 선택</Strong></h4>
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				        </div>
				        <!-- Modal body -->
						
				        <div class="modal-body">
							<div class="dropdown dropright">
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
									부서 선택
								</button>
									<div class="dropdown-menu">
										<c:forEach items="${deptSelect}" var="dept">
											<a class="dropdown-item" role="menuitem" tabindex="-1" href="#">
												<input type="submit" name="seldpn" value="${dept.deptname}">
											</a>	
										</c:forEach>
									</div>
							</div><br><br>	
							<div class="dropdown dropright">
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
									이름
								</button>
								<div class="dropdown-menu">
									
									<a class="dropdown-item text-center" href="#">김개똥</a>
									
									
								</div>
							</div>
				        </div>
						
				        <!-- Modal footer -->
				        <div class="modal-footer">
				          <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				          <button type="button" class="btn btn-primary">변경 사항 저장</button>
				        </div>
				
				      </div>
				    </div>
				 </div>
				 <!-- the modal end -->

                  <div class="form-group">
                    <h1 class="text-center">신청서 작성</h1>
                    
                  </div>
                
                  
                  <div class="form-group">
                    <label class="col-sm-1 control-label"> 문서명</label>
                    <div class="col-sm-11">
                      <input type="text" class="form-control" id="bno" name="bno" >
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성자</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="focusedInput" type="text" id="mname" name="mname" > <!-- readonly 예정 -->
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성일</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="bwrite_date" type="text" value="" readonly >
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">수정일</label>
                    <div class="col-sm-11">
                      <input type="text" class="form-control" readonly >
                    </div>
                  </div>
                  <input type="hidden" id="mno" name="mno" value="1"> <!-- 로그인 정보에서 가져와 구현예정 -->
                  <input type="hidden" id="fno" name="fno" value="2">
                  <div class="form-group">
                    <label class="col-sm-1 control-label">내용</label>
                    <div class="col-sm-11">
                      <textarea class="form-control ckeditor" rows="6" id="bcontent" name="bcontent"></textarea>
                    </div>
                  </div>
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-11"></div>
                    <input type="submit" class="btn btn-primary col-sm-1" title="Bootstrap 3 themes generator" value="완료">
                  </div>
                  </div>
                </form>
              </div>
            </section>
           
          </div>
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
	<!-- ck editor -->
	<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
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
      
      $(document).ready(function(){
    	  
    	  var date = new Date();
    	    var year = date.getFullYear();
    	    var month = ("0" + (1 + date.getMonth())).slice(-2);
    	    var day = ("0" + date.getDate()).slice(-2);
    	    
	      $("#bwrite_date").val(year + "-" + month + "-" + day);
      });
    </script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shotcut icon" href="resources/files/aviicon.png" />
  <title>avinext | (주)아비넥스트</title>


  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="resources/plugins/select2/css/select2.min.css">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="resources/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
  <!-- Toastr -->
  <link rel="stylesheet" href="resources/plugins/toastr/toastr.min.css">
  <!-- jsGrid -->
  <link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid.min.css">
  <link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid-theme.min.css">


  <style>
    th,td {text-align:center;}
  </style>


</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
	<jsp:include page="../layer/layout.jsp"></jsp:include>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1><b>회사소개</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>회사소개</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
 			<div class="container-fluid">

				<!-- Table row -->
				<div class="row">
					<div class="col-12">
						<div class="card card-primary card-outline">
							<!-- /.card-header -->
							<div class="card-header">
				              <h3 class="card-title"><b>회사소개</b></h3>
				            </div>

							<div class="card-body row">
								<div class="col-5">
									<img src="resources/files/bird2.jpg" style="width:98%;border-radius:50%;"/>
								</div>
								<div class="col-7">
									회사소개글 및 회사 이미지 부탁드립니다!<br/>
									회사소개글 및 회사 이미지 부탁드립니다!<br/>
									회사소개글 및 회사 이미지 부탁드립니다!<br/>
									회사소개글 및 회사 이미지 부탁드립니다!<br/>
									회사소개글 및 회사 이미지 부탁드립니다!<br/>
									회사소개글 및 회사 이미지 부탁드립니다!<br/>
								</div>
							</div>

							<div class="card-footer" style="background-color:#fff;text-align:right;">
								<img src="resources/files/avilogo.png" alt="Avinext Logo" style="width:18%;">
							</div>
						</div> <!-- /.card -->
					</div> <!-- /.col-12 -->
				</div>  <!-- /.row -->


 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	<!--</div>  End content-wrapper -->


	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <div class="container-fluid">
	        <div class="row mb-2">
	          <div class="col-sm-6">

	          </div>

	        </div>
	      </div><!-- /.container-fluid -->
	    </section>

	    <!-- Main content -->
	    <section class="content">
	      <div class="container-fluid">

	        <!-- Timelime example  -->
	        <div class="row">
	          <div class="col-md-12">
	            <div class="card card-primary card-outline">
				  <!-- /.card-header -->
				  <div class="card-header">
	                <h3 class="card-title"><b>연혁 (회사연혁 넣으실거면 내용 정리해서 부탁드립니다. 이미지, 동영상, 텍스트 다 가능합니다. 시간대별 정리해주시면 됨)</b></h3>
	              </div>

	              <div class="card-header">

	            <!-- The time line -->
	            <div class="timeline">
	              <!-- timeline time label -->
	              <div class="time-label">
	                <span class="bg-red">10 Feb. 2014</span>
	              </div>
	              <!-- /.timeline-label -->
	              <!-- timeline item -->
	              <div>
	                <i class="fas fa-envelope bg-blue"></i>
	                <div class="timeline-item">
	                  <span class="time"><i class="fas fa-clock"></i> 12:05</span>
	                  <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

	                  <div class="timeline-body">
	                    Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
	                    weebly ning heekya handango imeem plugg dopplr jibjab, movity
	                    jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
	                    quora plaxo ideeli hulu weebly balihoo...
	                  </div>
	                  <div class="timeline-footer">
	                    <a class="btn btn-primary btn-sm">Read more</a>
	                    <a class="btn btn-danger btn-sm">Delete</a>
	                  </div>
	                </div>
	              </div>
	              <!-- END timeline item -->
	              <!-- timeline item -->
	              <div>
	                <i class="fas fa-user bg-green"></i>
	                <div class="timeline-item">
	                  <span class="time"><i class="fas fa-clock"></i> 5 mins ago</span>
	                  <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request</h3>
	                </div>
	              </div>
	              <!-- END timeline item -->
	              <!-- timeline item -->
	              <div>
	                <i class="fas fa-comments bg-yellow"></i>
	                <div class="timeline-item">
	                  <span class="time"><i class="fas fa-clock"></i> 27 mins ago</span>
	                  <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>
	                  <div class="timeline-body">
	                    Take me to your leader!
	                    Switzerland is small and neutral!
	                    We are more like Germany, ambitious and misunderstood!
	                  </div>
	                  <div class="timeline-footer">
	                    <a class="btn btn-warning btn-sm">View comment</a>
	                  </div>
	                </div>
	              </div>
	              <!-- END timeline item -->
	              <!-- timeline time label -->
	              <div class="time-label">
	                <span class="bg-green">3 Jan. 2014</span>
	              </div>
	              <!-- /.timeline-label -->
	              <!-- timeline item -->
	              <div>
	                <i class="fa fa-camera bg-purple"></i>
	                <div class="timeline-item">
	                  <span class="time"><i class="fas fa-clock"></i> 2 days ago</span>
	                  <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>
	                  <div class="timeline-body">
	                    <img src="resources/files/bird1.jpg" alt="..." style="width:150px;height:100px">
	                    <img src="resources/files/bird1.jpg" alt="..." style="width:150px;height:100px">
	                    <img src="resources/files/bird1.jpg" alt="..." style="width:150px;height:100px">
	                    <img src="resources/files/bird1.jpg" alt="..." style="width:150px;height:100px">
	                  </div>
	                </div>
	              </div>
	              <!-- END timeline item -->
	              <!-- timeline item -->
	              <div>
	                <i class="fas fa-video bg-maroon"></i>

	                <div class="timeline-item">
	                  <span class="time"><i class="fas fa-clock"></i> 5 days ago</span>

	                  <h3 class="timeline-header"><a href="#">Mr. Doe</a> shared a video</h3>

	                  <div class="timeline-body">
	                    <div class="embed-responsive embed-responsive-16by9">
	                      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/tMWkeBIohBs" allowfullscreen></iframe>
	                    </div>
	                  </div>
	                  <div class="timeline-footer">

	                  </div>
	                </div>
	              </div>
	              <!-- END timeline item -->
	              <div>
	                <i class="fas fa-clock bg-gray"></i>
	              </div>
	            </div>
	          </div>
	          <!-- /.col -->
	        </div>
	      </div>
	      <!-- /.timeline -->
		  </div> <!-- 카드바디 -->
		  </div> <!-- 카드 -->
	    </section>
	    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

	<c:import url="../layer/layout_footer.jsp"></c:import>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper  -->
</body>

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Page specific script -->
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- BS-Stepper -->
<script src="resources/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- 주소찾기 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- SweetAlert2 -->
<script src="resources/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>
<!-- ChartJS -->
<script src="resources/plugins/chart.js/Chart.min.js"></script>
<!-- jsGrid -->
<script src="resources/plugins/jsgrid/demos/db.js"></script>
<script src="resources/plugins/jsgrid/jsgrid.min.js"></script>
<script src="resources/js/common.js"></script>

<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>


<script>



</script>
</html>
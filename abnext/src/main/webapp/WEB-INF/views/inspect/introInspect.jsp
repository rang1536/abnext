<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shotcut icon" href="resources/files/aviicon.png" />
	<title>avinext | (주)아비넥스트트</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
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
						<h1><b>진단검사</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">진단검사</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content" style="font-size:13px;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card card-primary">
							<div class="card-body">
								<div class="row mt-4">
									<div class="col-sm-4">
										<a href="#" onclick="movePage(1)">
											<div class="position-relative">
												<img src="resources/dist/img/mainBird.jpg" alt="Photo 1" class="img-fluid" >
												<div class="ribbon-wrapper ribbon-lg">
													<div class="ribbon bg-success text-lg">
														반려조류
													</div>
												</div>
											</div>
										</a>
									</div>
									<div class="col-sm-4">
										<a href="#" onclick="movePage(2)">
											<div class="position-relative">
												<img src="resources/dist/img/mainChiken.jpg" alt="Photo 1" class="img-fluid">
												<div class="ribbon-wrapper ribbon-lg">
													<div class="ribbon bg-warning text-lg">
														가금류
													</div>
												</div>
											</div>
										</a>
									</div>
									<div class="col-sm-4">
										<a href="#" onclick="movePage(3)">
											<div class="position-relative">
												<img src="resources/dist/img/mainPig.jpg" alt="Photo 1" class="img-fluid" style="">
												<div class="ribbon-wrapper ribbon-lg">
													<div class="ribbon bg-danger text-lg">
														돼지
													</div>
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<jsp:include page="../layer/layout_footer.jsp"></jsp:include>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- Ion Slider -->
<script src="resources/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
<!-- Bootstrap slider -->
<script src="resources/plugins/bootstrap-slider/bootstrap-slider.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
	$(function () {

		$("#a")

		/* BOOTSTRAP SLIDER */
		$('.slider').bootstrapSlider()

		/* ION SLIDER */
		$('#range_1').ionRangeSlider({
			min		 : 0,
			max		 : 5000,
			from		: 1000,
			to			: 4000,
			type		: 'double',
			step		: 1,
			prefix	: '$',
			prettify: false,
			hasGrid : true
		})
		$('#range_2').ionRangeSlider()

		$('#range_5').ionRangeSlider({
			min		 : 0,
			max		 : 10,
			type		: 'single',
			step		: 0.1,
			postfix : ' mm',
			prettify: false,
			hasGrid : true
		})
		$('#range_6').ionRangeSlider({
			min		 : -50,
			max		 : 50,
			from		: 0,
			type		: 'single',
			step		: 1,
			postfix : '°',
			prettify: false,
			hasGrid : true
		})

		$('#range_4').ionRangeSlider({
			type			: 'single',
			step			: 100,
			postfix	 : ' light years',
			from			: 55000,
			hideMinMax: true,
			hideFromTo: false
		})
		$('#range_3').ionRangeSlider({
			type		: 'double',
			postfix : ' miles',
			step		: 10000,
			from		: 25000000,
			to			: 35000000,
			onChange: function (obj) {
				var t = ''
				for (var prop in obj) {
					t += prop + ': ' + obj[prop] + '\r\n'
				}
				$('#result').html(t)
			},
			onLoad	: function (obj) {
				//
			}
		})
	})

	function movePage(idx){
		//1:반려조류 2:가금류 3:돼지
		var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));
		if(idx == 1) {
			if(userInfo.userLev == '1'){
				location.href = "customerInspectList";
			}else {
				location.href = "requestInspect";
			}
		}
		//if(idx == 2) location.href = "requestInspect";
		//if(idx == 3) location.href = "requestInspect";
	}
</script>
</body>
</html>

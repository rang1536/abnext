<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>avinext | (주)아비넥스트</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
	<!-- daterange picker -->
	<link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
	<!-- Bootstrap Color Picker -->
	<link rel="stylesheet" href="resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
	<!-- Select2 -->
	<link rel="stylesheet" href="resources/plugins/select2/css/select2.min.css">
	<link rel="stylesheet" href="resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- BS Stepper -->
	<link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
	<!-- dropzonejs -->
	<link rel="stylesheet" href="resources/plugins/dropzone/min/dropzone.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet" href="resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	
	<style>
		.txtl{text-align:left;}
		.txtc{text-align:center;}
		.txtr{text-align:right;}
		.txtb{background-color:#F2F2F2}
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
						<h1>myFarm</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">myFarm</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">*진단검사</h3>
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<div class="input-group date" id="reservationdate" data-target-input="nearest">
											<input type="text" id="searchYear" class="form-control datetimepicker-input" data-target="#reservationdate" data-toggle="datetimepicker" placeholder="검색연도">
											<div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
												<div class="input-group-text"><i class="fa fa-calendar"></i></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-header -->
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-info">
							<div class="inner">
								<h3>신청</h3>
								<p>REQUEST</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="#" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-success">
							<div class="inner">
								<h3>접수</h3>
								<p>RECEIPT</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>검사중</h3>
								<p>PROCESSING</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>검사완료</h3>
								<p>FINISH</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="#" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">*진단비용</h3>
								<!-- 
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input type="text" name="table_search" class="form-control float-right" placeholder="Search">

										<div class="input-group-append">
											<button type="submit" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div> -->
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<ul class="pagination pagination-month justify-content-center">
									<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="changeYear(1)">«</a></li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Jan</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item active">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Feb</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Mar</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Apr</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">May</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Jun</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Jul</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Aug</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Sep</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Oct</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Nov</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Dec</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="changeYear(2)">»</a></li>
								</ul>
							</div>
							<div class="card-body table-responsive p-0" style="height: 500px;">
								<table class="table table-bordered table-head-fixed text-nowrap">
									<thead>
										<tr>
											<td class="txtc txtb">날짜</td>
											<td class="txtc txtb">의뢰번호</td>
											<td class="txtc txtb">청구액</td>
											<td class="txtc txtb">납부액</td>
											<td class="txtc txtb">납부예정</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="txtc">2022-02-12</td>
											<td class="txtc">1</td>
											<td class="txtr">30,000</td>
											<td class="txtr">30,000</td>
											<td class="txtr"></td>
										</tr>
										<tr>
											<td class="txtc">2022-02-12</td>
											<td class="txtc">2</td>
											<td class="txtr">30,000</td>
											<td class="txtr"></td>
											<td class="txtr">30,000</td>
										</tr>
										<tr>
											<td class="txtc">2022-02-16</td>
											<td class="txtc">3</td>
											<td class="txtr">70,000</td>
											<td class="txtr">70,000</td>
											<td class="txtr"></td>
										</tr>
										<tr>
											<td class="txtc">2022-02-22</td>
											<td class="txtc">4</td>
											<td class="txtr">30,000</td>
											<td class="txtr"></td>
											<td class="txtr">30,000</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td class="txtr" colspan="2">합계</td>
											<td class="txtr">160,000</td>
											<td class="txtr">10,000</td>
											<td class="txtr">60,000</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
			</div><!-- /.container-fluid -->
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
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- date-range-picker -->
<script src="resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- bs-custom-file-input -->
<script src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script>

	$(function () {
		bsCustomFileInput.init();
		
		//Initialize Select2 Elements
		$('.select2').select2()
	
		//Initialize Select2 Elements
		$('.select2bs4').select2({
			theme: 'bootstrap4'
		})
	
		//Date picker
		$('#reservationdate').datetimepicker({
			format: 'YYYY'
		});
	 });
	
	$('#reservationdate').on('change.datetimepicker', function (e) {
		console.log($("#searchYear").val());
	});
	
	function selCal(target){
		console.log($(target).find(".page-month").text());
		console.log($(target).find(".page-year").text());
		$(".page-item").removeClass("active");
		$(target).parent().addClass("active");
	}
	
	function changeYear(type){
		$(".page-item").removeClass("active");
		if(type == 1){
			$(".pagination-month").find(".page-year").each(function(){
				$(this).text(parseInt($(this).text())-1);
			});			
		}else {
			$(".pagination-month").find(".page-year").each(function(){
				$(this).text(parseInt($(this).text())+1);
			});
		}
	}

</script>
</body>
</html>

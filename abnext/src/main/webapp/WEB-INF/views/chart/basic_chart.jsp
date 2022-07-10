<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
						<h1><b>기본통계</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>기본통계</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
 			<div class="container-fluid">

				<div class="card">
					<div class="card-header" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>Data</b></h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool" data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>

					<div class="card-body">
						<div class="row">
							<div class="col-sm-7"></div>
							<div class="col-sm-5">
								<div class="form-group">
									<div class="input-group">
										<input type="date" class="form-control-sm" name="stDt" id="stDt"/>&nbsp;&nbsp;&nbsp;
										<input type="date" class="form-control-sm" name="endDt" id="endDt"/>&nbsp;&nbsp;&nbsp;
										<div class="btn-group">
	                  						<button type="button" class="searchBtn btn-sm btn-primary" style="max-width:100px;min-width:82px;"><i class="fa fa-search"></i> 조회</button>
	                  						&nbsp;&nbsp;
	                  						<button type="button" class="excelBtn btn-sm btn-success" onclick="excelDown();" style="max-width:100px;min-width:82px;"><i class="fa fa-copy"></i> EXCEL</button>
                  						</div>
									</div>
								</div>
							</div>
						</div>

						<div id="jsGrid1"></div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

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

<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

<script src="resources/js/common.js"></script>
<script>

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		getData();
    });

	function getData(){
		$.ajax({
			url : 'basicChartList',
			dataType : 'json',
			type : 'post',
			data : {'stDt':$('#stDt').val(), 'endDt':$('#endDt').val()},
			success:function(data){
				setGrid(data);
			}
		})
	}

	function setGrid(data){
		$("#jsGrid1").jsGrid({
	        height: "auto",
	        width: "100%",
	        sorting: true,
	        paging: true,
			data: data,
	        fields: [
	            { name: "rqstNo", 		type: "text", 	width: 100, title:"의뢰번호", 	align: "center"},
	            { name: "rqstDt",   	type: "number", width: 80, 	title:"접수일", 	align: "center"},
	            { name: "animButler", 	type: "text", 	width: 100, title:"보호자명", 	align: "center"},
	            { name: "sample1", 		type: "number", width: 50, 	title:"깃털", 	align: "center"},
	            { name: "sample2", 		type: "number", width: 50, 	title:"분변", 	align: "center"},
	            { name: "sample3", 		type: "number", width: 50, 	title:"스왑", 	align: "center"},
	            { name: "sample4", 		type: "number", width: 50, 	title:"혈액", 	align: "center"},
	            { name: "sample5", 		type: "number", width: 50, 	title:"혈청", 	align: "center"},
	            { name: "sample6", 		type: "number", width: 50, 	title:"기타", 	align: "center"},
	            { name: "total", 		type: "number", width: 80, 	title:"총시료수", 	align: "center"},
	            { name: "animNm", 		type: "text", 	width: 120, title:"품종", 	align: "center"},
	            { name: "animBirth", 	type: "text", 	width: 80, 	title:"주령", 	align: "center"},
	            { name: "animCnt", 		type: "number", width: 80, 	title:"사육수", 	align: "center"},
	            { name: "hospNm", 		type: "text", 	width: 150, title:"회사", 	align: "center"},
	            { name: "docNm", 		type: "text", 	width: 100, title:"담당", 	align: "center"}
	        ]
	    });
	}


	function excelDown(){
		$("#jsGrid1").table2excel({
			exclude : ".excludeThisClass",
			name : "기본통계",
			filename : "기본통계",
			fileext : ".xlsx",
			exclude_img : true,
			exclude_links : true,
			exclude_inputs : true        
		});    
	}


</script>
</html>
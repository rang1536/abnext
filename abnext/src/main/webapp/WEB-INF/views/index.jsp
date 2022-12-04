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
  <link rel="stylesheet" href="resources//plugins/toastr/toastr.min.css">
  <!-- jsGrid -->
  <link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid.min.css">
  <link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid-theme.min.css">


  <style>
    th,td {text-align:center;}
  </style>


</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
	<c:import url="./layer/layout.jsp"></c:import>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<!-- <section class="content-header" style="width:auto;height:688px;background-image:url('resources/files/backimg1.jpg')"> -->
		<section class="content-header" style="width:auto;min-height:150px;backgroun-color:#000000;">
			<div class="container-fluid">
				<!-- <h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="resources/files/avilogo.png" alt="Avinext Logo" style="width:25%;"></b></h1> -->
				<img src="resources/files/backimg4.jpg" style="width:100%;"/>



			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
 			<div class="container-fluid">
				<!-- <img src="resources/files/bird3.jpg" style="width:99%;"> -->
				<br/><br/>

				<div class="row">
					<div class="col-md-6">
						<div class="card">
							<div class="card-header" style="background-color:#002266;color:#ffffff;">
								<h3 class="card-title"><b>공지사항</b></h3>

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
									<div id="jsGrid1"></div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>

					<div class="col-md-6">
						<div class="card">
							<div class="card-header" style="background-color:#002266;color:#ffffff;">
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

								</div>

							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>


 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

	<footer class="main-footer" style="font-size:13px;font-weight:bold;color:#000000;">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.1
    </div>
    <strong>Copyright &copy; 2017-2022 <a href="#">(주)아비넥스트</a>.</strong> All rights reserved.
  	<br/>
  	<div class="float-right d-none d-sm-block">
      <b onclick="popPolicyOpen()">개인정보처리방침</b>
    </div>
  	<strong>
  		<a href="#">대표</a>&nbsp;&nbsp;모인필&nbsp;&nbsp;|
  		&nbsp;&nbsp;<a href="#">주소 </a>&nbsp;&nbsp; 충북 청주시 상당구 남일면 쌍암동길 30-7<br/>
  		&nbsp;&nbsp;<a href="#">TEL</a>&nbsp;&nbsp; 043-292-9998&nbsp;&nbsp;|
  		&nbsp;&nbsp;<a href="#">FAX</a>&nbsp;&nbsp; 043-292-9980&nbsp;&nbsp;|
  		&nbsp;&nbsp;<a href="#">E-mail</a>&nbsp;&nbsp; avinext@avinext.co.kr
  	</strong>
  </footer>

  <c:import url="./popup/pop_policy.jsp"></c:import>

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
<!-- 주소찾기 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- SweetAlert2 -->
<script src="resources/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>
<!-- DataTables	& Plugins -->
<script src="resources/plugins/datatables/jquery.dataTables.js"></script>
<script src="resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="resources/plugins/jszip/jszip.min.js"></script>
<script src="resources/plugins/pdfmake/pdfmake.min.js"></script>
<script src="resources/plugins/pdfmake/vfs_fonts.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="resources/plugins/jsgrid/jsgrid.min.js"></script>
<script>

	$(function () {
		$('body').removeClass('sidebar-mini');
		$('body').addClass('sidebar-collapse');
	    $(window).trigger('resize');

	    getData();

    });

	function getData(){
		$.ajax({
			url : 'getBoardListRest',
			dataType : 'json',
			type : 'post',
			success:function(data){
				//console.log(JSON.stringify(data));
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
	        rowClick : function(item){
	        	location.href = 'boardList';
	        },
	        fields: [
	            { name: "boardNo", 		type: "text", 	width: 40, 	title:"NO", 	align: "center"},
	            { name: "subject",   	type: "number", width: 250, title:"제목", 	align: "center"},
	            { name: "uptDt", 	type: "text", 	width: 100, title:"작성일", 	align: "center"},
	            { name: "userNm", 	type: "number", width: 100, title:"작성자", 	align: "center"}
	        ]
	    });
	}




</script>
</html>
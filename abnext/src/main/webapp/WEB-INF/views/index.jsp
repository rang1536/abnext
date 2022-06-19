<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <!-- DataTables -->
  <link rel="stylesheet" href="resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


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
		<section class="content-header">
			<div class="container-fluid">
				<h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVINEXT</b></h1>
				<div class="row">
					<div class="col-md-8" >

					</div>
					<div class="col-md-4" style="opacity:0.8;color:#212121;font-weight:bold;">
						<div class="card">
		                  <div class="card-header">
		                    <h3 class="card-title"><b>Avinext Members</b></h3>

		                    <div class="card-tools">
		                      <span class="badge badge-danger">8 New Members</span>
		                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
		                        <i class="fas fa-minus"></i>
		                      </button>
		                      <button type="button" class="btn btn-tool" data-card-widget="remove">
		                        <i class="fas fa-times"></i>
		                      </button>
		                    </div>
		                  </div>
		                  <!-- /.card-header -->
		                  <div class="card-body p-0">
		                    <ul class="users-list clearfix">
		                      <li>
		                        <img src="resources/dist/img/user1-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">송현기</a>
		                        <span class="users-list-date">Today</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user8-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">윤재호</a>
		                        <span class="users-list-date">Yesterday</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user7-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">황선자</a>
		                        <span class="users-list-date">12 Jan</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user6-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">홍길동</a>
		                        <span class="users-list-date">12 Jan</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user2-160x160.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">수의사1</a>
		                        <span class="users-list-date">13 Jan</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user5-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">수의사2</a>
		                        <span class="users-list-date">14 Jan</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user4-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">수의사3</a>
		                        <span class="users-list-date">15 Jan</span>
		                      </li>
		                      <li>
		                        <img src="resources/dist/img/user3-128x128.jpg" alt="User Image">
		                        <a class="users-list-name" href="#">수의사4</a>
		                        <span class="users-list-date">15 Jan</span>
		                      </li>
		                    </ul>
		                    <!-- /.users-list -->
		                  </div>
		                  <!-- /.card-body -->
		                  <div class="card-footer text-center" style="background-color:#002266;color:#FFFFFF;">
		                      <b>Avinext에 방문에 주셔서 감사합니다</b>
		                  </div>
		                  <!-- /.card-footer -->
		                </div>
		                <!--/.card -->

					</div>
				</div>


			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content">
 			<div class="container-fluid">

 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

	<c:import url="./layer/layout_footer.jsp"></c:import>

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

<script>

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		$('#example2').DataTable({
			"paging": true,
			"lengthChange": false,
			"ordering": true,
			"info": true,
			"autoWidth": false,
			"responsive": true,
		});
    });






</script>
</html>
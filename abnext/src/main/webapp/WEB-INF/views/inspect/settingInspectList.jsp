<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>avinext | (주)아비넥스트</title>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- DataTables -->
	<link rel="stylesheet" href="resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" href="resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">

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
						<h1> * 반려조류</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">신청접수</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<div class="invoice p-3 mb-3">
			<!-- Table row -->
			<div class="row">
				<div class="col-12">
					<div class="card">
						<!-- /.card-header -->
						<div class="card-body">
							<table id="example2" class="table table-bordered table-hover">
								<thead>
								<tr>
									<th>의뢰번호</th>
									<th>신청일</th>
									<th>상태</th>
									<th>동물명</th>
									<th>동물번호</th>
									<th>신청자(기관)</th>
									<th>담당수의사</th>
									<th>검사구분</th>
								</tr>
								</thead>
								<tbody id="listBody">
									<c:forEach var="item" items="${rceptList }" varStatus="status">
										<tr>
											<td>${item.rqstNo }</td>
											<td>${item.rqstDt }</td>
											<td>${item.procStatNm }</td>
											<td>${item.animNm }</td>
											<td>${item.animNo }</td>
											<td>${item.hospNm }</td>
											<td>${item.docNm }</td>
											<td></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.row -->
			</div>
			 <!-- /.col -->
		</div><!-- /.container-fluid -->
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../layer/layout_footer.jsp"></jsp:include>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	<form id="viewFrm" method="POST">
		<input type="hidden" name="rqstNo"/>
	</form>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables	& Plugins -->
<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
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
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
	$(function () {
		$('#example2').DataTable({
			"paging": true,
			"lengthChange": false,
			"ordering": true,
			"info": true,
			"autoWidth": false,
			"responsive": true,
		});
	});

	$(".btn-primary").on("click",function(){
		location.href = "registerInspect.do";
	});

	$("#listBody").find("tr").on("click", function(){
		var rqstNo = $(this).find("td:eq(0)").text();
		$("[name=rqstNo]").val(rqstNo);
		$("#viewFrm").attr("action","settingInspectModify");
		$("#viewFrm").submit();
	})

</script>
</body>
</html>

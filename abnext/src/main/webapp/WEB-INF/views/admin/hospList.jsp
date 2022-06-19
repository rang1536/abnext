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
  <link rel="stylesheet" href="resources/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


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
						<h1><b>기관(병원)관리</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>기관(병원)관리</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content">
 			<div class="container-fluid">
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
												<th><input type="checkbox" id="allCheck"/></th>
												<th>기관명</th>
												<th>대표자</th>
												<th>책임수의사</th>
												<th>지역</th>
												<th>지역2</th>
												<th>정산타입</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${hospList }" varStatus="status">
												<tr>
													<td>
														<input type="checkbox" name="hospNo" value="${item.hospNo }"/>
													</td>
													<td ondblclick="fn_modifyHosp('${item.hospNo }')">${item.hospNm }</td>
													<td>${item.hospCeo }</td>
													<td>${item.hospFirstDoctorNm }</td>
													<td>${item.hospSidoNm}</td>
													<td>${item.hospSigunguNm }</td>
													<td>${item.payGb }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div> <!-- /.card-body -->

								<!-- 수정페이지 키값 세팅 폼-->
								<form id="modifyHospForm">
									<input type="hidden" id="modifyHospNo" name="modifyHospNo" />
								</form>

								<div class="card-footer">
									<button type="button" id="delHospBtn" class="btn btn-sm btn-danger" onclick="fn_delHospital();">삭제</button>
									<button type="button" id="addHospBtn" class="btn btn-sm btn-success btn-flat" style="float:right;">기관병원등록</button>
								</div>
							</div> <!-- /.card -->
						</div> <!-- /.col-12 -->
					</div>  <!-- /.row -->
				</div> <!-- invoice -->

 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

	<c:import url="../layer/layout_footer.jsp"></c:import>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper  -->

<c:import url="../popup/pop_addHospital.jsp"></c:import>
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


	/*
	* 회원등록 페이지 연결
	*/
	$('#addHospBtn').on('click', function(){
		$('#popAddHosp').modal();
	})


	/*
	* 전체체크/헤제
	*/
	$('#allCheck').on('click', function(){
		if($('#allCheck').is(':checked')){
			$('input:checkbox').prop('checked', true);
		}else{
			$('input:checkbox').prop('checked', false);
		}
	})


	/*
	* 병원삭제
	*/
	function fn_delHospital(){
		var arr = new Array();

		$('input:checkbox[name="hospNo"]').each(function(){
			if($(this).is(':checked')){
				arr.push($(this).val());
			}
		})

		$.ajax({
			url : 'delHospCtrl',
			dataType : 'json',
			type : 'post',
			data : {'hospList':arr},
			success : function(data){
				if(data.result == 'succ'){
					alert('삭제되었습니다');
					window.location.reload(true);
				}
			}
		})
	}

	//기관정보수정
	function fn_modifyHosp(hospNo){
		$('#modifyHospNo').val(hospNo);

		$('#modifyHospForm').prop('action', 'modifyHospital');
		$('#modifyHospForm').submit();
	}


</script>
</html>
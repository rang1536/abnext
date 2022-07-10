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
						<h1><b>공지사항</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>공지사항</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
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
												<th>제목</th>
												<th>작성일</th>
												<th>작성자</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${boardList }" varStatus="status">
												<tr>
													<td>
														<input type="checkbox" name="boardNo" value="${item.boardNo }"/>
													</td>
													<td onclick="fn_modifyBoard('${item.boardNo }')">
														${item.subject }
														<!-- 댓글이나 파일수 카운팅 결과 필요하면 여기에 조건문으로 추가 -->
													</td>
													<td>${item.uptDt }</td>
													<td>${item.userNm }</td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div> <!-- /.card-body -->

								<!-- 수정페이지 키값 세팅 폼-->
								<form id="modifyBoardForm">
									<input type="hidden" id="modifyBoardNo" name="modifyBoardNo" />
								</form>

								<div class="card-footer">
									<button type="button" id="delBoardrBtn" class="btn btn-sm btn-danger">삭제</button>
									<button type="button" id="addBoardBtn" class="btn btn-sm btn-primary btn-flat" style="float:right;">글쓰기</button>
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

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));

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

		if(userInfo.userLev != '4'){
			$('#addBoardBtn').css('display', 'none');
			$('#delBoardrBtn').css('display', 'none');
		}
    });

	$(document).on('click', '#addBoardBtn', function(){


		if(userInfo == null || userInfo == ''){
			if(confirm('로그인 후 사용가능합니다. \n로그인페이지로 이동하시겠습니까?')){
				location.href = 'loginPage';
			}
		}else{
			if(userInfo.userLev != '4'){
				alert('관리자만 사용할 수 있습니다.');
				return;
			}else{
				location.href = 'addBoardPage';
			}
		}

	})

	function fn_modifyBoard(boardNo){
		if(userInfo.userLev == '4'){
			$('#modifyBoardNo').val(boardNo);

			$('#modifyBoardForm').prop('action', 'modifyBoard');
			$('#modifyBoardForm').submit();
		}else{ //상세보기화면을 만들어야 할듯?

		}

	}

</script>
</html>
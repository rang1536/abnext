<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>AdminLTE 3 | General Form Elements</title>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- daterange picker -->
	<link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Bootstrap Color Picker -->
	<link rel="stylesheet" href="resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet" href="resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	<!-- Select2 -->
	<link rel="stylesheet" href="resources/plugins/select2/css/select2.min.css">
	<link rel="stylesheet" href="resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
	<!-- Bootstrap4 Duallistbox -->
	<link rel="stylesheet" href="resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
	<!-- BS Stepper -->
	<link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
	<!-- dropzonejs -->
	<link rel="stylesheet" href="resources/plugins/dropzone/min/dropzone.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
	<style>
		.txtc {text-align:center;}
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
						<h1>* 진단검사 신청서</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">직접접수</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- general form elements disabled -->
				<div class="row">
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">신청정보</h3>
							</div>
							<div class="card-body">
								<table class="table table-bordered">
									<thead>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰번호</td>
											<td style="width:30%;" class="txtc">AAA2202020001</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">상태</td>
											<td style="width:30%;" class="txtc">접수</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">신청자(기관)</td>
											<td style="width:30%;" class="txtc">ㅇㅇ병원</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">담당수의사</td>
											<td style="width:30%;" class="txtc">홍길동</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">품종</td>
											<td style="width:30%;" class="txtc">앵무/앵무/유황앵무</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">생년월일</td>
											<td style="width:30%;" class="txtc">2019-02-28</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">성별</td>
											<td style="width:30%;" class="txtc">암컷</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">신청일</td>
											<td style="width:30%;" class="txtc">2022-03-15</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">참고사항</td>
											<td colspan="3">AAA2202020001</td>
										</tr>
									</thead>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<div class="col-md-6">
						<div class="card card-success">
							<div class="card-header">
								<h3 class="card-title">시료정보</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<form>
								<div class="row">
									<table id="example2" class="table table-bordered table-hover">
										<thead>
											<tr>
												<td class="txtc" style="width:15%;background-color:#F2F2F2">No</td>
												<td class="txtc" style="width:30%;background-color:#F2F2F2">시료정보</td>
												<td class="txtc" style="width:30%;background-color:#F2F2F2">시료번호</td>
												<td class="txtc" style="width:*;background-color:#F2F2F2">기타</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="txtc">1</td>
												<td class="txtc">분변</td>
												<td class="txtc">00123</td>
												<td class="txtc">바이러스</td>
											</tr>
											<tr>
												<td class="txtc">2</td>
												<td class="txtc">분변</td>
												<td class="txtc">0001</td>
												<td class="txtc">세균</td>
											</tr>
										</tbody>
									</table>
								</div>
								</form>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
				<div class="card card-info">
					<div class="card-header">
						<h3 class="card-title">실험결과</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<form>
							<div class="row">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<td class="txtc" style="width:5%;background-color:#F2F2F2">No</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">질병구분</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">검사방법</td>
											<td class="txtc" style="width:*;background-color:#F2F2F2">실험결과</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">사진</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="txtc">1</td>
											<td class="txtc">바이러스</td>
											<td class="txtc">PCR</td>
											<td class="txtc"><textarea rows="3" class="form-control" placeholder="실험결과입력"></textarea></td>
											<td class="txtc">
												<div class="custom-file">
													<input type="file" class="custom-file-input" id="customFile">
													<label class="custom-file-label" for="customFile" name="u_file">사진</label>
												</div>
																							<div id="imgViewArea" style="margin-top:10px; display:none;">
												<img id="imgArea" style="width:200px; height:100px;" onerror="imgAreaError()"/>
											</div>
											</td>
											

										</tr>
										<tr>
											<td class="txtc">2</td>
											<td class="txtc">ㅁㅁㅁ</td>
											<td class="txtc">ㅇㅇㅇ</td>
											<td class="txtc"><input type="text" class="form-control" placeholder="실험결과입력"></td>
											<td class="txtc"></td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="5" class="txtc">
												<button type="button" class="btn btn-primary btn-flat"><span style="margin:0 25px 0 20px;"><i class="fas fa-pencil-alt"></i> 설정확인</span></button>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</form>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	

	<jsp:include page="../layer/layout_footer.jsp"></jsp:include>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- date-range-picker -->
<script src="resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- dropzonejs -->

<!-- Page specific script -->
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
			format: 'YYYY.MM.DD'
	});
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#imgArea').attr('src', e.target.result); 
		}
		reader.readAsDataURL(input.files[0]);
	}
}

$(":input[name='u_file']").change(function() {
	if( $(":input[name='u_file']").val() == '' ) {
		$('#imgArea').attr('src' , '');  
	}
	$('#imgViewArea').css({ 'display' : '' });
	readURL(this);
});

// 이미지 에러 시 미리보기영역 미노출
function imgAreaError(){
	$('#imgViewArea').css({ 'display' : 'none' });
} 
</script>
</body>
</html>

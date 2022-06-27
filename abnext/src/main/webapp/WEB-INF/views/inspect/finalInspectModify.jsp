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
	<jsp:include page="../popup/pop_searchUser.jsp"></jsp:include>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>* 최종판정</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">결과입력</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- general form elements disabled -->
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">신청정보</h3>
					</div>
					<div class="card-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰번호</td>
									<td style="width:30%;" class="txtc">${rceptInfo.rqstNo }</td>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">상태</td>
									<td style="width:30%;" class="txtc">${rceptInfo.procStatNm }</td>
								</tr>
								<tr>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">신청자(기관)</td>
									<td style="width:30%;" class="txtc">${rceptInfo.hospNm }</td>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">담당수의사</td>
									<td style="width:30%;" class="txtc">${rceptInfo.docNm }</td>
								</tr>
								<tr>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">품종</td>
									<td style="width:30%;" class="txtc">${rceptInfo.animFirstNm }/${rceptInfo.animSecondNm }/${rceptInfo.animThirdNm }</td>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">생년월일</td>
									<td style="width:30%;" class="txtc">${rceptInfo.animBirth }</td>
								</tr>
								<tr>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">성별</td>
									<td style="width:30%;" class="txtc">${rceptInfo.animSex}</td>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">신청일</td>
									<td style="width:30%;" class="txtc">${rceptInfo.rqstDt}</td>
								</tr>
								<tr>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">동물명(번호)</td>
									<td style="width:30%;" class="txtc">${rceptInfo.animNm }(${rceptInfo.animNo})</td>
									<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰메모</td>
									<td style="width:30%;" class="txtc">${rceptInfo.rqstMemo }</td>
								</tr>
							</thead>
						</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

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
										<td class="txtc" style="width:30%;background-color:#F2F2F2">시료구분</td>
										<td class="txtc" style="width:30%;background-color:#F2F2F2">시료메모</td>
									</tr>
								</thead>
								<tbody id="smplList">
									<c:forEach var="item" items="${smplList }" varStatus="status">
										<tr>
											<td class="txtc" style="vertical-align:middle;">${status.index+1 }</td>
											<td class="txtc" style="vertical-align:middle;">${item.sampleName }</td>
											<td class="txtc" style="vertical-align:middle;">${item.sampleMemo }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						</form>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

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
											<td class="txtc" style="width:10%;background-color:#F2F2F2">No</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">검사구분</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">검사방법</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">실험결과</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">사진</td>
										</tr>
									</thead>
									<tbody id="inspList">
										<c:forEach var="item" items="${inspList }" varStatus="status">
											<tr>
												<td class="txtc">
													${status.index+1 }
													<input type="hidden" id="inspNo_${status.index+1 }" value="${item.inspNo}"/>
												</td>
												<td class="txtc">${item.inspFirstNm }</td>
												<td class="txtc">${item.inspTypeNm }</td>
												<td class="txtc">${item.inspResult}</td>
												<td>
												<c:forEach var="file" items="${item.inspFileList }" varStatus="status">
													<b id="bFile_${file.fileNo }">
														[<a href="javascript:void(0)" onclick="imgView('${file.fileNewNm}')">${file.fileNewNm}</a>]
     												</b>
												</c:forEach>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</form>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

				<div class="card card-danger">
					<div class="card-header">
						<h3 class="card-title">진단결과</h3>
					</div>
					<div class="card-body">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td class="txtc" style="background-color:#F2F2F2; width:20%;vertical-align:middle;">*진단명</td>
									<td>
										<div class="row">
											<div class="col-sm-3">
												<div class="form-group">
													<select class="form-control" id="diagUpCd"></select>
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<select class="form-control" id="diagCd"></select>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="txtc" style="background-color:#F2F2F2; width:20%;vertical-align:middle;">결과메모</td>
									<td><input type="text" class="form-control" placeholder="참고사항" id="result" value="${rceptInfo.result }"></td>
								</tr>
								<tr>
									<td class="txtc" style="background-color:#F2F2F2; width:20%;vertical-align:middle;">*종합소견</td>
									<td><input type="text" class="form-control" placeholder="종합소견" id="finalMemo" value="${rceptInfo.finalMemo }"></td>
								</tr>
								<tr>
									<td colspan="2" class="txtc">
										<button type="button" id="list" style="width:142.2px" class="btn btn-success btn-flat"><i class="fas fa-credit-card"></i> 목록</button>
										<button type="button" id="save" style="width:142.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 최종진단확인</button>
									</td>
								</tr>
							</tbody>
						</table>
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

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
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
<!-- Bootstrap Switch -->
<script src="resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="resources/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="resources/plugins/dropzone/min/dropzone.min.js"></script>
<!-- Customizing Js -->
<script src="resources/js/common.js"></script>
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

	$.gfn_getCode('IS001',callBackFn,'diagUpCd');
});

function callBackFn(data,col){
	var optHtml = '';
	var selFlag = false;
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
	}

	$("#"+col).html(optHtml);

	if("${rceptInfo.diagUpCd}" == '' || "${rceptInfo.diagUpCd}" == null){
		if(col == 'diagUpCd'){
			$.gfn_getCode(data[0].codeId,callBackFn,'diagCd');
		}
	}else {
		if(col == 'diagUpCd'){
			$.gfn_getCode("${rceptInfo.diagUpCd}",callBackFn,'diagCd');
			$("#diagUpCd").val("${rceptInfo.diagUpCd}");
		}else if(col == 'diagCd'){
			$("#diagCd").val("${rceptInfo.diagCd}");
		}
	}
}

function callBackFn2(data,col){
	var optHtml = '';
	var selFlag = false;
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
	}

	$("#"+col).html(optHtml);
	if(col == 'diagUpCd'){
		$.gfn_getCode(data[0].codeId,callBackFn2,'diagCd');
	}
}

$("#diagUpCd").on("change",function(){
	$.gfn_getCode($(this).val(),callBackFn2,'diagCd');
});

$("#save").on("click",function (){
	var data = {
		rqstNo : "${rceptInfo.rqstNo }",
		uptId : localStorage.getItem("userId"),
		diagUpCd : $("#diagUpCd").val(),
		diagCd : $("#diagCd").val(),
		result : $("#result").val(),
		finalMemo : $("#finalMemo").val()
	}

	$.ajax({
		url : "modifyFinal",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("저장하였습니다.");
			location.href = "finalInspectList";
		}
	});

});

$("#list").on("click",function (){
	location.href = "finalInspectList";
});

function imgView(name){
	//호스팅
	//var path = '/home/hosting_users/avinext/tomcat/webapps/files/';
	var path = '/abnext/resources/files/';
	$(".image").attr("src",path+name);
	$('#imgView').modal();
}
</script>
<jsp:include page="../popup/pop_fileView.jsp"></jsp:include>
</body>
</html>

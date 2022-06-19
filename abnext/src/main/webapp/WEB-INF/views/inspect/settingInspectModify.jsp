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
										<td class="txtc" style="width:*;background-color:#F2F2F2">상태</td>
									</tr>
								</thead>
								<tbody id="smplList">
									<c:forEach var="item" items="${smplList }" varStatus="status">
										<tr>
											<td class="txtc" style="vertical-align:middle;">${status.index+1 }</td>
											<td class="txtc" style="vertical-align:middle;">${item.sampleName }</td>
											<td class="txtc" style="vertical-align:middle;">${item.sampleMemo }</td>
											<td class="txtc">
												<div class="form-group">
													<input type="hidden" id="sampleNo_${status.index+1}" value="${item.sampleNo }"/>
													<select class="form-control" id="sampleStatus_${status.index+1 }">
														<c:forEach var="item2" items="${codeList }" varStatus="status">
															<option value="${item2.codeId }" <c:if test="${item2.codeId == item.sampleStatus}">selected</c:if>>
																${item2.codeNm }
															</option>
														</c:forEach>
													</select>
												</div>
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

				<div class="card card-info">
					<div class="card-header">
						<h3 class="card-title">검사정보 설정</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-md-10">
									<div class="row">
										<div class="col-sm-4">
											<div class="form-group">
												<label>검사구분</label>
												<select class="form-control" id="inspFirstCd"></select>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<label>검사방법</label>
												<select class="form-control" id="inspSecondCd"></select>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<label>시료선택</label>
												<div class="form-group">
													<select class="select2bs4" multiple="multiple" data-placeholder="시료선택" style="width: 100%;" id="sampleCode">
														<c:forEach var="item" items="${smplList }" varStatus="status">
															<option value="${item.sampleCode }">${item.sampleName }</option>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>&nbsp;</label>
												<button type="button" class="btn btn-block btn-info btn-flat" id="modBtn">수정</button>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>&nbsp;</label>
												<button type="button" class="btn btn-block btn-info btn-flat" >추가</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<td class="txtc" style="width:5%;background-color:#F2F2F2"></td>
											<td class="txtc" style="width:5%;background-color:#F2F2F2">No</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">검사구분</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">검사방법</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">시료</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">담당자</td>
											<td class="txtc" style="width:*;background-color:#F2F2F2">비용</td>
										</tr>
									</thead>
									<tbody id="inspList">
										<c:forEach var="item" items="${inspList }" varStatus="status">
											<tr>
												<td>
													<input type="hidden" id="inspFirstCd_${status.index+1 }" value="${item.inspFirstCd }"/>
													<input type="hidden" id="inspSecondCd_${status.index+1 }"/>
													<input type="hidden" id="sampleCode_${status.index+1 }"/>
													<input type="hidden" id="sampleName_${status.index+1 }"/>
													<div class="form-group clearfix">
														<div class="icheck-primary d-inline">
															<input type="checkbox" id="chk_${status.index+1 }">
															<label for="chk_${status.index+1 }">&nbsp;</label>
														</div>
													</div>
												</td>
												<td class="txtc">
													${status.index+1 }
													<input type="hidden" id="inspNo_${status.index+1 }" value="${item.inspNo}"/>
												</td>
												<td class="txtc">
													${item.inspFirstNm }
												</td>
												<td class="txtc">${item.inspThirdNm }</td>
												<td class="txtc" id="inspSmplCd">

												</td>
												<td class="txtc">
													<input type="hidden" id="workerNo_${status.index+1 }">
													<input type="hidden" id="workerNm_${status.index+1 }">
													<a href="javascript:void(0)" onclick="">
														<c:if test="${item.workerNo == null || item.workerNo == ''}">
															담당자
														</c:if>
														<c:if test="${item.workerNo != null && item.workerNo != ''}">
															${item.workerNm}
														</c:if>
													</a>
												</td>
												<td class="txtc"><fmt:formatNumber value="${item.inspPrice }" pattern="#,###"/></td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="6" class="txtc">
												<button type="button" id="list" style="width:121.2px" class="btn btn-success btn-flat"><i class="fas fa-credit-card"></i> 목록</button>
												<button type="button" id="sett" style="width:121.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 설정확인</button>
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

	//Date picker
	$('#reservationdate').datetimepicker({
			format: 'YYYY.MM.DD'
	});

	//검사항목
	$.gfn_getCode('B001',callBackFn,'inspFirstCd');

});

$("#sett").on("click",function (){
	var inspData = [];
	$("#inspList").find("tr").each(function(){
		var sData = {
			inspNo : $(this).find("[id^=inspNo]").val(),
			workerNo : $(this).find("[id^=workerNo]").val(),
			workerNm : $(this).find("[id^=workerNm]").val(),
			sampleCode : $(this).find("[id^=sampleCode]").val(),
			sampleName : $(this).find("[id^=sampleName]").val()
		}
		inspData.push(sData);
	});

	var smplData = [];
	$("#smplList").find("tr").each(function(){
		var sData = {
			sampleNo : $(this).find("[id^=sampleNo]").val(),
			sampleStatus : $(this).find("[id^=sampleStatus]").val()
		}
		smplData.push(sData);
	});

	var data = {
		uptId : localStorage.getItem("userId"),
		inspList : inspData,
		smplList : smplData
	}

	$.ajax({
		url : "modifySetting",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("저장하였습니다.");
		}
	});

});

function callBackFn(data,col){
	var optHtml = '';
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
	}

	$("#"+col).html(optHtml);
	if(col == 'inspFirstCd'){
		$.gfn_getCode(data[0].codeId,callBackFn,'inspSecondCd');
	}else if(col == 'inspSecondCd'){
		//$.gfn_getCode(data[0].codeId,callBackFn,'inspThirdCd');
		$("#inspPrice").val(data[0].codeDtlMemo);
	}
}

$("#inspFirstCd").on('change',function(){
	$.gfn_getCode($(this).val(),callBackFn,'inspSecondCd');
});

$("#inspSecondCd").on('change',function(){
	$.gfn_getCodeDtl($(this).val(),callBackFnGetPrice);
});

function callBackFnGetPrice(data){
	$("#inspPrice").val(data.codeDtlMemo);
}

$("#inspList").find("tr").click(function(){
	$("#inspList").find("tr").find("[id^=chk]").prop("checked",false);
	$(this).find("[id^=chk]").prop("checked",true);
});

$("#modBtn").on("click",function(){
	$("#inspList").find("tr").each(function(){
		if($(this).find("[id^=chk]").is(":checked")){
			$(this).find("[id^=inspFirstCd]").val($("#inspFirstCd").val());
			$(this).find("td:eq(2)").text($("#inspFirstCd option:selected").text());
			$(this).find("[id^=inspSecondCd]").val($("#inspSecondCd").val());
			$(this).find("td:eq(3)").text($("#inspSecondCd option:selected").text());
			$(this).find("td:eq(4)").text($("#sampleCode option:selected").text());
			var str = JSON.stringify($("#sampleCode").val());
			str = str.replace('[','').replace(']','').replace(/\"/gi,'');
			$(this).find("[id^=sampleCode]").val(str);
		}
	})
})
</script>
</body>
</html>

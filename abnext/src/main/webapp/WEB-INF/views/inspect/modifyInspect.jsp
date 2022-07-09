<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shotcut icon" href="resources/files/aviicon.png" />
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
					<!-- /.card-header -->
					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>*의뢰번호</label>
										<input type="text" class="form-control" placeholder="의뢰번호" readonly value="${rceptInfo.rqstNo }" id="rqstNo"/>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>*신청일</label>
										<input type="text" class="form-control" placeholder="신청일" readonly value="${rceptInfo.rqstDt }">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>*신청자(기관)</label>
										<input type="text" class="form-control" placeholder="ㅇㅇ병원" readonly value="${rceptInfo.hospNm }">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>*담당수의사</label>
										<input type="text" class="form-control" placeholder="나수의" readonly value="${rceptInfo.docNm }">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<label>*종</label>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<select class="form-control" disabled id="animFirstCd"></select>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<select class="form-control" disabled id="animSecondCd"></select>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<select class="form-control" disabled id="animThirdCd"></select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>*동물명</label>
										<input type="text" id="animNm" class="form-control" placeholder="동물명" readonly value="${rceptInfo.animNm}">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>*생년월일</label>
										<div class="input-group date" id="reservationdate" data-target-input="nearest">
											<!-- <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" data-toggle="datetimepicker" placeholder="생년월일"> -->
											<!-- <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker"> -->
											<input type="text" id="animBirth" class="form-control datetimepicker-input" data-target="#reservationdate" placeholder="생년월일" value="${rceptInfo.animBirth}">
											<div class="input-group-append" data-target="#reservationdate">
												<div class="input-group-text"><i class="fa fa-calendar"></i></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>*성별</label>
											<select class="form-control" disabled id="animSex">
												<option value="M">수컷</option>
												<option value="F">암컷</option>
												<option value="X">암컷</option>
											</select>
									</div>
								</div>
								<%--
								<div class="col-sm-6">
									<div class="form-group">
										<label><font color="red">등록번호(인식번호)</font></label>
										<input type="text" class="form-control" placeholder="등록번호(인식번호)" readonly value="${rceptInfo.animNm}">
									</div>
								</div>
								 --%>
								<div class="col-sm-6">
									<div class="form-group">
										<label>*보호자명</label>
										<input type="text" id="animButler" class="form-control" placeholder="보호자명" readonly value="${rceptInfo.animButler}">
										<input type="hidden" id="butlerSigunguCd" value="${rceptInfo.butlerSigunguCd}"/>
									</div>
								</div>
							</div>
							<div class="row">

								<div class="col-sm-12">
									<div class="form-group">
										<label><font color="red">의뢰참고</font></label>
										<textarea class="form-control" rows="3" placeholder="특이사항... 참고할 만한 사항 작성">${rceptInfo.rqstMemo }</textarea>
									</div>
								</div>
							</div>
						</form>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
<%--
				<div class="card card-success">
					<div class="card-header">
						<h3 class="card-title">시료정보</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<form>
							<div class="row">
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>시료</th>
											<th>메모</th>
										</tr>
									</thead>
									<tbody id="sampleTbody">
										<c:forEach var="item" items="${smplList }" varStatus="status">
											<tr>
												<td>${status.index+1 }</td>
												<td>${item.sampleName }</td>
												<td>${item.sampleMemo }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</form>
					</div>
					<!-- /.card-body -->
				</div>
 --%>
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">검사정보</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label>*시료정보</label>
									<div class="form-group">
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk01" class="chks" value="A002-01" disabled>
											<label for="chk01" style="width:80px">분변</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk02" class="chks" value="A002-02" disabled>
											<label for="chk02" style="width:80px">깃털</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk03" class="chks" value="A002-4" disabled>
											<label for="chk03" style="width:80px">혈액</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk04" class="chks" value="A002-3" disabled>
											<label for="chk04" style="width:125px">총배설강스왑</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk05" class="chks" value="A002-6" disabled>
											<label for="chk05">기타</label>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<label>&nbsp;</label>
								<input type="text" class="form-control" id="chk06" style="display:none">
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label>*임상증상 및 병력내용</label>
									<div class="form-group clearfix">
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chk11" class="chkh" value="ERR001-01">
											<label for="chk11">깃털이상</label>
										</div>
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chk12" class="chkh" value="ERR001-02">
											<label for="chk12">호흡이상</label>
										</div>
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chk13" class="chkh" value="ERR001-03">
											<label for="chk13">선위확장</label>
										</div>
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chk14" class="chkh" value="ERR001-04">
											<label for="chk14">설사</label>
										</div>
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chk15" class="chkh" value="ERR001-05">
											<label for="chk15">체중감소</label>
										</div>
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chk16" class="chkh" value="ERR001-06">
											<label for="chk16">기타</label>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<label>&nbsp;</label>
								<input type="text" class="form-control" id="chk17" style="display:none">
							</div>
						</div>

						<form>
							<div class="row">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>검사항목구분</th>
											<th>검사항목</th>
											<th>검사항복세부</th>
											<th>검사비</th>
										</tr>
									</thead>
									<tbody id="inspTbody">
										<c:set var="totPrice" value="0"/>
										<c:forEach var="item" items="${inspList }" varStatus="status">
											<tr>
												<td>${status.index+1 }</td>
												<td>${item.inspFirstNm }</td>
												<td>${item.inspSecondNm }</td>
												<td>${item.inspThirdNm }</td>
												<td style="text-align:right;"><fmt:formatNumber value="${item.inspPrice }" pattern="#,###"/></td>
											</tr>
											<c:set var="totPrice" value="${totPrice+ item.inspPrice}"/>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="4" align="center">검시비용 계</td>
											<th id="totPrice" style="text-align:right;"><fmt:formatNumber value="${totPrice }" pattern="#,###"/></th>
										</tr>
										<tr>
											<td colspan="7" align="center">
												<button type="button" id="list" style="width:109.2px" class="btn btn-success btn-flat"><i class="fas fa-credit-card"></i> 목록</button>
												<button type="button" id="acpt" style="width:109.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 접수확인</button>
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
			</div><!-- /.container-fluid -->
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

	//동물 종
	$.gfn_getCode('C001',callBackFn,'animFirstCd');
	//성별
	$("#animSex").val("${rceptInfo.animSex}");

	$("#list").on("click",function(){
		location.href = "requestInspect";
	});

	$(".chkh").each(function(){
		$(this).attr("disabled",true);
	});

	$("#acpt").on("click",function(){

		var data = {
			rqstNo : $("#rqstNo").val(),
			animNm : $("#animNm").val(),
			animButler : $("#animButler").val(),
			animBirth : $("#animBirth").val().replace(/\./gi,''),
			animFirstCd : $("#animFirstCd").val(),
			animSecondCd : $("#animSecondCd").val(),
			animThirdCd : $("#animThirdCd").val(),
			animSex : $("#animSex").val(),
			butlerSigunguCd : $("#butlerSigunguCd").val(),
			insId :localStorage.getItem("userId")
		};

		$.ajax({
			url : "createAnimal",
			data : data,
			type : "POST",
			dataType : "JSON",
			success : function(data){
				alert("저장하였습니다.");
				location.href="requestInspect";
			}
		});

	});

	$.ajax({
		url : "sampleList",
		data : {rqstNo : "${rceptInfo.rqstNo}"},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			$(".chks").each(function(){
				for(var i=0; i<data.length; i++){
					if($(this).val() == data[i].sampleCode){
						$(this).prop("checked", true);
					}
				}
			})
		}
	});

	$.ajax({
		url : "histList",
		data : {rqstNo : "${rceptInfo.rqstNo}"},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			console.log(data);
			$(".chkh").each(function(){
				for(var i=0; i<data.length; i++){
					if($(this).val() == data[i].histCode){
						$(this).prop("checked", true);
					}
				}
			})
		}
	});
});

function callBackFn(data,col){
	var optHtml = '';
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
	}

	$("#"+col).html(optHtml);

	if(col == 'animFirstCd'){
		$.gfn_getCode("${rceptInfo.animFirstCd}",callBackFn,'animSecondCd');
		$("#animFirstCd").val("${rceptInfo.animFirstCd}");
	}else if(col == 'animSecondCd'){
		$.gfn_getCode("${rceptInfo.animSecondCd}",callBackFn,'animThirdCd');
		$("#animSecondCd").val("${rceptInfo.animSecondCd}");
	}else if(col == 'animThirdCd'){
		$("#animThirdCd").val("${rceptInfo.animThirdCd}");
	}
}
</script>
</body>
</html>

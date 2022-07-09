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
	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Bootstrap Color Picker -->
	<link rel="stylesheet" href="resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet" href="resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	<!-- Select2 -->
	<link rel="stylesheet" href="resources/plugins/select2/css/select2.css">
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
		.th{text-align:center; font-weight:bold;}
		.txtc{text-align:center;}
		.txtr{text-align:right;}
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
				<div class="row">
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">신청정보</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<form>
									<input type="hidden" id="userNo"/>
									<input type="hidden" id="userNm"/>

									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*신청자(기관)</label>
												<select class="form-control select2" id="hospNo">
													<c:forEach var="item" items="${hospital }" varStatus="status">
														<option value="${item.hospNo }" data-paygb="${item.payGb }" data-adr="${item.hospSigunguNm }">${item.hospNm }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*주소</label>
												<input type="text" id="hospAdr" class="form-control" placeholder="서울 서대문구" readonly value="${hospital[0].hospSigunguNm }">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*담당수의사</label>
												<select class="form-control" id="docNo">
													<c:forEach var="item" items="${doctor }" varStatus="status">
														<option value="${item.userId }" data-hp="${item.userHp }">${item.userNm }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*연락처</label>
												<input type="text" id="userHp" class="form-control" placeholder="전화번호" readonly value="${doctor[0].userHp }">
											</div>
										</div>
									</div>
								</form>
							</div><!-- card body -->
						</div><!-- card-primary -->
					</div><!-- col-md-6 -->
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">동물정보</h3>
							</div>
							<div class="card-body">
								<form>
									<div class="row">
										<!--
										<div class="col-sm-4">
											<div class="form-group">
												<select class="form-control" id="animFirstCd"></select>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<select class="form-control" id="animSecondCd"></select>
											</div>
										</div>
										-->
										<div class="col-sm-6">
											<div class="form-group">
												<label>*종</label>
												<select class="form-control select2" id="animThirdCd">
													<c:forEach var="item" items="${species }" varStatus="status">
														<option value="${item.codeId }">${item.codeNm }</option>
													</c:forEach>
												</select>
												<input type="hidden" id="animFirstCd"/>
												<input type="hidden" id="animSecondCd"/>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*동물이름</label>
												<input type="text" class="form-control" placeholder="동물명" id="animNm">
											</div>
										</div>

									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*생년월일</label>
												<div class="form-group">
													<div class="input-group date" id="reservationdate" data-target-input="nearest">
														<input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" data-toggle="datetimepicker" placeholder="생년월일" id="animBirth">
														<div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
															<div class="input-group-text"><i class="fa fa-calendar"></i></div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<label>&nbsp;</label>
											<input type="number" class="form-control" placeholder="월령" id="animMonth">
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*성별</label>
												<select class="form-control" id="animSex">
													<option value="M">수컷</option>
													<option value="F">암컷</option>
													<option value="X">모름</option>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*보호자명</label>
												<input type="text" class="form-control" placeholder="보호자명" id="animButler">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<div class="row">
													<div class="col-7">
														<label>
															*보호자주소
														</label>
													</div>
													<div class="col-5">
														<button type="button" class="btn btn-danger btn-block btn-sm" onclick="fn_searchAdr('butler')"><i class="fa fa-book"></i> 주소검색</button>
													</div>
												</div>
												<div class="row">
													<div class="col-6">
														<input type="text" class="form-control" placeholder="시도" id="butlerSido" readonly>
													</div>
													<div class="col-6">
														<input type="text" class="form-control" placeholder="시군구" id="butlerSigungu" readonly>
														<input type="hidden" id="butlerSigunguCd">
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label><font color="red">의뢰참고</font></label>
												<input type="text" class="form-control" placeholder="의뢰참고" id="rqstMemo">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-6">
											<div class="form-group">
												<label>*사육형태</label>
												<div class="form-group clearfix">
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="single" name="chk" class="chkc">
														<label for="single">단일사육</label>
													</div>
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="multi" name="chk" class="chkc">
														<label for="multi">동거사육</label>
													</div>
												</div>
											</div>
										</div>
										<div class="col-6">
											<label>&nbsp;</label>
											<input type="number" class="form-control" placeholder="동거중인 반려동물 수" id="animCnt" style="display:none">
										</div>
									</div>
								</form>
							</div>
						</div><!-- /.card-body -->
					</div><!-- /.col-md-6 -->
				</div><!-- /.row -->

<!--
				<div class="card card-success">
					<div class="card-header">
						<h3 class="card-title">시료정보</h3>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-11">
								<div class="row">
									<div class="col-sm-5">
										<div class="form-group">
											<label>*시료정보</label>
											<select class="form-control" id="sampleCode"></select>

										</div>
									</div>
									<div class="col-sm-7">
										<div class="form-group">
											<label>시료메모</label>
											<input type="text" class="form-control" placeholder="시료메모" id="sampleMemo">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="form-group">
									<label>&nbsp;</label>
									<button type="button" class="btn btn-block btn-success btn-flat" id="addSampleBtn">추가</button>
								</div>
							</div>
						</div>
					</div>
					<div class="card-body table-responsive">
						<form>
							<div class="row">
								<table id="example2" class="table table-bordered text-nowrap">
									<thead>
										<tr>
											<td class="th" style="width:10%">번호</td>
											<td class="th" style="width:20%">시료</td>
											<td class="th" style="width:*">시료메모</td>
											<td class="th" style="width:10%">삭제</td>
										</tr>
									</thead>
									<tbody id="sampleTbody">
									</tbody>
								</table>
							</div>
						</form>
					</div>
				</div>
 -->
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">검사정보</h3>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label>*시료정보</label>
									<div class="form-group">
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk01" class="chks" value="A002-01">
											<label for="chk01" style="width:80px">분변</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk02" class="chks" value="A002-02">
											<label for="chk02" style="width:80px">깃털</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk03" class="chks" value="A002-4">
											<label for="chk03" style="width:80px">혈액</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk04" class="chks" value="A002-3">
											<label for="chk04" style="width:125px">총배설강스왑</label>
										</div>
										<div class="icheck-primary d-inline" style="vertical-align:bottom;">
											<input type="checkbox" id="chk05" class="chks" value="A002-6">
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

						<div class="row">
							<div class="form-group">
								<label>*검사항목</label>
								<div class="form-group clearfix">
									<div class="icheck-primary d-inline">
										<input type="checkbox" id="chk21" class="chkw" value="B001-01-01-001">
										<label for="chk21">PBFD</label>
									</div>
									<div class="icheck-primary d-inline">
										<input type="checkbox" id="chk22" class="chkw" value="B001-01-01-002">
										<label for="chk22">APV</label>
									</div>
									<div class="icheck-primary d-inline">
										<input type="checkbox" id="chk23" class="chkw" value="B001-01-02-003">
										<label for="chk23">PDD</label>
									</div>
									<div class="icheck-primary d-inline">
										<input type="checkbox" id="chk24" class="chkw" value="B001-01-01-101">
										<label for="chk24">chlamydia(앵무병)</label>
									</div>
									<div class="icheck-primary d-inline">
										<input type="checkbox" id="chk25" class="chkw" value="B001-01-01-999">
										<label for="chk25">성감별</label>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-10">
								<div class="row">
									<div class="col-sm-5">
										<div class="form-group">
											<select class="form-control select2" id="inspThirdCd">
												<c:forEach var="item" items="${inspTypeList }" varStatus="status">
													<option value="${item.codeId }" data-price="${item.codeDtlMemo }">${item.codeNm }</option>
												</c:forEach>
											</select>
											<input type="hidden" id="inspPrice"/>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<select class="form-control" id="inspSecondCd"></select>
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<select class="form-control" id="inspFirstCd"></select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<button type="button" class="btn btn-block btn-success btn-flat" id="addInspBtn">추가</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.card-header -->
					<div class="card-body table-responsive">
						<form>
							<div class="row">
								<table id="example2" class="table table-bordered text-nowrap">
									<thead>
										<tr>
											<td class="th">번호</td>
											<td class="th">검사항목구분</td>
											<td class="th">검사항목</td>
											<td class="th">검사항목세부</td>
											<td class="th">검사비</td>
											<td class="th">삭제</td>
										</tr>
									</thead>
									<tbody id="inspectTbody">
									</tbody>
									<tfoot>
										<tr>
											<td colspan="4" class="txtc">검사비용 계</td>
											<th class="txtr" id="sumPrice">0원</th>
											<th></th>
										</tr>
									</tfoot>
								</table>
							</div>
						</form>
					</div>
					<!-- /.card-body -->
					<div class="card-body">
						<div class="row">
							<div class="col-md-6">
								<button type="button" class="btn btn-block btn-success btn-flat btn-list"><i class="fas fa-list"></i> 목록</button>
							</div>
							<div class="col-md-6">
								<button type="button" class="btn btn-block btn-primary btn-flat btn-save"><i class="fas fa-pencil"></i> 신청하기</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /.card -->
			</div><!-- /.container-fluid -->
		</section>

	</div><!-- /.content wrapper-->
	<jsp:include page="../layer/layout_footer.jsp"></jsp:include>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

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
<!-- Customizing Js -->
<script src="resources/js/common.js"></script>
<!-- Page specific script -->
<script>
$(function () {
	bsCustomFileInput.init();

	//Initialize Select2 Elements
	$('.select2').select2();

	//Initialize Select2 Elements
	$('.select2bs4').select2({
		theme: 'bootstrap4'
	})

	//Date picker
	$('#reservationdate').datetimepicker({
		format: 'YYYY.MM.DD'
	});

	$('#reservationdate').on("change.datetimepicker", function (e) {
		var curDt = new Date();
		var birthArr = $("#animBirth").val().split(".");
		var setYear = curDt.getFullYear()-birthArr[0];
		var setMonth = curDt.getMonth()+1-birthArr[1];
		var setDate = curDt.getDate()-birthArr[2];
		var month = setYear*12;
		if(setDate >= 0){
			month += setMonth+1;
		}else {
			month += setMonth;
		}
		$("#animMonth").val(month);
	})

	$("#chk05").click(function(){
		if($(this).is(":checked")){
			$("#chk06").show();
			$("#chk06").focus();
		}else {
			$("#chk06").hide();
			$("#chk06").val("");
		}
	});

	$("#chk16").click(function(){
		if($(this).is(":checked")){
			$("#chk17").show();
			$("#chk17").focus();
		}else {
			$("#chk17").hide();
			$("#chk17").val("");
		}
	});

	console.log("${doctor[0]}");
});

$(document).ready(function(){
	//시료정보
	$.gfn_getCode('A002',callBackFn,'sampleCode');

	//의사목록
	docList();

	//로그인유저정보
	var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));

	//신청자(userId, userNm)
	$("#userNo").val(userInfo.userNo);
	$("#userNm").val(userInfo.userNm);
});

function delInspect(target){
	$(target).parent().parent().remove();
	calcPrice();
}

$("#addInspBtn").click(function(){
	var addHtml = '';
	var tblNo = 1;
	$("#inspectTbody").find("tr").each(function(){
		tblNo++;
	});

	$(".chkw").each(function(){
		if($(this).is(":checked")){
			var inspThirdCd = $(this).val();
			var contiFlag = true;
			$("#inspectTbody").find("tr").each(function(){
				if($(this).find("[id^=inspThirdCd]").val() == inspThirdCd){
					contiFlag = false;
				}
			});

			if(contiFlag){
				var inspArr = inspThirdCd.split('-');
				var inspSecondCd = inspArr[0]+'-'+inspArr[1]+'-'+inspArr[2];
				var inspFirstCd = inspArr[0]+'-'+inspArr[1];
				var inspPrice = "40,000";

				addHtml += '<tr>';
				addHtml += '	<td class="txtc">'+tblNo+'</td>';
				addHtml += '	<td class="txtc">'+$.gfn_getCodeNm(inspFirstCd);
				addHtml += '		<input type="hidden" id="inspFirstCd_'+tblNo+'" value="'+inspFirstCd+'"/>';
				addHtml += '		<input type="hidden" id="inspSecondCd_'+tblNo+'" value="'+inspSecondCd+'"/>';
				addHtml += '		<input type="hidden" id="inspThirdCd_'+tblNo+'" value="'+inspThirdCd+'"/>';
				addHtml += '		<input type="hidden" id="inspPrice_'+tblNo+'" value="'+inspPrice+'"/>';
				addHtml += '	</td>';
				addHtml += '	<td class="txtc">'+$.gfn_getCodeNm(inspSecondCd)+'</td>';
				addHtml += '	<td class="txtc">'+$.gfn_getCodeNm(inspThirdCd)+'</td>';
				addHtml += '	<td class="txtr">'+inspPrice+'</td>';
				addHtml += '	<td class="txtc"><a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)" onclick="delInspect(this)"><i class="fas fa-trash"></i> 삭제 </a></td>';
				addHtml += '</tr>';
				tblNo++;
			}
		}
	});

	if($("#inspThirdCd").val() != '' && $("#inspThirdCd").val() != 'undefined'){
		var inspThirdCd = $("#inspThirdCd").val();
		var contiFlag = true;
		$("#inspectTbody").find("tr").each(function(){
			if($(this).find("[id^=inspThirdCd]").val() == inspThirdCd){
				contiFlag = false;
			}
		});

		if(contiFlag){
			var inspArr = inspThirdCd.split('-');
			var inspSecondCd = inspArr[0]+'-'+inspArr[1]+'-'+inspArr[2];
			var inspFirstCd = inspArr[0]+'-'+inspArr[1];
			var inspPrice = "40,000";

			addHtml += '<tr>';
			addHtml += '	<td class="txtc">'+tblNo+'</td>';
			addHtml += '	<td class="txtc">'+$.gfn_getCodeNm(inspFirstCd);
			addHtml += '		<input type="hidden" id="inspFirstCd_'+tblNo+'" value="'+inspFirstCd+'"/>';
			addHtml += '		<input type="hidden" id="inspSecondCd_'+tblNo+'" value="'+inspSecondCd+'"/>';
			addHtml += '		<input type="hidden" id="inspThirdCd_'+tblNo+'" value="'+inspThirdCd+'"/>';
			addHtml += '		<input type="hidden" id="inspPrice_'+tblNo+'" value="'+inspPrice+'"/>';
			addHtml += '	</td>';
			addHtml += '	<td class="txtc">'+$.gfn_getCodeNm(inspSecondCd)+'</td>';
			addHtml += '	<td class="txtc">'+$.gfn_getCodeNm(inspThirdCd)+'</td>';
			addHtml += '	<td class="txtr">'+inspPrice+'</td>';
			addHtml += '	<td class="txtc"><a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)" onclick="delInspect(this)"><i class="fas fa-trash"></i> 삭제 </a></td>';
			addHtml += '</tr>';
			tblNo++;
		}
	}

	$("#inspectTbody").append(addHtml);
	calcPrice();

});

$("#addSampleBtn").click(function(){
	var tblNo = Number($("#sampleTbody").find("tr:last").find("td:eq(0)").text())+1;
	var td2Text = $("#sampleCode option:selected").text();

	var sampleCode = $("#sampleCode").val();
	var sampleMemo = $("#sampleMemo").val();

	var addHtml = '<tr>';
	addHtml += '	<td class="txtc">'+tblNo+'</td>';
	addHtml += '	<td class="txtc">'+td2Text;
	addHtml += '		<input type="hidden" id="sampleCode_'+tblNo+'" value="'+sampleCode+'"/>';
	addHtml += '		<input type="hidden" id="sampleMemo_'+tblNo+'" value="'+sampleMemo+'"/>';
	addHtml += '	</td>';
	addHtml += '	<td class="txtc">'+sampleMemo+'</td>';
	addHtml += '	<td class="txtc"><a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)" onclick="delSample(this)"><i class="fas fa-trash"></i> 삭제 </a></td>';
	addHtml += '</tr>';

	$("#sampleTbody").append(addHtml);
});

function delSample(target){
	$(target).parent().parent().remove();
	$("#sampleTbody").find("tr").each(function(idx){
		$(this).find("td:eq(0)").text(idx+1);
	});
}

function calcPrice(){
	var totalPrice = 0;
	$("#inspectTbody").find("tr").each(function(idx){
		var txtPrice = $(this).find("td:eq(4)").text().replace(/,/gi,'');
		var price = Number(txtPrice.replace(/원/gi,''));
		totalPrice += price;
		$(this).find("td:eq(0)").text(idx+1);
	});

	$("#sumPrice").text($.gfn_setComma(totalPrice)+'원');
}

$(".btn-save").on('click',function(){
	//필수값 체크
	if(!validSave()){
		return;
	}

	var arrayInsp = [];
	$("#inspectTbody").find("tr").each(function(){
		var insp = {
				inspFirstCd : $(this).find("[id^=inspFirstCd]").val(),
				inspSecondCd : $(this).find("[id^=inspSecondCd]").val(),
				inspThirdCd : $(this).find("[id^=inspThirdCd]").val(),
				inspPrice : $(this).find("[id^=inspPrice]").val().replace(/,/gi,'').replace('원',''),
				insId : localStorage.getItem("userId")
		}
		arrayInsp.push(insp);
	});

	var arraySmpl = [];
	$(".chks").each(function(){
		if($(this).is(":checked")){
			var smpl = {
				sampleCode : $(this).val(),
				insId : localStorage.getItem("userId")
			}
			arraySmpl.push(smpl);
		}
	});

	var arrayHist = [];
	$(".chkh").each(function(){
		if($(this).is(":checked")){
			var hist = {
				histCode : $(this).val(),
				insId : localStorage.getItem("userId")
			}
			arrayHist.push(hist);
		}
	});

	var price = $("#sumPrice").text().replace(/,/gi,'').replace('원','');
	var data = {
			hospNo : $("#hospNo").val(),
			hospNm : $("#hospNo option:selected").text(),
			userNo : $("#userNo").val(),
			userNm : $("#userNm").val(),
			animNo : '0',
			animNm : $("#animNm").val(),
			docNo : $("#docNo option:selected").val(),
			docNm : $("#docNo option:selected").text(),
			animButler : $("#animButler").val(),
			butlerSido : $("#butlerSido").val(),
			butlerSigungu : $("#butlerSigungu").val(),
			butlerSigunguCd : $("#butlerSigunguCd").val(),
			animBirth : $("#animBirth").val(),
			animFirstCd : $("#animFirstCd").val(),
			animSecondCd : $("#animSecondCd").val(),
			animThirdCd : $("#animThirdCd").val(),
			animSex : $("#animSex").val(),
			procStat : '1',
			procStatNm : '신청',
			rqstMemo : $("#rqstMemo").val(),
			payGb : $("#hospNo option:selected").data("paygb"),
			price : price,
			payStat : '01',
			insId : localStorage.getItem("userId"),
			inspList : arrayInsp,
			smplList : arraySmpl,
			histList : arrayHist
	}

	$.ajax({
		url : "insertInspect",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("등록되었습니다.");
			location.href = "requestInspect";
		}
	});
});

function validSave(){
	var chkLen = 0;
	$(".chkc").each(function(){
		if($(this).is(":checked"))
			chkLen++;
	});

	var inspLen = 0;
	$('#inspectTbody').find("tr").each(function(idx){
		inspLen++;
	});
/*
	var smplLen = 0;
	$('.chks').each(function(idx){
		if($(this).is(":checked")) smplLen++;
	});
 */
	if(inspLen == 0){
		alert('하나이상의 검사정보를 입력해주세요.');
		validFlag = false;
		/*
	}else if(smplLen == 0){
		alert('하나이상의 시료정보를 입력해주세요.');
		validFlag = false;
		 */
	}else if(chkLen == 0){
		alert('사육형태를 체크해주세요.');
		validFlag = false;
	}else {
		var validFlag = true;
		var validItem = ['docNo', 'animFirstCd', 'animSecondCd', 'animThirdCd', 'animNm', 'animBirth'
									,'animSex', 'animButler', 'butlerSido', 'butlerSigungu'
			];
		var validItemNm = ['담당수의사', '동물 종 첫번째', '동물 종 두번째', '동물 종 세번째', '동물이름', '동물생년월일'
									,'동물성별', '보호자이름', '보호자주소(시도)', '보호자주소(시군구)'
			];
		for(var i=0; i<validItem.length; i++){
			if($("#"+validItem[i]).val() == '' || $("#"+validItem[i]).val() == null){
				validFlag = false;
				$("#"+validItem[i]).focus();
				alert('필수값['+validItemNm[i]+']을 입력해주세요 ');
				break;
			}
		}
	}

	return validFlag;
}

function docList(){
	$.ajax({
		url : "selectDoctorList",
		data : {userId : localStorage.getItem("userId")},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			var optHtml = '';
			for(var i=0; i<data.length; i++){
				optHtml += '<option value="'+data[i].userNo+'" data-hp="'+data[i].userHp+'">'+data[i].userNm+'</option>';
			}
			$("#docNo").html(optHtml);
		}
	});
}

$(document).on('change','#hospNo',function(){
	$("#hospAdr").val($("#hospNo option:selected").data("adr"));
	var dt = {hospNo : $("#hospNo").val()};
	$("#userHp").val("");
	$.ajax({
		url : "selectDoctorListByHosp",
		data : dt,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			var optHtml = '';
			for(var i=0; i<data.length; i++){
				optHtml += '<option value="'+data[i].userNo+'" data-hp="'+data[i].userHp+'">'+data[i].userNm+'</option>';
			}
			$("#docNo").html(optHtml);
			if(data != null){
				$("#userHp").val(data[0].userHp);
			}
		}
	});
});

$(document).on('change','#docNo',function(){
	$("#userHp").val($("#docNo option:selected").data('hp'));
})

window.onload = function(){
	animControl();
	inspControl();
	$("#inspThirdCd").prepend('<option value="">선택</option>');
	$("#inspThirdCd").val("");
}

$(document).on('change','#animThirdCd',function(){
	animControl();
});


$(document).on('change','#inspThirdCd',function(){
	inspControl();
});


function animControl(){
	var codeId = $("#animThirdCd").val();
	var codeArr = codeId.split('-');

	$("#animFirstCd").val(codeArr[0]+'-'+codeArr[1]);
	$("#animSecondCd").val(codeArr[0]+'-'+codeArr[1]+'-'+codeArr[2]);
}

function inspControl(){
	var codeId = $("#inspThirdCd").val();
	var codeArr = codeId.split('-');

	$("#inspFirstCd").val(codeArr[0]+'-'+codeArr[1]);
	$("#inspSecondCd").val(codeArr[0]+'-'+codeArr[1]+'-'+codeArr[2]);

	$.gfn_getCode(codeArr[0]+'-'+codeArr[1],callBackFn,'inspSecondCd');
}

function callBackFn(data,col){
	var optHtml = '';
	var codeId = $("#inspThirdCd").val();
	var codeArr = codeId.split('-');

	if(col == 'inspSecondCd'){
		for(var i=0; i<data.length; i++){
			if(data[i].codeId == codeArr[0]+'-'+codeArr[1]+'-'+codeArr[2]) {
				optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
			}
		}
		$.gfn_getCode(codeArr[0],callBackFn,'inspFirstCd');
	}else if(col == 'inspFirstCd'){
		for(var i=0; i<data.length; i++){
			if(data[i].codeId == codeArr[0]+'-'+codeArr[1]) {
				optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
			}
		}
	}
	$("#"+col).html(optHtml);
}

$(document).on('keyup','#animMonth',function(){
	var month = $(this).val();
	var now = new Date();
	var chgMon = Number(now.getMonth()) - Number(month);
	var chgDate = new Date(now.getFullYear(),chgMon,now.getDate());
	var mon = chgDate.getMonth()+1;
	if(mon < 10) mon = "0"+mon;
	var dt = chgDate.getDate();
	if(dt < 10) dt = "0"+dt;
	$("#animBirth").val(chgDate.getFullYear()+'.'+mon+'.'+dt);
});

$(document).on('click','.chkc',function(){
	$(".chkc").each(function(){
		$(this).prop("checked", false);
	})
	var id = $(this).attr('id');
	$("#"+id).prop("checked", true);

	if(id == 'single'){
		$("#animCnt").val("1");
		$("#animCnt").hide();
	}else {
		$("#animCnt").show();
		$("#animCnt").focus();
		$("#animCnt").val("");
	}
});

$(".btn-list").click(function (){
	location.href = 'requestInspect';
})



</script>
</body>
</html>

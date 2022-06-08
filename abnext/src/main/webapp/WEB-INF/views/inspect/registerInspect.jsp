<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*신청자(기관)</label>
												<input type="text" class="form-control" placeholder="ㅇㅇ동물병원" readonly>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*주소</label>
												<input type="text" class="form-control" placeholder="서울 서대문구" readonly>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*담당수의사</label>
												<select class="form-control">
													<option>나수의</option>
													<option>option 2</option>
													<option>option 3</option>
													<option>option 4</option>
													<option>option 5</option>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*연락처</label>
												<input type="text" class="form-control" placeholder="01012345678" readonly>
											</div>
										</div>
									</div>
								</form>
							</div><!-- card body -->
						</div><!-- card-primary -->
					</div><!-- col-md-6 -->
					<div class="col-md-6">
						<div class="card card-indigo">
							<div class="card-header">
								<h3 class="card-title">동물정보</h3>
							</div>
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-sm-12">
											<label>*종</label>
										</div>
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
										<div class="col-sm-4">
											<div class="form-group">
												<select class="form-control" id="animThirdCd"></select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*동물명</label>
												<input type="text" class="form-control" placeholder="동물명" id="animNm">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>*생년월일</label>
												<div class="input-group date" id="reservationdate" data-target-input="nearest">
													<input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" data-toggle="datetimepicker" placeholder="생년월일" id="animBirth">
													<div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
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
												<select class="form-control" id="animSex">
													<option>수컷</option>
													<option>암컷</option>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label><font color="red">등록번호(인식번호)</font></label>
												<input type="text" class="form-control" placeholder="등록번호(인식번호)">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>*보호자명</label>
												<input type="text" class="form-control" placeholder="보호자명" id="animButler">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label><font color="red">의뢰참고</font></label>
												<input type="text" class="form-control" placeholder="의뢰참고" id="rqstMemo">
												<!-- <textarea class="form-control" rows="3" placeholder="특이사항(참고할 만한 사항)"></textarea> -->
											</div>
										</div>
									</div>
								</form>
							</div>
						</div><!-- /.card-body -->
					</div><!-- /.col-md-6 -->
				</div><!-- /.row -->
				

				<div class="card card-success">
					<div class="card-header">
						<h3 class="card-title">검사정보</h3>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-3">
								<div class="form-group">
									<label>*시료정보</label>
									<select class="form-control" id="sampleCode"></select>
									
								</div>
							</div>
							<div class="col-sm-2">
								<div class="form-group">
									<label>&nbsp;</label>
									<select class="form-control" id="sampleType"></select>
								</div>
							</div>
							
							<div class="col-sm-7">
								<div class="form-group">
									<label>시료메모</label>
									<input type="text" class="form-control" placeholder="시료메모" id="sampleMemo">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<label>*검사항목</label>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<select class="form-control" id="inspFirstCd"></select>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<select class="form-control" id="inspSecondCd"></select>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<select class="form-control" id="inspThirdCd"></select>
									<input type="hidden" id="inspPrice"/>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<div class="row">
										<div class="col-6">
											<button type="button" class="btn btn-block btn-success btn-flat" id="addBtn">추가</button>
										</div>
										<div class="col-6">
											<button type="button" class="btn btn-block btn-danger btn-flat" id="clearBtn">초기화</button>
										</div>
									</div>
								</div>
							</div>
<!-- 							<div class="col-sm-2">
								<div class="form-group">
									<button type="button" class="btn btn-block btn-danger btn-flat" id="clearBtn">초기화</button>
								</div>
							</div> -->
						</div>
					</div>
					<!-- /.card-header -->
					<div class="card-body table-responsive p-0">
						<form>
							<div class="row">
								<table id="example2" class="table table-bordered text-nowrap">
									<thead>
										<tr>
											<td class="th">번호</td>
											<td class="th">시료</td>
											<td class="th">혼합구분</td>
											<td class="th">시료번호</td>
											<td class="th">검사항목구분</td>
											<td class="th">검사항목</td>
											<td class="th">검사항복세부</td>
											<td class="th">검사비</td>
											<td class="th">삭제</td>
										</tr>
									</thead>
									<tbody id="inspectTbody">
										<tr>
											<td class="txtc">1</td>
											<td class="txtc">분변</td>
											<td class="txtc">단일</td>
											<td class="txtc">0001</td>
											<td class="txtc">바이러스</td>
											<td class="txtc">PDD</td>
											<td class="txtc">PDD</td>
											<td class="txtr">30,000원</td>
											<td class="txtc"><a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)" onclick="delInspect(this)"><i class="fas fa-trash"></i> 삭제 </a></td>
										</tr>
										<tr>
											<td class="txtc">2</td>
											<td class="txtc">분변</td>
											<td class="txtc">혼합</td>
											<td class="txtc">0001</td>
											<td class="txtc">세균</td>
											<td class="txtc">살모넬라</td>
											<td class="txtc">살모넬라</td>
											<td class="txtr">40,000원</td>
											<td class="txtc"><a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)" onclick="delInspect(this)"><i class="fas fa-trash"></i> 삭제 </a></td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="7" class="txtc">검사비용 계</td>
											<th class="txtr" id="sumPrice">70,000원</th>
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
							<div class="col-sm-12">
								<div class="form-group">
									<button type="button" class="btn btn-block btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 신청하기</button>
								</div>
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
});

$(document).ready(function(){
	var uppCodeId = 'SAMPLE_CODE';
	$.gfn_getCode(uppCodeId,callBackFn);
	uppCodeId = 'SAMPLE_TYPE';
	$.gfn_getCode(uppCodeId,callBackFn);
	uppCodeId = 'INSPECTION_ITEM';
	$.gfn_getCode(uppCodeId,callBackFn);
});

function callBackFn(data){
	var optHtml = '';
	
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>'; 
	}
	
	if(data[0].uppCodeId == 'SAMPLE_CODE'){
		$("#sampleCode").html(optHtml);
	}else if(data[0].uppCodeId == 'SAMPLE_TYPE'){
		$("#sampleType").html(optHtml);
	}else if(data[0].uppCodeId == 'INSPECTION_ITEM'){
		$("#inspFirstCd").html(optHtml);
		chgCodeCd2(data[0].codeId);
	}
	
	
}

function chgCodeCd2(code){
	$.gfn_getCode(code,callBackFnCate2);
}

function callBackFnCate2(data){
	var optHtml = '';
	
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>'; 
	}
	$("#inspSecondCd").html(optHtml);
	chgCodeCd3(data[0].codeId);
	
}

function chgCodeCd3(code){
	$.gfn_getCode(code,callBackFnCate3);
}

function callBackFnCate3(data){
	var optHtml = '';
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>'; 
	}
	$("#inspThirdCd").html(optHtml);
}

function delInspect(target){
	$(target).parent().parent().remove();
	calcPrice();
}

$("#addBtn").click(function(){
	var tblNo = Number($("#inspectTbody").find("tr:last").find("td:eq(0)").text())+1;
	var td2Text = $("#sampleCode option:selected").text();
	var td3Text = $("#sampleType option:selected").text();
	var td4Text = $("#sampleCode option:selected").val();
	var td5Text = $("#inspFirstCd option:selected").text();
	var td6Text = $("#inspSecondCd option:selected").text();
	var td7Text = $("#inspThirdCd option:selected").text();
	var td8Text = "50,000원";
	
	var sampleCode = $("#sampleCode").val();
	var sampleType = $("#sampleType").val();
	var sampleMemo = $("#sampleMemo").val();
	var inspFirstCd = $("#inspFirstCd").val();
	var inspSecondCd= $("#inspSecondCd").val();
	var inspThirdCd= $("#inspThirdCd").val();
	var inspPrice= $("#inspPrice").val();
	
	var addHtml = '<tr>';
	addHtml += '	<td class="txtc">'+tblNo+'</td>';
	addHtml += '	<td class="txtc">'+td2Text;
	addHtml += '		<input type="hidden" id="sampleCode_'+tblNo+'" value="'+sampleCode+'"/>';
	addHtml += '		<input type="hidden" id="sampleType_'+tblNo+'" value="'+sampleType+'"/>';
	addHtml += '		<input type="hidden" id="sampleMemo_'+tblNo+'" value="'+sampleMemo+'"/>';
	addHtml += '		<input type="hidden" id="inspFirstCd_'+tblNo+'" value="'+inspFirstCd+'"/>';
	addHtml += '		<input type="hidden" id="inspSecondCd_'+tblNo+'" value="'+inspSecondCd+'"/>';
	addHtml += '		<input type="hidden" id="inspThirdCd_'+tblNo+'" value="'+inspThirdCd+'"/>';
	addHtml += '		<input type="hidden" id="inspPrice_'+tblNo+'" value="'+inspPrice+'"/>';
	addHtml += '	</td>';
	addHtml += '	<td class="txtc">'+td3Text+'</td>';
	addHtml += '	<td class="txtc">'+td4Text+'</td>';
	addHtml += '	<td class="txtc">'+td5Text+'</td>';
	addHtml += '	<td class="txtc">'+td6Text+'</td>';
	addHtml += '	<td class="txtc">'+td7Text+'</td>';
	addHtml += '	<td class="txtr">'+td8Text+'</td>';
	addHtml += '	<td class="txtc"><a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)" onclick="delInspect(this)"><i class="fas fa-trash"></i> 삭제 </a></td>';
	addHtml += '</tr>';
	console.log(addHtml);
	$("#inspectTbody").append(addHtml);
	calcPrice();
});

function calcPrice(){
	var totalPrice = 0;
	$("#inspectTbody").find("tr").each(function(idx){
		var txtPrice = $(this).find("td:eq(7)").text().replace(/,/gi,'');
		var price = Number(txtPrice.replace(/원/gi,''));
		totalPrice += price;
		$(this).find("td:eq(0)").text(idx+1);
	});
	
	$("#sumPrice").text($.gfn_setComma(totalPrice)+'원');
}
</script>
</body>
</html>

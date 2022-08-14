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
	<!-- Bootstrap4 Duallistbox -->
	<link rel="stylesheet" href="resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
	<!-- BS Stepper -->
	<link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
	<!-- dropzonejs -->
	<link rel="stylesheet" href="resources/plugins/dropzone/min/dropzone.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.css">
	<!-- Toastr -->
	<link rel="stylesheet" href="resources//plugins/toastr/toastr.min.css">
	<style>
		.txtc {text-align:center;}

		td {text-align:center}
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
						<h1><b>결과입력 대상</b></h1>
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
		<section class="content" style="font-size:13px;">
			<div class="container-fluid">
				<!-- general form elements disabled -->
				<div class="row">
					<div class="col-12">
						<div class="card card-primary card-outline">
							<!-- /.card-header -->
							<div class="card-header">
				              <h3 class="card-title"><b>신청정보</b></h3>
				            </div>

							<!-- /.card-header -->
							<div class="card-body table-responsive">
								<table class="table table-bordered text-nowrap">
									<tbody>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰번호</td>
											<td style="width:30%;" class="txtc">${rceptInfo.pdlNo }</td>
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
											<td style="width:30%;" class="txtc">${rceptInfo.animSexNm}</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">신청일</td>
											<td style="width:30%;" class="txtc">${rceptInfo.rqstDt}</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">동물명(번호)</td>
											<td style="width:30%;" class="txtc">${rceptInfo.animNm }(${rceptInfo.animNo})</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰메모</td>
											<td style="width:30%;" class="txtc">${rceptInfo.rqstMemo }</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">시료정보</td>
											<th colspan="3" class="txtl">
												<div class="form-group" style="margin-bottom:-1px;">
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
													<input type="text" class="" id="chk06" style="display:none" disabled>
												</div>
											</th>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">임상증상 및 병력내용</td>
											<th colspan="3" class="txtl">
												<div class="form-group clearfix" style="margin-bottom:-1px;">
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
													<input type="text" class="" id="chk17" style="display:none" disabled>
												</div>
											</th>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
					<!-- /.card -->
					</div>
				</div>

				<div class="row">
					<div class="col-12">
						<div class="card card-primary card-outline">
							<!-- /.card-header -->
							<div class="card-header">
				              <h3 class="card-title"><b>실험결과</b></h3>
				            </div>

							<!-- /.card-header -->
							<div class="card-body table-responsive">
								<table class="table table-bordered table-hover text-nowrap">
									<thead>
										<tr>
											<td class="txtc" style="width:5%;background-color:#F2F2F2">No</td>
											<td class="txtc" style="width:17%;background-color:#F2F2F2">검사구분</td>
											<td class="txtc" style="width:17%;background-color:#F2F2F2">검사방법</td>
											<td class="txtc" style="width:*;background-color:#F2F2F2">검사항목</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">시료</td>
										</tr>
									</thead>
									<tbody id="inspList">
										<c:forEach var="item" items="${inspList }" varStatus="status">
											<tr>
												<td class="txtc">
													${status.index+1 }
													<input type="hidden" id="inspNo_${status.index+1 }" value="${item.inspNo}"/>
													<input type="hidden" id="inspResult_${status.index+1 }" value="${item.inspResult}"/>
													<input type="hidden" id="inspFirstCd_${status.index+1 }" value="${item.inspFirstCd}"/>
													<input type="hidden" id="inspSecondCd_${status.index+1 }" value="${item.inspSecondCd}"/>
													<input type="hidden" id="inspThirdCd_${status.index+1 }" value="${item.inspThirdCd}"/>
												</td>
												<td class="txtc">${item.inspFirstNm }</td>
												<td class="txtc">${item.inspSecondNm }</td>
												<td class="txtc">${item.inspThirdNm }</td>
												<td class="txtc">${item.sampleName }</td>
												<%--
												<td class="txtc">
													<input type="text" id="inspResult_${status.index+1 }" class="form-control" placeholder="실험결과" value="${item.inspResult}">
												</td>
												 --%>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
				<div style="z-index:9">
					<div class="row">
						<div class="col-12">
							<div class="card card-primary card-outline">
								<!-- /.card-header -->
								<div class="card-header">
					              <h3 class="card-title"><b>종합소견</b></h3>
					            </div>

								<div class="card-body">
									<textarea class="form-control" id="finalMemo" rows="4">${rceptInfo.finalMemo}</textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
 				<div class="result"></div>
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
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>
<!-- ChartJS -->
<script src="resources/plugins/chart.js/Chart.min.js"></script>

<script>

var inputType1Cnt = 1;
var resultCnt = 1;

$(function () {
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
						if($(this).val() == 'A002-6'){
							$("#chk06").val(data[i].sampleMemo);
							$("#chk06").show();
						}
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
			$(".chkh").each(function(){
				for(var i=0; i<data.length; i++){
					if($(this).val() == data[i].histCode){
						$(this).prop("checked", true);
						if($(this).val() == 'ERR001-06'){
							$("#chk17").val(data[i].histMemo);
							$("#chk17").show();
						}
					}
				}
			})
		}
	});

	$(".chks , .chkh").prop("disabled", true);

});

window.onload = function(){
	$("#inspList").find("tr").each(function(idx){
		var k = idx+1;
		var secVal = $(this).find("[id^=inspSecondCd]").val();
		if(secVal == 'B001-01-01'){
			fnPcr($(this).find("[id^=inspNo]").val(),k);
		}else if(secVal == 'B001-01-14'){
			fnAnti($(this).find("[id^=inspNo]").val(),k);
		}else if(secVal == 'B001-03-18'){
			fnSerum($(this).find("[id^=inspNo]").val(),k);
		}else if(secVal == 'B001-04-23'){
			fnBloodChem($(this).find("[id^=inspNo]").val(),k);
		}else if(secVal == 'B001-04-24'){
			fnCbc($(this).find("[id^=inspNo]").val(),k);
		}else {
			drawImg($(this).find("[id^=inspNo]").val(),k);
		}
	});
}

function imgView(name){
	//호스팅
	//var path = '/home/hosting_users/avinext/tomcat/webapps/files/';
	var path = '/abnext/resources/files/';
	$(".image").attr("src",path+name);
	$('#imgView').modal();
}


/*****************************************************************
 *                  검 사 클 릭 이 벤 트                                                                           *
 *****************************************************************/
function drawImg(inspNo,k){
	$.ajax({
		url : 'getFileList',
		data : {inspNo : inspNo, fileGb : 'F001-05'},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var htmlData = '';
			var inputType1 = '';
			inputType1 += '<div class="row">';
			inputType1 += '	<div class="col-md-6">';
			inputType1 += '		<div class="card card-primary card-outline">';
			inputType1 += '			<div class="card-header">';
			inputType1 += '				<h3 class="card-title"><b>검사메모</b></h3>';
			inputType1 += '			</div>';
			inputType1 += '			<div class="card-body">';
			inputType1 += '				<table class="table">';
			inputType1 += '					<tbody>';
			inputType1 += '						<tr>';
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">검사번호</td>';
			inputType1 += '							<td id="inspNo'+k+'"></td>';
			inputType1 += '						</tr>';
			inputType1 += '						<tr>';
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">시료</td>';
			inputType1 += '							<td id="sample'+k+'"></td>';
			inputType1 += '						</tr>';
			inputType1 += '						<tr>';
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">검사구분</td>';
			inputType1 += '							<td id="inspCd'+k+'"></td>';
			inputType1 += '						</tr>';
			inputType1 += '						<tr>';
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">담당자</td>';
			inputType1 += '							<td id="worker'+k+'"></td>';
			inputType1 += '						</tr>';
			inputType1 += '						<tr>';
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">등록일</td>';
			inputType1 += '							<td id="uptDt'+k+'"></td>';
			inputType1 += '						</tr>';
			inputType1 += '						<tr>';
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">검사메모</td>';
			inputType1 += '							<td id="inspResult'+k+'"></td>';
			inputType1 += '						</tr>';
			inputType1 += '					</tbody>';
			inputType1 += '				</table>';
			inputType1 += '			</div>';
			inputType1 += '		</div>';
			inputType1 += '	</div>';
			inputType1 += '	<div class="col-md-6">';
			inputType1 += '		<div class="card card-primary card-outline">';
			inputType1 += '			<div class="card-header">';
			inputType1 += '				<h3 class="card-title"><b>검사사진</b></h3>';
			inputType1 += '			</div>';
			inputType1 += '			<div class="card-body">';
			inputType1 += '				<div>';
			inputType1 += '					<div class="filter-container row previewList'+inputType1Cnt+'"></div>';
			inputType1 += '				</div>';
			inputType1 += '			</div>';
			inputType1 += '		</div>';
			inputType1 += '	</div>';
			inputType1 += '</div>';
			$(".result").append(inputType1);

			for(var i=0; i<data.length; i++){
				var item = data[i];
				var checked = '';
				if(item.closeYn == 'Y'){
					checked = 'checked';
				}
				htmlData += '<div class="filtr-item col-sm-3" id="previewImg'+item.fileNo+'">';
				htmlData += '	<a id="imgLoad'+item.fileNo+'">';
				htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+imgDomain+item.fileNewNm+'"/>';
				htmlData += '	</a>';
				htmlData += '</div>';
				htmlData += '<div class="col-sm-9" id="preview'+item.fileNo+'">';
				htmlData += '	<div class="row">';
				htmlData += '		<div class="col-8">'+item.title+'</div>';
				htmlData += '		<div class="col-4">';
				htmlData += '			<label for="chk1"></label>';
				htmlData += '			<div class="form-group clearfix" style="margin-left:9px;margin-top:-10px;">';
				htmlData += '				<div class="icheck-primary d-inline">';
				htmlData += '					<input type="checkbox" disabled id="chk'+item.fileNo+'" '+checked+'>';
				htmlData += '					<label for="chk'+item.fileNo+'">비공개</label>';
				htmlData += '				</div>';
				htmlData += '			</div>';
				htmlData += '		</div>';
				htmlData += '	</div>';
				htmlData += '	<div class="row">';
				htmlData += '		<div class="col-12">'+item.content+'</div>';
				htmlData += '	</div>';
				htmlData += '</div>';

			}
			$(".previewList"+inputType1Cnt).append(htmlData);
			inputType1Cnt++;

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});
}

function fnCbc(inspNo,k){
	$.ajax({
		url : 'getCbcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = "";
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사메모</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<table class="table">';
			html += '					<tbody>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사번호</td>';
			html += '							<td id="inspNo'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">시료</td>';
			html += '							<td id="sample'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사구분</td>';
			html += '							<td id="inspCd'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">담당자</td>';
			html += '							<td id="worker'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">등록일</td>';
			html += '							<td id="uptDt'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사메모</td>';
			html += '							<td id="inspResult'+k+'"></td>';
			html += '						</tr>';
			html += '					</tbody>';
			html += '				</table>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>혈구검사</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:50%"/>';
			html += '							<col style="width:50%"/>';
			html += '						</colgroup>';
			html += '						<tbody id="cbc">';
			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			$(".result").append(html);

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				subHtml += '<tr>';
				subHtml += '<td>'+item.itemName+'</td>';
				subHtml += '<td>'+item.val+'</td>';
				subHtml += '</tr>';
			}
			$("#cbc").html(subHtml);

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});
}

function fnBloodChem(inspNo,k){
	$.ajax({
		url : 'getBcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = "";
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사메모</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<table class="table">';
			html += '					<tbody>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사번호</td>';
			html += '							<td id="inspNo'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">시료</td>';
			html += '							<td id="sample'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사구분</td>';
			html += '							<td id="inspCd'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">담당자</td>';
			html += '							<td id="worker'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">등록일</td>';
			html += '							<td id="uptDt'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사메모</td>';
			html += '							<td id="inspResult'+k+'"></td>';
			html += '						</tr>';
			html += '					</tbody>';
			html += '				</table>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>혈액화학검사<b/></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:50%"/>';
			html += '							<col style="width:50%"/>';
			html += '						</colgroup>';
			html += '						<tbody id="bloodChem">';
			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			$(".result").append(html);

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				subHtml += '<tr>';
				subHtml += '<td>'+item.itemName+'</td>';
				subHtml += '<td>'+item.val+'</td>';
				subHtml += '</tr>';
			}
			$("#bloodChem").html(subHtml);

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}

	});
}

function fnPcr(inspNo,k){
	$.ajax({
		url : 'getPcrList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사메모</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<table class="table">';
			html += '					<tbody>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사번호</td>';
			html += '							<td id="inspNo'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">시료</td>';
			html += '							<td id="sample'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사구분</td>';
			html += '							<td id="inspCd'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">담당자</td>';
			html += '							<td id="worker'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">등록일</td>';
			html += '							<td id="uptDt'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사메모</td>';
			html += '							<td id="inspResult'+k+'"></td>';
			html += '						</tr>';
			html += '					</tbody>';
			html += '				</table>';
			html += '			</div>';
			html += '			<div style="height:10px;"></div>';
			html += '		</div>';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>사진</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="filter-container row previewList'+inputType1Cnt+'"></div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>PCR</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;width:10%;">No.</td>';
			html += '								<td style="background-color:#F2F2F2;width:*;">시료</td>';
			html += '								<td style="background-color:#F2F2F2;width:10%;">시료량</td>';
			html += '								<td style="background-color:#F2F2F2;width:10%;">결과</td>';
			html += '								<td style="background-color:#F2F2F2;width:25%;">비고</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="pcr">';
			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';

			$(".result").append(html);

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				var no = i+1;
				subHtml += '<tr>';
				subHtml += '	<td>'+no+'</td>';
				subHtml += '	<td>'+item.smplName+'</td>';
				subHtml += '	<td>'+item.capacity+'</td>';
				subHtml += '	<td>'+item.result+'</td>';
				subHtml += '	<td>'+item.rmk+'</td>';
				subHtml += '</tr>';
			}
			$("#pcr").html(subHtml);

			$.ajax({
				url : 'getFileList',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					var htmlData = '';

					for(var i=0; i<data.length; i++){
						var item = data[i];
						htmlData += '<div id="previewImg'+item.fileNo+'">';
						htmlData += '	<a id="imgLoad'+item.fileNo+'">';
						htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+imgDomain+item.fileNewNm+'"/>';
						htmlData += '	</a>';
						htmlData += '</div>';
					}
					$(".previewList"+inputType1Cnt).append(htmlData);

					inputType1Cnt++;
				}
			});

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});

}

function fnSerum(inspNo,k){
	$.ajax({
		url : 'getSerumList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '<div class="row">';
			html += '	<div class="col-md-12">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-body">';
			html += '				<div class="chart">';
			html += '					<canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사메모</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<table class="table">';
			html += '					<tbody>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사번호</td>';
			html += '							<td id="inspNo'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">시료</td>';
			html += '							<td id="sample'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사구분</td>';
			html += '							<td id="inspCd'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">담당자</td>';
			html += '							<td id="worker'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">등록일</td>';
			html += '							<td id="uptDt'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사메모</td>';
			html += '							<td id="inspResult'+k+'"></td>';
			html += '						</tr>';
			html += '					</tbody>';
			html += '				</table>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>혈청</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td style="width:50%;background-color:#F2F2F2">시료명</td>';
			html += '								<td style="width:50%;background-color:#F2F2F2">데이터</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="serum">';
			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			$(".result").append(html);

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				subHtml += '<tr>';
				subHtml += '<td>'+item.serName+'</td>';
				subHtml += '<td>'+item.serData+'</td>';
				subHtml += '</tr>';
			}
			$("#serum").html(subHtml);

			$.ajax({
				url : 'getSerumChart',
				dataType : 'json',
				type : 'post',
				data : {inspNo : inspNo},
				success:function(data){
					setChartData(data);
				}
			})

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});
}


function setChartData(data){
	var areaChartData = '';
	// x축값 구하기
	var xArr = new Array();
	var maxData = 0;
	for(var i=0; i<data.length; i++){
		if(maxData < data[i].serData){
			maxData = data[i].serData;
		}
	}

	if(maxData < 10) maxData = 10;

	for(var i=0; i<=maxData; i++){
		xArr.push(i);
	}

	// y축값 구하기
	var yArr = new Array();

	for(var i=0; i<=maxData; i++){
		var flag = false;
		for(var j=0; j<data.length; j++){
			if(i == data[j].serData){
				yArr.push(Number(data[j].cnt));
				flag = true;
			}
		}
		if(!flag){
			yArr.push(0);
		}

	}

	var dataSet = '';
	var dataSets = new Array();
	dataSet = {
			label               : '혈청개수',
			backgroundColor     : 'rgba(60,141,188,0.9)',
			borderColor         : '#3b8bba',
			pointRadius          : false,
			pointColor          : 'rgba(60,141,188,1)',
			pointStrokeColor    : 'fff',
			pointHighlightFill  : '#fff',
			pointHighlightStroke: 'rgba(60,141,188,1)',
			data                : yArr
		}
	dataSets.push(dataSet);

	var areaChartData = {
		labels  :	xArr,
		datasets: dataSets
	}

    var barChartCanvas = $('#barChart').get(0).getContext('2d');
    var barChartData = $.extend(true, {}, areaChartData);
    var temp0 = areaChartData.datasets[0];
    barChartData.datasets[0] = temp0;


    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData,
      options: barChartOptions
    })
}

function fnAnti(inspNo,k){
	$.ajax({
		url : 'getAntiList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사메모</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<table class="table">';
			html += '					<tbody>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사번호</td>';
			html += '							<td id="inspNo'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">시료</td>';
			html += '							<td id="sample'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사구분</td>';
			html += '							<td id="inspCd'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">담당자</td>';
			html += '							<td id="worker'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">등록일</td>';
			html += '							<td id="uptDt'+k+'"></td>';
			html += '						</tr>';
			html += '						<tr>';
			html += '							<td style="width:40%;background-color:#F2F2F2">검사메모</td>';
			html += '							<td id="inspResult'+k+'"></td>';
			html += '						</tr>';
			html += '					</tbody>';
			html += '				</table>';
			html += '			</div>';
			html += '			<div style="height:10px;"></div>';
			html += '		</div>';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title">사진</h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="filter-container row previewList'+inputType1Cnt+'"></div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-primary card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>항생제 감수성 검사 기록지</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2">번호</td>';
			html += '								<td rowspan="2">항생제(㎍)</td>';
			html += '								<td rowspan="2">약자</td>';
			html += '								<td colspan="3">zone diameter (mm)</td>';
			html += '								<td colspan="2">검사결과</td>';
			html += '								<td rowspan="2" class="w200">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td>R<br/>≤</td>';
			html += '								<td>I</td>';
			html += '								<td>S<br/>≥</td>';
			html += '								<td class="w60">(mm)</td>';
			html += '								<td class="w60">R.I.S.</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="antibiotic"></tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';

			$(".result").append(html);

			var case1html = '<td>Ampicilin (10)</td><td>AM10</td><td>13</td><td>14-16</td><td>17</td>';
			var case2html = '<td>Ceftiofur(30)</td><td>FUR30</td><td>17</td><td>18-20</td><td>21</td>';
			var case3html = '<td>Enrofloxacin(5)</td><td>ENR5</td><td>12</td><td>13-15</td><td>16</td>';
			var case4html = '<td>Colistin(10)</td><td>CT10</td><td>8</td><td>9-10</td><td>11</td>';
			var case5html = '<td>Gentamycin(10)</td><td>GM10</td><td>12</td><td>13-14</td><td>15</td>';
			var case6html = '<td>Oxytetracycin</td><td>T30</td><td>14</td><td>15-18</td><td>19</td>';
			var case7html = '<td>Trimethoprim +<br/>Sulfamethoxazole<br/>(1.25+23.75)</td><td>SXT25</td><td>10</td><td>11-15</td><td>16</td>';
			var case8html = '<td>Tilmicosin(15)</td><td>TIL15</td><td>10</td><td>11</td><td>12</td>';
			var case9html = '<td>Tylosin</td><td>TY30</td><td>10</td><td>11-19</td><td>20</td>';
			var case10html = '<td>Florfenicol</td><td>FFC30</td><td>14</td><td>15-18</td><td>19</td>';

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				var no = item.antiNo;
				switch(i) {
					case 0 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case1html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 1 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case2html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 2 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case3html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 3 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case4html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 4 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case5html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 5 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case6html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 6 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case7html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 7 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case8html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 8 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case9html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
					case 9 : subHtml += '<tr><td>'+item.antiNo+'</td>'+case10html+'<td>'+item.res1+'</td><td>'+item.res2+'</td><td>'+item.antiMemo+'</td></tr>';break;
				}
			}
			$("#antibiotic").html(subHtml);

			$.ajax({
				url : 'getFileList',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					var htmlData = '';
					for(var i=0; i<data.length; i++){
						var item = data[i];
						htmlData += '<div id="previewImg'+item.fileNo+'">';
						htmlData += '	<a id="imgLoad'+item.fileNo+'">';
						htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+imgDomain+item.fileNewNm+'"/>';
						htmlData += '	</a>';
						htmlData += '</div>';
					}
					$(".previewList"+inputType1Cnt).append(htmlData);
					inputType1Cnt++;
				}
			});

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});


}

$(".sign").click(function(){
	var fm = $("#finalMemo").val();
	var sn = "\n\n아비넥스트 CEO / 충북대학교 수의과대학 명예교수 모인필";
	$("#finalMemo").val(fm+sn);
})

$(".save").click(function(){
	var rqstNo = "${rceptInfo.rqstNo }";

	var data = {
		rqstNo : rqstNo,
		finalMemo : $("#finalMemo").val(),
		uptId : JSON.parse(sessionStorage.getItem("userInfo")).userId
	}
	$.ajax({
		url : 'modifyFinal',
		data : data,
		dataType : 'json',
		type : 'post',
		success : function(data){
			alert("저장하였습니다.");
		}
	});
})
</script>
<jsp:include page="../popup/pop_fileView.jsp"></jsp:include>
</body>
</html>


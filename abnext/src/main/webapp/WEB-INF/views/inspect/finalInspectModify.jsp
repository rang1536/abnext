<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%

pageContext.setAttribute("CR", "\r");

pageContext.setAttribute("LF", "\n");

%>
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
	<!-- summernote -->
	<link rel="stylesheet" href="resources/plugins/summernote/summernote-bs4.min.css">
	<style>
		.txtc {text-align:center;}
		.txtl {text-align:left;}
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
						<h1><b>최종진단</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">최종진단</li>
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
				              <div class="card-tools">
								<button type="button" class="btn btn-tool" data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
							  </div>
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
														<input type="checkbox" id="chk00" class="chkh" value="ERR001-00">
														<label for="chk00">무증상(검진)</label>
													</div>
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
				              <div class="card-tools">
								<button type="button" class="btn btn-tool" data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
							  </div>
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

 				<div class="result"></div>

 				<div style="z-index:9;">
					<div class="row">
						<div class="col-12">
							<div class="card card-primary card-outline">
								<!-- /.card-header -->
								<div class="card-header">
					              <h3 class="card-title"><b>종합소견</b></h3>
					              <div class="card-tools">
									<button type="button" class="btn btn-tool" data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
								  </div>
					            </div>

								<div class="card-body">
									<div class="row">
										<div class="col-6">
											<label>최종진단명</label>
											<select class="form-control" id="diagCd"></select>
										</div>
										<div class="col-6">
								            <nav style="float:right">
												<button class="btn btn-primary btn-flat sign"><i class="fas fa-pencil-alt"></i> 서명추가</button>
											</nav>
										</div>
									</div>
									<div style="height:5px;"></div>
									<textarea class="form-control" id="finalMemo">${rceptInfo.finalMemo}</textarea>
									<button type="button" class="btn btn-default btn-block save"><i class="fas fa-save"></i> 저장</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12" style="text-align:center">
						<button type="button" id="list" style="width:161.2px;" class="btn btn-sm btn-primary btn-flat"><i class="fas fa-list"></i> 목록</button>
						<button type="button" id="pdf" style="width:161.2px;" class="btn btn-sm btn-success btn-flat"><i class="fas fa-file"></i> 진단결과서출력</button>
					</div>
				</div>
				<div class="row" style="height:15px">
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
		<div id="viewDiv"></div>
		<div id="printDiv" style="display:none;">

		</div>


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
<!-- Summernote -->
<script src="resources/plugins/summernote/summernote-bs4.min.js"></script>
<script>

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

	$('#finalMemo').summernote({
		height: 150,
		lang: "ko-KR"
	});

	$.gfn_getCode('D001',callBackFn,'diagCd');

});

window.onload = function(){
	$("#inspList").find("tr").each(function(idx){
		var k = idx+1;
		var inspSecCd = $(this).find("[id^=inspSecondCd]").val();
		if(inspSecCd == 'B001-01-01' || inspSecCd == 'B001-01-02' || inspSecCd == 'B001-02-01' || inspSecCd == 'B001-01-02' || inspSecCd == 'B001-02-16'){
			fnPcr($(this).find("[id^=inspNo]").val(),k,$(this).find("td:eq(2)").text());
		}else if(inspSecCd == 'B001-01-14' || inspSecCd == 'B001-02-14'){
			fnAnti($(this).find("[id^=inspNo]").val(),k,$(this).find("td:eq(2)").text());
		}else if(inspSecCd == 'B001-03-18'){
			fnSerum($(this).find("[id^=inspNo]").val(),k,$(this).find("td:eq(2)").text());
		}else if(inspSecCd == 'B001-04-23'){
			fnBloodChem($(this).find("[id^=inspNo]").val(),k,$(this).find("td:eq(2)").text());
		}else if(inspSecCd == 'B001-04-24'){
			fnCbc($(this).find("[id^=inspNo]").val(),k,$(this).find("td:eq(2)").text());
		}else {
			drawImg($(this).find("[id^=inspNo]").val(),k,$(this).find("td:eq(2)").text());
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
function drawImg(inspNo,k,title){
	$.ajax({
		url : 'getFileList',
		data : {inspNo : inspNo, fileGb : 'F001-05'},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var htmlData = '';
			var inputType1 = '';
			inputType1 += '<div class="card card-primary card-outline collapsed-card">';
			inputType1 += '			<div class="card-header">';
			inputType1 += '				<h3 class="card-title"><b>검사결과  ['+title+']</b></h3>';
			inputType1 += '				<div class="card-tools">';
			inputType1 += '					<button type="button" class="btn btn-tool" data-card-widget="collapse">';
			inputType1 += '						<i class="fas fa-plus"></i>';
			inputType1 += '					</button>';
			inputType1 += '				</div>';
			inputType1 += '				</div>';
			inputType1 += '			<div class="card-body" style="display:none">';
			inputType1 += '<div class="row">';
			inputType1 += '	<div class="col-md-6">';
			inputType1 += '		<div class="card card-danger card-outline">';
			inputType1 += '			<div class="card-header">';
			inputType1 += '				<h3 class="card-title"><b>검사정보</b></h3>';
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
			inputType1 += '							<td style="width:40%;background-color:#F2F2F2">검사항목</td>';
			inputType1 += '							<td id="inspCd2'+k+'"></td>';
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
			inputType1 += '		<div class="card card-danger card-outline">';
			inputType1 += '			<div class="card-header">';
			inputType1 += '				<h3 class="card-title"><b>검사사진</b></h3>';
			inputType1 += '			</div>';
			inputType1 += '			<div class="card-body">';
			inputType1 += '				<div>';
			inputType1 += '					<div class="filter-container row previewList'+k+'"></div>';
			inputType1 += '				</div>';
			inputType1 += '				<div style="text-align:center">';
			inputType1 += '					<button type="button" onclick="fileSave('+k+')" style="width:161.2px;" class="btn btn-sm btn-info btn-flat"><i class="fas fa-pencil-alt"></i>단위결과저장</button>';
			inputType1 += '				</div>';
			inputType1 += '			</div>';
			inputType1 += '		</div>';
			inputType1 += '	</div>';
			inputType1 += '</div>';
			inputType1 += '</div>';
			inputType1 += '</div>';
			$(".result").append(inputType1);

			for(var i=0; i<data.length; i++){
				var item = data[i];
				var checked = '';
				if(item.closeYn == 'Y'){
					checked = 'checked';
				}
				if(item.fileNo == 0) continue;
				htmlData += '<div class="filtr-item col-sm-3" id="previewImg'+item.fileNo+'">';
				htmlData += '	<a id="imgLoad'+item.fileNo+'">';
				htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+imgDomain+item.fileNewNm+'" onclick="setBigImg(\''+imgDomain+item.fileNewNm+'\')"/>';
				htmlData += '	</a>';
				htmlData += '</div>';
				htmlData += '<div class="col-sm-9 inputDiv" id="preview'+item.fileNo+'">';
				htmlData += '	<div class="row">';
				htmlData += '		<div class="col-8">';
				htmlData += '			<input type="text" class="form-control" id="title'+item.fileNo+'" placeholder="장기" value="'+item.title+'">';
				htmlData += '		</div>';
				htmlData += '		<div class="col-4" style="padding-top:-9px">';
				htmlData += '			<label for="chk1"></label>';
				htmlData += '			<div class="form-group clearfix" style="margin-left:9px;margin-top:-10px;">';
				htmlData += '				<div class="icheck-primary d-inline">';
				htmlData += '					<input type="checkbox" id="chk'+item.fileNo+'" '+checked+'>';
				htmlData += '					<label for="chk'+item.fileNo+'">비공개</label>';
				htmlData += '				</div>';
				htmlData += '				<input type="hidden" id="file'+item.fileNo+'" value="'+item.fileNewNm+'">';
				htmlData += '				<input type="hidden" id="fileNo'+item.fileNo+'" value="'+item.fileNo+'">';
				htmlData += '			</div>';
				htmlData += '		</div>';
				htmlData += '	</div>';
				htmlData += '	<div class="row">';
				htmlData += '		<div class="col-12">';
				htmlData += '			<textarea class="form-control" rows="3" id="content'+item.fileNo+'" placeholder="메모">'+item.content+'</textarea>';
				htmlData += '		</div>';
				htmlData += '	</div>';
				htmlData += '	<form id="fileForm" method="post"></form>';
				htmlData += '</div>';

			}
			$(".previewList"+k).append(htmlData);

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#inspCd2"+k).text(data.inspThirdNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});
}

function fnCbc(inspNo,k,title){
	$.ajax({
		url : 'getCbcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = "";
			html += '<div class="card card-primary card-outline collapsed-card">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사결과  ['+title+']</b></h3>';
			html += '				<div class="card-tools">';
			html += '					<button type="button" class="btn btn-tool" data-card-widget="collapse">';
			html += '						<i class="fas fa-plus"></i>';
			html += '					</button>';
			html += '				</div>';
			html += '				</div>';
			html += '			<div class="card-body" style="display:none">';
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사정보</b></h3>';
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
			html += '							<td style="width:40%;background-color:#F2F2F2">검사항목</td>';
			html += '							<td id="inspCd2'+k+'"></td>';
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
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>혈구검사</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:20%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:*"/>';
			html += '						</colgroup>';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2">항목명</td>';
			html += '								<td colspan="2">결과</td>';
			html += '								<td colspan="2">참조값</td>';
			html += '								<td>비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td>값</td>';
			html += '								<td>단위</td>';
			html += '								<td>최저</td>';
			html += '								<td>최대</td>';
			html += '								<td></td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="cbc">';

			for(var i=0; i<data.length; i++){

				var item = data[i].itemName;
				if(item == null) continue;
				switch(item) {
					case 'WBC' : td2 = '10³/㎕'; td3 = '3'; td4 = '11'; break;
					case 'RBC' : td2 = '10^6/㎕'; td3 = '2.4'; td4 = '4.2'; break;
					case 'Hct' : td2 = '%'; td3 = '39'; td4 = '49'; break;
					case 'Hets' : td2 = '%'; td3 = '50'; td4 = '80'; break;
					case 'Eos' : td2 = '%'; td3 = '0'; td4 = '2'; break;
					case 'Baso' : td2 = '%'; td3 = '0'; td4 = '1'; break;
					case 'Monos' : td2 = '%'; td3 = '0'; td4 = '3'; break;
					case 'Lymphos' : td2 = '%'; td3 = '20'; td4 = '45'; break;
					default : td2 = '-'; td3 = '-'; td4 = '-'; break;
				}

				html += '<tr>';
				html += '	<td>'+data[i].itemName+'</td>';
				html += '	<td>'+data[i].val+'</td>';
				html += '	<td>'+td2+'</td>';
				html += '	<td>'+td3+'</td>';
				html += '	<td>'+td4+'</td>';
				html += '	<td>'+$.gfn_nvl(data[i].rmk)+'</td>';

				html += '</tr>';
			}

			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			html += '</div>';
			$(".result").append(html);

			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#inspCd2"+k).text(data.inspThirdNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});
}

function fnBloodChem(inspNo,k,title){
	$.ajax({
		url : 'getBcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = "";
			html += '<div class="card card-primary card-outline collapsed-card">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사결과 ['+title+']</b></h3>';
			html += '				<div class="card-tools">';
			html += '					<button type="button" class="btn btn-tool" data-card-widget="collapse">';
			html += '						<i class="fas fa-plus"></i>';
			html += '					</button>';
			html += '				</div>';
			html += '				</div>';
			html += '			<div class="card-body" style="display:none">';
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사정보</b></h3>';
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
			html += '							<td style="width:40%;background-color:#F2F2F2">검사항목</td>';
			html += '							<td id="inspCd2'+k+'"></td>';
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
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>혈액화학검사</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';

			html += '						<colgroup>';
			html += '							<col style="width:20%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:*"/>';
			html += '						</colgroup>';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2">항목명</td>';
			html += '								<td colspan="2">결과</td>';
			html += '								<td colspan="2">참조값</td>';
			html += '								<td>비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td>값</td>';
			html += '								<td>단위</td>';
			html += '								<td>최저</td>';
			html += '								<td>최대</td>';
			html += '								<td></td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="bloodChem">';

			for(var i=0; i<data.length; i++){
				var item = data[i].itemName;
				if(item == null) continue;
				switch(item) {
					case 'TP' : td2 = 'g/dL'; td3 = '5.4'; td4 = '8.2'; break;
					case 'Alb' : td2 = 'g/dL'; td3 = '2.2'; td4 = '4.4'; break;
					case 'Glob' : td2 = 'g/dL'; td3 = '1.5'; td4 = '5.7'; break;
					case 'A/G ratio' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'GLU' : td2 = 'mg/dL'; td3 = '70'; td4 = '150'; break;
					case 'AST' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'CK' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'CA' : td2 = 'mg/dL'; td3 = '8.0'; td4 = '11.8'; break;
					case 'PHOS' : td2 = 'mg/dL'; td3 = '3.4'; td4 = '8.5'; break;
					case 'Na' : td2 = 'mmol/L'; td3 = '142'; td4 = '164'; break;
					case 'K' : td2 = 'mmol/L'; td3 = '3.7'; td4 = '5.8'; break;
					case 'Na/K ratio' : td2 = ''; td3 = ''; td4 = ''; break;
					default : td2 = ''; td3 = ''; td4 = ''; break;
				}

				html += '<tr>';
				html += '	<td>'+data[i].itemName+'</td>';
				html += '	<td>'+data[i].val+'</td>';
				html += '	<td>'+td2+'</td>';
				html += '	<td>'+td3+'</td>';
				html += '	<td>'+td4+'</td>';
				html += '	<td>'+data[i].rmk+'</td>';
				html += '</tr>';
			}

			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			html += '</div>';
			$(".result").append(html);


			$.ajax({
				url : 'getInspResult',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					$("#inspNo"+k).text(data.inspNo);
					$("#sample"+k).text(data.sampleName);
					$("#inspCd"+k).text(data.inspFirstNm+" > "+data.inspSecondNm);
					$("#inspCd2"+k).text(data.inspThirdNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}

	});
}

function fnPcr(inspNo,k,title){
	$.ajax({
		url : 'getPcrList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var th1 = '';
			var th2 = '';

			if(title == 'PCR') {
				th1 = 'POSITIVE';
				th2 = 'NEGATIVE';
			}else {
				th1 = '암컷';
				th2 = '수컷';
			}

			var html = '';
			html += '<div class="card card-primary card-outline collapsed-card">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사결과 ['+title+']</b></h3>';
			html += '				<div class="card-tools">';
			html += '					<button type="button" class="btn btn-tool" data-card-widget="collapse">';
			html += '						<i class="fas fa-plus"></i>';
			html += '					</button>';
			html += '				</div>';
			html += '				</div>';
			html += '			<div class="card-body" style="display:none">';
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사정보</b></h3>';
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
			html += '							<td style="width:40%;background-color:#F2F2F2">검사항목</td>';
			html += '							<td id="inspCd2'+k+'"></td>';
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
			html += '		<div class="card card-warning card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>PCR</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;width:10%;">No.</td>';
			html += '								<td style="background-color:#F2F2F2;width:*;">시료명</td>';
			html += '								<td style="background-color:#F2F2F2;width:10%;">'+th1+'</td>';
			html += '								<td style="background-color:#F2F2F2;width:10%;">'+th2+'</td>';
			html += '								<td style="background-color:#F2F2F2;width:25%;">결과</td>';
			html += '								<td style="background-color:#F2F2F2;width:25%;">메모</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="pcr'+k+'">';
			html += '						</tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>사진</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="filter-container row previewList'+k+' fileDiv"></div>';
			html += '				<div style="text-align:center">';
			html += '					<button type="button" onclick="fileSave('+k+')" style="width:161.2px;" class="btn btn-sm btn-info btn-flat"><i class="fas fa-pencil-alt"></i>단위결과저장</button>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			html += '</div>';
			$(".result").append(html);

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				var no = i+1;

				if(item.smplName == null) continue;
				subHtml += '<tr>';
				subHtml += '	<td>'+no+'</td>';
				subHtml += '	<td>'+item.smplName+'</td>';
				subHtml += '	<td>'+item.positive+'</td>';
				subHtml += '	<td>'+item.negative+'</td>';
				subHtml += '	<td>'+item.result+'</td>';
				subHtml += '	<td>'+item.memo+'</td>';
				subHtml += '</tr>';
			}
			$("#pcr"+k).html(subHtml);

			$.ajax({
				url : 'getFileList',
				data : {inspNo : inspNo},
				dataType : 'json',
				type : 'post',
				success : function(data){
					var htmlData = '';
					for(var i=0; i<data.length; i++){
						var item = data[i];
						var checked = '';
						if(item.closeYn == 'Y'){
							checked = 'checked';
						}
						if(item.fileNo == 0) continue;
						htmlData += '<div class="filtr-item col-sm-3" id="previewImg'+item.fileNo+'">';
						htmlData += '	<a id="imgLoad'+item.fileNo+'">';
						htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" onclick="setBigImg(\''+imgDomain+item.fileNewNm+'\')" src="'+imgDomain+item.fileNewNm+'"/>';
						htmlData += '	</a>';
						htmlData += '</div>';
						htmlData += '<div class="col-sm-9 inputDiv" id="preview'+item.fileNo+'">';
						htmlData += '	<div class="row">';
						htmlData += '		<div class="col-8">';
						htmlData += '			<input type="text" class="form-control" id="title'+item.fileNo+'" placeholder="장기" value="'+item.title+'">';
						htmlData += '		</div>';
						htmlData += '		<div class="col-4" style="padding-top:-9px">';
						htmlData += '			<label for="chk1"></label>';
						htmlData += '			<div class="form-group clearfix" style="margin-left:9px;margin-top:-10px;">';
						htmlData += '				<div class="icheck-primary d-inline">';
						htmlData += '					<input type="checkbox" id="chk'+item.fileNo+'" '+checked+'>';
						htmlData += '					<label for="chk'+item.fileNo+'">비공개</label>';
						htmlData += '				</div>';
						htmlData += '				<input type="hidden" id="file'+item.fileNo+'" value="'+item.fileNewNm+'">';
						htmlData += '				<input type="hidden" id="fileNo'+item.fileNo+'" value="'+item.fileNo+'">';
						htmlData += '			</div>';
						htmlData += '		</div>';
						htmlData += '	</div>';
						htmlData += '	<div class="row">';
						htmlData += '		<div class="col-12">';
						htmlData += '			<textarea class="form-control" rows="3" id="content'+item.fileNo+'" placeholder="메모">'+item.content+'</textarea>';
						htmlData += '		</div>';
						htmlData += '	</div>';
						htmlData += '	<form id="fileForm" method="post"></form>';
						htmlData += '</div>';

					}
					$(".previewList"+k).append(htmlData);
					/*
					for(var i=0; i<data.length; i++){
						var item = data[i];
						htmlData += '<div id="previewImg'+item.fileNo+'">';
						htmlData += '	<a id="imgLoad'+item.fileNo+'">';
						htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+imgDomain+item.fileNewNm+'"/>';
						htmlData += '	</a>';
						htmlData += '</div>';
					}
					 */
					//$(".previewList"+k).append(htmlData);
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
					$("#inspCd2"+k).text(data.inspThirdNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});

}

function fnSerum(inspNo,k,title){
	$.ajax({
		url : 'getSerumList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '<div class="card card-primary card-outline collapsed-card">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사결과 ['+title+']</b></h3>';
			html += '				<div class="card-tools">';
			html += '					<button type="button" class="btn btn-tool" data-card-widget="collapse">';
			html += '						<i class="fas fa-plus"></i>';
			html += '					</button>';
			html += '				</div>';
			html += '				</div>';
			html += '			<div class="card-body" style="display:none">';
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
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사정보</b></h3>';
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
			html += '							<td style="width:40%;background-color:#F2F2F2">검사항목</td>';
			html += '							<td id="inspCd2'+k+'"></td>';
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
			html += '		<div class="card card-danger card-outline">';
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
			html += '</div>';
			$(".result").append(html);


			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				if(item.serName == null) continue;
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
					setChartData(data,title);
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
					$("#inspCd2"+k).text(data.inspThirdNm);
					$("#worker"+k).text(data.workerNm);
					$("#uptDt"+k).text(data.uptDt);
					$("#inspResult"+k).text(data.inspResult);
				}
			});
		}
	});
}


function setChartData(data,title){
	var areaChartData = '';
	// x축값 구하기
	var xArr = new Array();
	var maxData = 0;

	if(title == 'ELISA') maxData = 22;
	else maxData = 13;

	/*
	for(var i=0; i<22; i++){
		if(maxData < data[i].serData){
			maxData = data[i].serData;
		}
	}

	if(maxData < 10) maxData = 10;
 */

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

function fnAnti(inspNo,k,title){
	$.ajax({
		url : 'getAntiList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '<div class="card card-primary card-outline collapsed-card">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사결과 ['+title+']</b></h3>';
			html += '				<div class="card-tools">';
			html += '					<button type="button" class="btn btn-tool" data-card-widget="collapse">';
			html += '						<i class="fas fa-plus"></i>';
			html += '					</button>';
			html += '				</div>';
			html += '				</div>';
			html += '			<div class="card-body" style="display:none">';
			html += '<div class="row">';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>검사정보</b></h3>';
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
			html += '							<td style="width:40%;background-color:#F2F2F2">검사항목</td>';
			html += '							<td id="inspCd2'+k+'"></td>';
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
			/*
			html += '		<div class="card card-warning card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>사진</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="filter-container row previewList'+k+'"></div>';
			html += '			</div>';
			html += '		</div>';
			 */
			html += '	</div>';
			html += '	<div class="col-md-6">';
			html += '		<div class="card card-danger card-outline">';
			html += '			<div class="card-header">';
			html += '				<h3 class="card-title"><b>항생제 감수성 검사 결과 기록지</b></h3>';
			html += '			</div>';
			html += '			<div class="card-body">';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2">번호</td>';
			html += '								<td rowspan="2">항생제</td>';
			html += '								<td rowspan="2">용량</td>';
			html += '								<td rowspan="2">약자</td>';
			html += '								<td rowspan="2">기준직경(mm)</td>';
			html += '								<td colspan="3">결과<br/>직경<br/>(mm)</td>';
			html += '								<td rowspan="2">판독</td>';
			html += '								<td rowspan="2">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td>R<br/>≤</td>';
			html += '								<td>I</td>';
			html += '								<td>S<br/>≥</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="antibiotic"></tbody>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';
			html += '</div>';
			$(".result").append(html);

			var subHtml = '';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				if(item.antiName == null) continue;
				subHtml += '<tr>';
				subHtml += '<td>'+item.antiNo+'</td>';
				subHtml += '<td>'+item.antiName+'</td>';
				subHtml += '<td>'+item.capacity+'</td>';
				subHtml += '<td>'+item.nickName+'</td>';
				subHtml += '<td>'+item.mini+'</td>';
				subHtml += '<td>'+item.scope+'</td>';
				subHtml += '<td>'+item.maxi+'</td>';
				subHtml += '<td>'+item.res1+'</td>';
				subHtml += '<td>'+item.res2+'</td>';
				subHtml += '<td>'+item.antiMemo+'</td>';
				subHtml += '</tr>';
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
						htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" onclick="setBigImg(\''+imgDomain+item.fileNewNm+'\')" src="'+imgDomain+item.fileNewNm+'" />';
						htmlData += '	</a>';
						htmlData += '</div>';
					}
					$(".previewList"+k).append(htmlData);
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
					$("#inspCd2"+k).text(data.inspThirdNm);
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
	var sn = "<br/><br/><p>아비넥스트 CEO / 충북대학교 수의과대학 명예교수 모인필</p>";
	$("#finalMemo").summernote('empty');
	$("#finalMemo").summernote('code',fm+sn);
})

$(".save").click(function(){
	var rqstNo = "${rceptInfo.rqstNo }";

	var data = {
		rqstNo : rqstNo,
		finalMemo : $("#finalMemo").val(),
		uptId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
		diagCd : $("#diagCd").val()
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

function callBackFn(data,col){
	var optHtml = '';
	for(var i=0; i<data.length; i++){
		optHtml += '<option value="'+data[i].codeId+'">'+data[i].codeNm+'</option>';
	}

	$("#"+col).html(optHtml);

	$("#"+col).val("${rceptInfo.diagCd }");
}

$(document).on('click','#list',function(){
	location.href='finalInspectList';
})

//${rceptInfo.pdlNo }
/*
$("#pdf").click(function(){
	location.href = 'inspPrint?pdlNo='+'${rceptInfo.pdlNo}';
});*/

$("#pdf").click(function(){

	$("#printDiv").empty();

	var html = '';
	var animSex = '${rceptInfo.animSex }';
	var animSexNm = '';
	if(animSex == 'M'){
		animSexNm = '수컷';
	}else if(animSex == 'F'){
		animSexNm = '암컷';
	}else {
		animSexNm = '모름';
	}

	var curDt = new Date();
	var birthArr = '${rceptInfo.animBirth}'.split(".");
	var setYear = curDt.getFullYear()-birthArr[0];
	var setMonth = curDt.getMonth()+1-birthArr[1];
	var setDate = curDt.getDate()-birthArr[2];
	var month = setYear*12;
	if(setDate >= 0){
		month += setMonth+1;
	}else {
		month += setMonth;
	}

	html +=	'		<div class="card-body table-responsive pdfStyle" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">반려조류 검사결과서</span><br/><br/>';
	html +=	'			<table class="table table-bordered text-nowrap">';
	html +=	'				<tbody>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#929292;font-weight:bold;" class="txtc" colspan="2">${rceptInfo.animNm}</td>';
	//html +=	'						<td style="width:30%;background-color:#929292"" class="txtc"></td>';
	html +=	'						<td style="width:20%;background-color:#929292;font-weight:bold;" class="txtc" colspan="2">${rceptInfo.pdlNo }</td>';
	//html +=	'						<td style="width:30%;background-color:#929292"" class="txtc"></td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">보호자</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.animButler }</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">신청자(기관)</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.hospNm }</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">종</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.jong }</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">담당수의사</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.docNm }</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">품종</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.animFirstNm } ${rceptInfo.animSecondNm } ${rceptInfo.animThirdNm }</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">시료수령일</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.rqstDt}</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">성별</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">'+animSexNm+'</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">검사일</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.finishDt }</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">나이</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">'+month+'M</td>';
	html +=	'						<td style="background-color:#F2F2F2" class="txtc" colspan="2"></td>';
	//html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc"></td>';
	html +=	'					</tr>';
	html +=	'				</tbody>';
	html +=	'			</table>';
	html +=	'			<div style="height:50px;"></div>';
	html +=	'			<table class="table table-bordered text-nowrap">';
	html +=	'				<tbody>';
	html +=	'					<tr>';
	html +=	'						<td style="width:70%;background-color:#929292;font-weight:bold;" class="txtc">검사항목</td>';
	html +=	'						<td style="width:30%;background-color:#929292;font-weight:bold;" class="txtc">결과</td>';
	html +=	'					</tr>';

	html +=	'					<c:forEach var="item" items="${inspList }" varStatus="status">';
	html +=	'						<tr>';
	html +=	'							<td style="width:70%;background-color:#F2F2F2" class="txtl">';
	if('${item.inspSecondCd }' == 'B001-04-23' || '${item.inspSecondCd }' == 'B001-04-24'){
		html += '							${item.inspSecondNm }';
	}else{
		html += '							${item.inspThirdNm }';
	}
	html += '							</td>';
	html +=	'							<c:set var="inspRes" value="${fn:replace(fn:replace(item.inspResult, LF, \''), CR, \'')}" />';
	html +=	'							<td style="width:30%;background-color:#F2F2F2" class="txtc">${inspRes}</td>';
	html +=	'						</tr>';
	html +=	'						<c:set var="len" value="${status.index}"/>';
	html +=	'					</c:forEach>';

	var inspLen = parseInt('${len}');
	var addTr = 0;
	if(inspLen < 6){
		addTr = 6-inspLen;
	}
	for(var i=0; i<addTr; i++){
		html +=	'						<tr>';
		html +=	'							<td style="width:70%;height:36.39px;background-color:#F2F2F2" class="txtl"></td>';
		html +=	'							<td style="width:30%;height:36.39px;background-color:#F2F2F2" class="txtc"></td>';
		html +=	'						</tr>';
	}

	html +=	'				</tbody>';
	html +=	'			</table>';

	html +=	'			<div style="height:50px;"></div>';
	html +=	'			<table class="table table-bordered text-nowrap">';
	html +=	'				<tbody>';
	html +=	'					<tr>';
	html +=	'						<td style="background-color:#929292;font-weight:bold;font-size:17px;" class="txtc">종합소견</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:70%;background-color:#F2F2F2;:" class="txtl"><div style="min-height:8em;">${rceptInfo.finalMemo }</div></td>';
	html +=	'					</tr>';
	html +=	'				</tbody>';
	html +=	'			</table>';

	html +=	'			<div style="height:50px;"></div>';
	html += '			<div style="width:100%;text-align:right;padding-right:10%;">';
	html += '				<span style="font-weight:bold;font-size:20px;">(주)아비넥스트 대표 모인필</span>';
	html += '			</div>';

	html +=	'			<div style="height:50px;"></div>';
	html += '			<span style="font-weight:bold;">검사신청 및 문의<br/>avinext@avinext.co.kr T. 043-292-9998 F. 043-292-9980<br/>http://avinextlab.com/<br/>충청북도 청주시 상당구 남일면 쌍암동길 30-7</span>';


	html +=	'		</div>';

	var shtml = makePdf(1,html, 'N');
	$("#printDiv").append(shtml);

	//var shtml2 = makePdfView(1,html);
	//$("#viewDiv").append(shtml2);

	'<c:forEach var="item" items="${inspList }" varStatus="status">';
		if('${item.inspSecondCd}' == 'B001-01-01' || '${item.inspSecondCd}' == 'B001-02-01' || '${item.inspSecondCd}' == 'B001-02-16' || '${item.inspSecondCd}' == 'B001-01-02' || '${item.inspSecondCd}' == 'B001-02-02'){
			fnPcrPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-01-14' || '${item.inspSecondCd}' == 'B001-02-14'){
			fnAntiPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-03-18'){
			fnSerumPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-04-23'){
			fnBloodChemPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-04-24'){
			fnCbcPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else {
			drawImgPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}
	'</c:forEach>';


	setTimeout(function(){
		$('#printDiv').css('display','');
	}, 300)


});

function fnPcrPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getPcrList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data[0].smplName == null || data[0].smplName == 'null'){
				return;
			}

			if(data.length>0){
				var html = '';
				html += '<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">PCR</span><br/><br/>';
				html += '	<div class="row">';
				html += '		<div class="table-responsive">';
				html += '			<table class="table table-bordered text-nowrap">';
				html += '				<thead>';
				html += '					<tr>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">검사방법</td>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">시료</td>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">검사항목</td>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">결과</td>';
				html += '					</tr>';
				html += '				</thead>';
				html += '				<tbody>';

				for(var i=0; i<data.length; i++){
					var item = data[i];

					html += '<tr>';
					html += '	<td>'+sec+'</td>';
					html += '	<td>'+item.smplName+'</td>';
					html += '	<td>'+thr+'</td>';
					html += '	<td>'+item.result+'</td>';
					html += '</tr>';
				}

				var addTr = 0;
				if(data.length < 17){
					addTr = 17-data.length;
				}
				for(var i=0; i<addTr; i++){
					html +=	'						<tr style="height:33.39px;">';
					html +=	'							<td class="txtl"></td>';
					html +=	'							<td class="txtl"></td>';
					html +=	'							<td class="txtl"></td>';
					html +=	'							<td class="txtc"></td>';
					html +=	'						</tr>';
				}

				html += '				</tbody>';
				html += '			</table>';

				html += '			<div style="height:60px;"></div>';
				html += '			<table class="table table-bordered text-nowrap hide">';
				html += '				<thead>';
				html += '					<tr style="height:100px;">';
				html += '						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				html += '						<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				html += '					</tr>';
				html += '				</thead>';
				html += '			</table>';
				html += '		</div>';
				html += '	</div>';
				html += '</div>';

				var shtml = makePdf(idx,html);
				$("#printDiv").append(shtml);

			}
		}
	});


}

function fnAntiPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getAntiList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data[0].antiName == null || data[0].antiName == 'null'){
				return;
			}

			var html = '';
			html += '			<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">항생제감수성 검사</span><br/><br/>';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">번호</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">항생제</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">용량</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">약자</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">기준직경(mm)</td>';
			html += '								<td colspan="3" style="background-color:#F2F2F2;font-weight:bold;">결과<br/>직경<br/>(mm)</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">판독</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">R<br/>≤</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">I</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">S<br/>≥</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="antibiotic">';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				html += '<tr>';
				html += '<td>'+item.antiNo+'</td>';
				html += '<td>'+item.antiName+'</td>';
				html += '<td>'+item.capacity+'</td>';
				html += '<td>'+item.nickName+'</td>';
				html += '<td>'+item.mini+'</td>';
				html += '<td>'+item.scope+'</td>';
				html += '<td>'+item.maxi+'</td>';
				html += '<td>'+item.res1+'</td>';
				html += '<td>'+item.res2+'</td>';
				html += '<td>'+item.antiMemo+'</td>';
				html += '</tr>';
			}

			var addTr = 0;
			if(data.length < 15){
				addTr = 15-data.length;
			}
			for(var i=0; i<addTr; i++){
				html +=	'						<tr style="height:33.39px;">';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'						</tr>';
			}

			html += '						</tbody>';
			html += '					</table>';

			html += '			<div style="height:60px;"></div>';
			html += '			<table class="table table-bordered text-nowrap hide">';
			html += '				<thead>';
			html += '					<tr style="height:100px;">';
			html += '						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '						<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '					</tr>';
			html += '				</thead>';
			html += '			</table>';

			html += '				</div>';
			html += '			</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);
		}
	});


}

var chartIdArr =new Array();
function fnSerumPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getSerumList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data[0].serName == null || data[0].serName == 'null'){
				return;
			}

			var html = '';
			html += '		<div class="card-body"  style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">'+sec+'</span><br/><br/>';
			html += '			<br/><br/>';
			html += '			<div class="chart">';
			html += '				<canvas id="barChartPdf'+idx+'" style="min-height: 350px; height: 350px; max-height: 350px; max-width: 100%;"></canvas>';
			html += '			</div>';
			html += '			<div class="chartImg">';
			html += '				<img id="chartImgTag'+idx+'"/>';
			html += '			</div>';
			html += '			<div style="height:350px;"></div>';
			html += '			<table class="table table-bordered text-nowrap hide">';
			html += '				<thead>';
			html += '					<tr style="height:100px;">';
			html += '						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '						<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '					</tr>';
			html += '				</thead>';
			html += '			</table>';
			html += '		</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);

			$.ajax({
				url : 'getSerumChart',
				dataType : 'json',
				type : 'post',
				data : {inspNo : inspNo},
				success:function(data){
					setChartDataPdf(data,sec,idx);
					chartIdArr.push(idx);
				}
			})

		}
	});
}

function setChartDataPdf(data,title,idx){
	var areaChartData = '';
	// x축값 구하기
	var xArr = new Array();
	var maxData = 0;

	if(title == 'ELISA') maxData = 22;
	else maxData = 13;

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

    var barChartCanvas = $('#barChartPdf'+idx).get(0).getContext('2d');
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

function fnCbcPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getCbcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data[0].itemName == null || data[0].itemName == 'null'){
				return;
			}

			var html = "";
			html += '			<div class="card-body" style="width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">혈구검사</span><br/><br/>';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:20%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:*"/>';
			html += '						</colgroup>';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">항목명</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">결과</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">참조값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;" rowspan="2">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">단위</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최저</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최대</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="cbc">';

			for(var i=0; i<data.length; i++){

				var item = data[i].itemName;
				switch(item) {
					case 'WBC' : td2 = '10³/㎕'; td3 = '3'; td4 = '11'; break;
					case 'RBC' : td2 = '10^6/㎕'; td3 = '2.4'; td4 = '4.2'; break;
					case 'Hct' : td2 = '%'; td3 = '39'; td4 = '49'; break;
					case 'Hets' : td2 = '%'; td3 = '50'; td4 = '80'; break;
					case 'Eos' : td2 = '%'; td3 = '0'; td4 = '2'; break;
					case 'Baso' : td2 = '%'; td3 = '0'; td4 = '1'; break;
					case 'Monos' : td2 = '%'; td3 = '0'; td4 = '3'; break;
					case 'Lymphos' : td2 = '%'; td3 = '20'; td4 = '45'; break;
					default : td2 = '-'; td3 = '-'; td4 = '-'; break;
				}

				html += '<tr>';
				html += '	<td>'+data[i].itemName+'</td>';
				html += '	<td>'+data[i].val+'</td>';
				html += '	<td>'+td2+'</td>';
				html += '	<td>'+td3+'</td>';
				html += '	<td>'+td4+'</td>';
				html += '	<td>'+$.gfn_nvl(data[i].rmk)+'</td>';

				html += '</tr>';
			}

			var addTr = 0;
			if(data.length < 17){
				addTr = 17-data.length;
			}
			for(var i=0; i<addTr; i++){
				html +=	'						<tr style="height:33.39px;">';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'						</tr>';
			}

			html += '						</tbody>';
			html += '					</table>';

			html += '					</table>';
			html += '					<div style="height:60px;"></div>';
			html += '					<table class="table table-bordered text-nowrap hide">';
			html += '						<thead>';
			html += '							<tr style="height:100px;">';
			html += '								<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '								<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);


		}
	});
}

function fnBloodChemPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getBcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data[0].itemName == null || data[0].itemName == 'null'){
				return;
			}

			var html = "";
			html += '			<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">혈액화학검사</span><br/><br/>';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:20%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:*"/>';
			html += '						</colgroup>';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">항목명</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">결과</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">참조값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;" rowspan="2">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">단위</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최저</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최대</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="bloodChem">';

			for(var i=0; i<data.length; i++){
				var item = data[i].itemName;
				switch(item) {
					case 'TP' : td2 = 'g/dL'; td3 = '5.4'; td4 = '8.2'; break;
					case 'Alb' : td2 = 'g/dL'; td3 = '2.2'; td4 = '4.4'; break;
					case 'Glob' : td2 = 'g/dL'; td3 = '1.5'; td4 = '5.7'; break;
					case 'A/G ratio' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'GLU' : td2 = 'mg/dL'; td3 = '70'; td4 = '150'; break;
					case 'AST' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'CK' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'CA' : td2 = 'mg/dL'; td3 = '8.0'; td4 = '11.8'; break;
					case 'PHOS' : td2 = 'mg/dL'; td3 = '3.4'; td4 = '8.5'; break;
					case 'Na' : td2 = 'mmol/L'; td3 = '142'; td4 = '164'; break;
					case 'K' : td2 = 'mmol/L'; td3 = '3.7'; td4 = '5.8'; break;
					case 'Na/K ratio' : td2 = ''; td3 = ''; td4 = ''; break;
					default : td2 = ''; td3 = ''; td4 = ''; break;
				}

				html += '<tr>';
				html += '	<td>'+data[i].itemName+'</td>';
				html += '	<td>'+data[i].val+'</td>';
				html += '	<td>'+td2+'</td>';
				html += '	<td>'+td3+'</td>';
				html += '	<td>'+td4+'</td>';
				html += '	<td>'+data[i].rmk+'</td>';
				html += '</tr>';
			}

			var addTr = 0;
			if(data.length < 17){
				addTr = 17-data.length;
			}
			for(var i=0; i<addTr; i++){
				html +=	'						<tr style="height:33.39px;">';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'						</tr>';
			}

			html += '					</table>';
			html += '					<div style="height:60px;"></div>';
			html += '					<table class="table table-bordered text-nowrap hide">';
			html += '						<thead>';
			html += '							<tr style="height:100px;">';
			html += '								<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '								<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);
		}

	});
}

function drawImgPdf(idx,inspNo,sec,thr,res){
	var closeYn = 'N';
	$.ajax({
		url : 'getFileList',
		data : {inspNo : inspNo, fileGb : 'F001-05', closeYn : closeYn},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data[0].fileNewNm == null || data[0].fileNewNm == 'null'){
				return;
			}

			var htmlData = '';
			var inputType1 = '';

			inputType1 += '<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">'+sec+'</span><br/><br/>';
			inputType1 += '		<div>';
			inputType1 += '			<div class="filter-container row previewList'+idx+'">';
			//이미지
			inputType1 += '				<table class="table table-bordered text-nowrap">';

			var rowSize = 0;
			var lastIndex = 0;

			for(var i=0; i<data.length; i++){
				var item = data[i];
				var checked = '';

				if(rowSize <= 3){
					if(lastIndex == i && lastIndex < (data.length-2)){
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+2].title+'</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+2].fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+item.content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+2].content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';

						lastIndex = i+3;
						rowSize++;
					}else if(lastIndex == i && lastIndex == (data.length-2)){
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+item.content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						rowSize++;
					}else if(lastIndex == i && lastIndex == (data.length-1) && lastIndex % 3 > 0){
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+item.content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						rowSize++;
					}
				}
			}


				inputType1 += '</table>';
				inputType1 += 					'</div>';
				inputType1 += '				</div>';

			if(data.length > 3 && data.length <= 6){
				inputType1 += '				<div style="height:150px;"></div>';
				inputType1 += '				<table class="table table-bordered text-nowrap hide">';
				inputType1 += '					<thead>';
				inputType1 += '						<tr style="height:100px;">';
				inputType1 += '							<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				inputType1 += '							<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</thead>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';
			}else if(data.length <= 3){
				inputType1 += '				<div style="height:450px;"></div>';
				inputType1 += '				<table class="table table-bordered text-nowrap hide">';
				inputType1 += '					<thead>';
				inputType1 += '						<tr style="height:100px;">';
				inputType1 += '							<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				inputType1 += '							<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</thead>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';
			}else {
				inputType1 += '				<div style="height:10px;"></div>';
			}

			var shtml = makePdf(idx,inputType1);
			//$("#printDiv").append('',shtml);
			$("#printDiv").append(shtml);

			if(data.length > 0 && data.length > 9){ //2페이지 세팅
				inputType1 = '';
				inputType1 += '<div class="card-body">';
				inputType1 += '		<div>';
				inputType1 += '			<div class="filter-container row previewList'+idx+'">';
				//이미지
				inputType1 += '				<table class="table table-bordered text-nowrap">';

				var rowSize = 0;

				for(var i=9; i<data.length; i++){
					var item = data[i];
					var checked = '';

					if(rowSize <= 3){
						if(lastIndex == i && lastIndex < (data.length-2)){
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+2].title+'</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+2].fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i].content+'</textarea>';
							inputType1 += '		</td>';

							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
							inputType1 += '		</td>';

							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+2].content+'</textarea>';
							inputType1 += '		</td>';

							inputType1 += '	</tr>';

							lastIndex = i+3;
							rowSize++;
						}else if(lastIndex == i && lastIndex == (data.length-2)){
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '		</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i].content+'</textarea>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;"></td>';
							inputType1 += '	</tr>';
							rowSize++;
						}else if(lastIndex == i && lastIndex == (data.length-1)){
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '		</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i].content+'</textarea>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;"></td>';
							inputType1 += '		<td style="width:33%;text-align:center;"></td>';
							inputType1 += '	</tr>';
							rowSize++;
						}
					}
				}

				inputType1 += '</table>';
				inputType1 += 					'</div>';
				inputType1 += '				</div>';

				inputType1 += '				<div style="height:50px;"></div>';
				inputType1 += '				<table class="table table-bordered text-nowrap hide">';
				inputType1 += '					<thead>';
				inputType1 += '						<tr style="height:100px;">';
				inputType1 += '							<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				inputType1 += '							<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</thead>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';

				shtml = makePdf((idx+1),inputType1);
				$("#printDiv").append(shtml);

			}
		}
	});
}

function fileSave(idx){
	var formData = new FormData($('#fileForm')[0]);
	$(".previewList"+idx).find(".inputDiv").each(function(){
		var chkYn = $(this).find("input[type=checkbox]").is(":checked") ? 'Y' : 'N';
		formData.append('fileNoList', $(this).find("[id^=fileNo]").val());
		formData.append('titleList', $(this).find("[id^=title]").val());
		formData.append('contentList', $(this).find("[id^=content]").val());
		formData.append('closeYnList', chkYn);
	});

	$.ajax({
		url : 'inspFileUpdate',
		data : formData,
		dataType : 'json',
		type : 'post',
		processData : false,
		contentType : false,
		success : function(data){
			if(data.result == 'succ'){
				toastr.info('저장하였습니다');
				location.reload();
			}
		}
	});
}


function setBigImg(src){
	$('.image').attr('src', src);
	$('#imgView').modal();
}

</script>
<jsp:include page="../popup/pop_fileView.jsp"></jsp:include>
</body>
</html>


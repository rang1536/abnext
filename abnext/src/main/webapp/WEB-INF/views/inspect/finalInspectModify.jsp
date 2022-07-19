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
						<h1>* 결과입력 대상</h1>
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
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">신청정보</h3>
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
											<td colspan="3" class="txtl">
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
											</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">임상증상 및 병력내용</td>
											<td colspan="3" class="txtl">
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
											</td>
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
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">실험결과</h3>
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
<!--
				<div class="row inputType1">
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult"></textarea>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사사진</h3>
							</div>
							<div class="card-body">
								<div>
									<form id="fileForm" method="post" enctype="multipart/form-data">
										<div class="filter-container row previewList"></div>
									</form>
								</div>
							</div>
						</div>
	 				</div>
	 			</div>
 -->
 				<div class="result">
 				</div>
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
<script>

var inputType1Cnt = 1;
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

	$("#inspList").find("tr").each(function(){
		//if(this).find("[id^=inspFirstCd]").val() == 'B001-01'){
			//drawImg($(this).find("[id^=inspNo]").val());
		//}
	});

});

window.onload = function(){
	$("#inspList").find("tr").each(function(){
		//if(this).find("[id^=inspFirstCd]").val() == 'B001-01'){
			drawImg($(this).find("[id^=inspNo]").val());
		//}
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
function drawImg(inspNo){
	$.ajax({
		url : 'getFileList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			let htmlData = '';
			if(data.length > 0){
				var inputType1 = '';
				inputType1 += '<div class="row inputType1">';
				inputType1 += '	<div class="col-md-6">';
				inputType1 += '		<div class="card card-primary">';
				inputType1 += '			<div class="card-header">';
				inputType1 += '				<h3 class="card-title">검사메모</h3>';
				inputType1 += '			</div>';
				inputType1 += '			<div class="card-body">';
				inputType1 += '				<table class="table">';
				inputType1 += '					<tbody>';
				inputType1 += '						<tr>';
				inputType1 += '							<td>';
				inputType1 += '								<textarea readonly class="form-control" rows="3">'+data[0].inspResult+'</textarea>';
				inputType1 += '							</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</tbody>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';
				inputType1 += '		</div>';
				inputType1 += '	</div>';
				inputType1 += '	<div class="col-md-6">';
				inputType1 += '		<div class="card card-primary">';
				inputType1 += '			<div class="card-header">';
				inputType1 += '				<h3 class="card-title">검사사진</h3>';
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
					htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+item.filePath+item.fileNewNm+'"/>';
					htmlData += '	</a>';
					htmlData += '</div>';
					htmlData += '<div class="col-sm-9" id="preview'+item.fileNo+'">';
					htmlData += '	<div class="row">';
					htmlData += '		<div class="col-8">';
					htmlData += '			<input type="text" readonly class="form-control" id="title'+item.fileNo+'" placeholder="장기" value="'+item.title+'">';
					htmlData += '		</div>';
					htmlData += '		<div class="col-4" style="padding-top:-9px">';
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
					htmlData += '		<div class="col-12">';
					htmlData += '			<textarea readonly class="form-control" rows="3" id="content'+item.fileNo+'" placeholder="메모">'+item.content+'</textarea>';
					htmlData += '		</div>';
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
						$("#inspResult"+inputType1Cnt).val(data.inspResult)
					}
				});
			}
		}
	});
}


</script>
<jsp:include page="../popup/pop_fileView.jsp"></jsp:include>
</body>
</html>

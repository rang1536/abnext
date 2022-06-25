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
	<link rel="stylesheet" href="resources/dist/css/adminlte.css">
	<!-- Toastr -->
    <link rel="stylesheet" href="resources//plugins/toastr/toastr.min.css">


	<style>
		.txtc {text-align:center;}
		.fileBox label {
		  display: inline-block;
		  padding: .5em .75em;
		  color: #000000;
		  font-size: inherit;
		  line-height: normal;
		  vertical-align: middle;
		  background-color: #fdfdfd;
		  cursor: pointer;
		  border: 1px solid #ebebeb;
		  border-bottom-color: #e2e2e2;
		  border-radius: .25em;
		}

		.fileBox input[type="file"] {  /* 파일 필드 숨기기 */
		  position: absolute;
		  width: 1px;
		  height: 1px;
		  padding: 0;
		  margin: -1px;
		  overflow: hidden;
		  clip:rect(0,0,0,0);
		  border: 0;
		}

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
											<form id="inspResultForm_${status.index+1 }" method="post" enctype="multipart/form-data">
												<tr>
													<td class="txtc" rowspan="2">
														${status.index+1 }
														<input type="hidden" id="inspNo_${status.index+1 }" value="${item.inspNo}"/>
													</td>
													<td class="txtc">${item.inspFirstNm }</td>
													<td class="txtc">${item.inspTypeNm }</td>
													<td class="txtc">
														<input type="text" id="inspResult_${status.index+1 }" class="form-control" placeholder="실험결과" value="${item.inspResult}">
													</td>
													<td>
														<div class="fileBox">
															<label for="inspResultFile_${status.index+1 }">결과사진추가</label>
															<input type="file" id="inspResultFile_${status.index+1 }" onchange="addFileSet(this, '${status.index+1 }');" multiple>
														</div>
													</td>
												</tr>
												<tr id="${status.index+1 }tr">
													<td colspan="4">
														<c:forEach var="file" items="${item.inspFileList }" varStatus="status">
															<b id="bFile_${file.fileNo }">
																<a href="#">${file.fileNewNm}</a>
		        												<a class="delete" onclick="deleteServerFile('${file.fileNo}');"><i class="far fa-minus-square"></i></a>
		       													&nbsp;&nbsp;
	       													</b>
														</c:forEach>
													</td>
												</tr>
											</form>
										</c:forEach>
									</tbody>
								</table>
							</div>

					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

				<div class="card card-danger">
					<div class="card-header">
						<h3 class="card-title">결과메모</h3>
					</div>
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<td><input type="text" id="result" class="form-control" placeholder="결과메모" value="${rceptInfo.result}"></td>
								</tr>
								<tr>
									<td class="txtc">
										<button type="button" id="list" style="width:121.2px" class="btn btn-success btn-flat"><i class="fas fa-credit-card"></i> 목록</button>
										<button type="button" id="save" style="width:121.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 결과저장</button>
									</td>
								</tr>
							</thead>
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
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>
<script>
$(function () {
	bsCustomFileInput.init();

	//Initialize Select2 Elements
	$('.select2').select2()

	//Initialize Select2 Elements
	$('.select2bs4').select2({
		theme: 'bootstrap4'
	})

});

var fileNo = 0;
var filesArr = new Array();

/* 첨부파일 추가 */
function addFileSet(obj, rowNum){
	for (var i=0; i<obj.files.length; i++) {
		var file = obj.files[i];
	    // 첨부파일 검증
	    if (validation(file)) {
	        // 파일 배열에 담기
	        var reader = new FileReader();
	        reader.onload = function () {
	            filesArr.push(file);
	        };
	        reader.readAsDataURL(file);

	        // 목록 추가
	        let htmlData = '';
	        htmlData += '   <span id="file' + fileNo + '">' + file.name;
	        htmlData += '   	<a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
	        htmlData += '	</span>';
	        htmlData += '&nbsp;&nbsp;';

	        $('#'+rowNum+'tr').find('td:eq(0)').append(htmlData);
	        fileNo++;
	    } else {
	        continue;
	    }
	}
    //}
    // 초기화
    document.querySelector("input[type=file]").value = "";
}

/* 첨부파일 검증 */
function validation(obj){
    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    if (obj.name.length > 100) {
        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
        return false;
    } else if (obj.size > (100 * 1024 * 1024)) {
        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
        return false;
    } else if (obj.name.lastIndexOf('.') == -1) {
        alert("확장자가 없는 파일은 제외되었습니다.");
        return false;
    } else if (!fileTypes.includes(obj.type)) {
        alert("첨부가 불가능한 파일은 제외되었습니다.");
        return false;
    } else {
        return true;
    }
}

/* 첨부파일 삭제 */
function deleteFile(num) {
    document.querySelector("#file" + num).remove();
    filesArr[num].is_delete = true;
}

/*서버파일삭제
 * 기존등록된 파일은 삭제할 경우 즉시 삭제
 */
function deleteServerFile(fileNo){
	if(confirm('삭제한 파일은 복구하실수 없습니다. 삭제하시겠습니까?')){
		$.ajax({
			url : 'removeFileByFileNo',
			data : {'fileNo':fileNo},
			dataType : 'json',
			type :'post',
			success:function(data){
				if(data.result == 'succ'){
					$('#bFile_'+fileNo).remove();
					toastr.info('선택하신 파일이 삭제되었습니다.');
				}

			}
		})
	}
}

function fileSave(){
	$("#inspList").find("tr").each(function(){
		if($(this).find("[id^=inspNo]").length != 0){
			var fileList = new Array();
			var rowNum = $(this).find("[id^=inspNo]").prop('id');
			rowNum = rowNum.split('_')[1];
			var formData = new FormData($('#inspResultForm_'+rowNum)[0]);

			var fileCnt = $('#'+rowNum+'tr').find('td:eq(0)').find('span').length;
			var fileNames = new Array();

			if(fileCnt > 0){
				$('#'+rowNum+'tr').find('td:eq(0)').find('span').each(function(){
					fileNames.push($(this).text());
				})

				for (var i = 0; i < filesArr.length; i++) {
			        // 삭제되지 않은 파일만 폼데이터에 담기
			        if (!filesArr[i].is_delete) {
			        	for (var j=0; j<fileNames.length; j++){
			        		if(filesArr[i].name == fileNames[j].trim()){
			        			formData.append('fileList',filesArr[i]);
							}
			        	}
			        }
			    }

				formData.append('inspNo', $(this).find("[id^=inspNo]").val());
				formData.append('rqstNo', '${rceptInfo.rqstNo }');
				formData.append('uptId', localStorage.getItem("userId"));

				$.ajax({
					url : 'inspFileUpload',
					data : formData,
					dataType : 'json',
					type : 'post',
					processData : false,
					contentType : false,
					success : function(data){
						if(data.result == 'succ'){
							console.log("결과사진등록 성공~!!");
						}else{
							console.log("결과사진등록 실패~!!");
						}
					}
				})

			}
		}
	});
}

$("#save").on("click",function (){
	var inspData = [];
	fileSave();

	$("#inspList").find("tr").each(function(){
		if($(this).find("[id^=inspNo]").length != 0){
			var sData = {
				inspNo : $(this).find("[id^=inspNo]").val(),
				inspResult : $(this).find("[id^=inspResult]").val()
			}

			inspData.push(sData);
		}
	});

	var data = {
		rqstNo : "${rceptInfo.rqstNo }",
		uptId : localStorage.getItem("userId"),
		result : $("#result").val(),
		inspList : inspData
	}

	$.ajax({
		url : "modifyResult",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			setTimeout(function(){
				alert("저장하였습니다.");
				location.href = "resultInspectList";
			}, 1500);

		}
	});

});

$("#list").on("click",function (){
	location.href = "resultInspectList";
});

</script>
</body>
</html>

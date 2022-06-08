<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>avinext | (주)아비넥스트</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
	<style>
		.txtc{text-align:center;}
		.expandable-body{text-align:left;}
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
						<h1><b>코드관리</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active"><b>코드관리</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-5">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title" style="float:right;">
									<div class="input-group mb-2">
										<input type="text" class="form-control rounded-0" id="searchCode">
										<span class="input-group-append">
											<button type="button" class="btn btn-info btn-flat" onclick="searchCode()">검색</button>
										</span>
									</div>
								</h3>
							</div>
							<!-- ./card-header -->
							<div class="card-body p-0">
								<table class="table table-hover" id="codeListTable"></table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<div class="col-md-7">
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-sm-6">&nbsp;</div>
									<div class="col-sm-3">
										<button type="button" class="btn btn-block btn-danger btn-flat" onclick="inputClear()">초기화</button>
									</div>
									<div class="col-sm-3">
										<button type="button" class="btn btn-block btn-primary btn-flat" onclick="saveCode()">저장</button>
									</div>
								</div>
							</div>
							<!-- ./card-header -->
							<div class="card-body">
								<form id="codeFrm">
									<div class="form-group">
										<label for="exampleInputEmail1">상위코드</label>
										<input type="text" class="form-control" id="uppCodeId" name="uppCodeId" placeholder="상위코드">
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="exampleInputEmail1">코드아이디</label>
												<input type="text" class="form-control" id="codeId" name="codeId" placeholder="코드아이디">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="exampleInputEmail1">코드명</label>
												<input type="text" class="form-control" id="codeNm" name="codeNm" placeholder="코드명">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="exampleInputEmail1">코드구분</label>
												<input type="text" class="form-control" id="codeGb" name="codeGb" placeholder="코드구분">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="exampleInputEmail1">정렬순서</label>
												<input type="number" class="form-control" id="sortIdx" name="sortIdx" placeholder="정렬순서">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">상세내용</label>
										<textarea class="form-control" id="codeDtlMemo" name="codeDtlMemo" placeholder="상세내용" rows="7"></textarea>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	
	<c:import url="../layer/layout_footer.jsp"></c:import>
	
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper	-->
</body>

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Page specific script -->
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- BS-Stepper -->
<script src="resources/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- 주소찾기 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- SweetAlert2 -->
<script src="resources/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>

<script>
	$(document).ready(function(){
		searchCode();
	});
	
	function searchCode(){
		$.ajax({
			url : "searchCodeList",
			data : {searchValue : $("#searchCode").val()},
			type : "POST",
			dataType : "JSON",
			success : function(data){
				var codeListHtml = '';
				var viewedCodeArr = new Array();
				codeListHtml += '<tbody>';
				for(var i=0; i<data.length; i++){
					var item = data[i];
					if(item.codeLevel == 1){
						codeListHtml += '<tr><td onclick="modifyCode(this)">■ '+item.codeIdNm;
						codeListHtml += '<input type="hidden" id="codeNo" value="'+item.codeNo+'"/>';
						codeListHtml += '<input type="hidden" id="codeId" value="'+item.codeId+'"/>';
						codeListHtml += '<input type="hidden" id="codeNm" value="'+item.codeNm+'"/>';
						codeListHtml += '<input type="hidden" id="uppCodeId" value="'+item.uppCodeId+'"/>';
						codeListHtml += '<input type="hidden" id="codeGb" value="'+item.codeGb+'"/>';
						codeListHtml += '<input type="hidden" id="sortIdx" value="'+item.sortIdx+'"/>';
						codeListHtml += '<input type="hidden" id="codeDtlMemo" value="'+item.codeDtlMemo+'"/>';
						codeListHtml += '</td>';
						codeListHtml += '	<td class="project-actions text-right">';
						codeListHtml += '		<a class="btn btn-primary btn-sm" href="javascript:void(0)" onclick="addCode(\''+item.codeId+'\')"><i class="fas fa-folder"></i>추가</a>';
						codeListHtml += '		<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="delCode(\''+item.codeId+'\')"><i class="fas fa-trash"></i>삭제</a>';
						codeListHtml += '	</td>';
						codeListHtml += '</tr>';
						if(item.childCnt != 0){
							for(var k=0; k<data.length; k++){
								var item2 = data[k];
								viewedCodeArr.push(item2.codeId);
								if(item.codeId == item2.uppCodeId && item2.codeLevel == 2){
									codeListHtml += '<tr><td onclick="modifyCode(this)" style="padding-left:30px;">● '+item2.codeIdNm;
									codeListHtml += '<input type="hidden" id="codeNo" value="'+item2.codeNo+'"/>';
									codeListHtml += '<input type="hidden" id="codeId" value="'+item2.codeId+'"/>';
									codeListHtml += '<input type="hidden" id="codeNm" value="'+item2.codeNm+'"/>';
									codeListHtml += '<input type="hidden" id="uppCodeId" value="'+item2.uppCodeId+'"/>';
									codeListHtml += '<input type="hidden" id="codeGb" value="'+item2.codeGb+'"/>';
									codeListHtml += '<input type="hidden" id="sortIdx" value="'+item2.sortIdx+'"/>';
									codeListHtml += '<input type="hidden" id="codeDtlMemo" value="'+item2.codeDtlMemo+'"/>';
									codeListHtml += '</td>';
									codeListHtml += '	<td class="project-actions text-right">';
									codeListHtml += '		<a class="btn btn-primary btn-sm" href="javascript:void(0)" onclick="addCode(\''+item2.codeId+'\')"><i class="fas fa-folder"></i>추가</a>';
									codeListHtml += '		<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="delCode(\''+item2.codeId+'\')"><i class="fas fa-trash"></i>삭제</a>';
									codeListHtml += '	</td>';
									codeListHtml += '</tr>';
									if(item2.childCnt != 0){
										for(var n=0; n<data.length; n++){
											var item3 = data[n];
											viewedCodeArr.push(item3.codeId);
											if(item2.codeId == item3.uppCodeId && item3.codeLevel == 3){
												codeListHtml += '<tr><td onclick="modifyCode(this)" style="padding-left:60px;">→ '+item3.codeIdNm;
												codeListHtml += '<input type="hidden" id="codeNo" value="'+item3.codeNo+'"/>';
												codeListHtml += '<input type="hidden" id="codeId" value="'+item3.codeId+'"/>';
												codeListHtml += '<input type="hidden" id="codeNm" value="'+item3.codeNm+'"/>';
												codeListHtml += '<input type="hidden" id="uppCodeId" value="'+item3.uppCodeId+'"/>';
												codeListHtml += '<input type="hidden" id="codeGb" value="'+item3.codeGb+'"/>';
												codeListHtml += '<input type="hidden" id="sortIdx" value="'+item3.sortIdx+'"/>';
												codeListHtml += '<input type="hidden" id="codeDtlMemo" value="'+item3.codeDtlMemo+'"/>';
												codeListHtml += '</td>';
												codeListHtml += '	<td class="project-actions text-right">';
												codeListHtml += '		<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="delCode(\''+item3.codeId+'\')"><i class="fas fa-trash"></i>삭제</a>';
												codeListHtml += '	</td>';
												codeListHtml += '</tr>';
											}
										}
									}
								}
							}
						}
					}
				}
				item = null; item2 = null;
				for(var i=0; i<data.length; i++){
					item = data[i];
					if(item.codeLevel == 2 && viewedCodeArr.indexOf(item.codeId) == -1){
						viewedCodeArr.push(item.codeId);
						codeListHtml += '<tr><td onclick="modifyCode(this)" style="padding-left:30px;">● '+item.codeIdNm;
						codeListHtml += '<input type="hidden" id="codeNo" value="'+item.codeNo+'"/>';
						codeListHtml += '<input type="hidden" id="codeId" value="'+item.codeId+'"/>';
						codeListHtml += '<input type="hidden" id="codeNm" value="'+item.codeNm+'"/>';
						codeListHtml += '<input type="hidden" id="uppCodeId" value="'+item.uppCodeId+'"/>';
						codeListHtml += '<input type="hidden" id="codeGb" value="'+item.codeGb+'"/>';
						codeListHtml += '<input type="hidden" id="sortIdx" value="'+item.sortIdx+'"/>';
						codeListHtml += '<input type="hidden" id="codeDtlMemo" value="'+item.codeDtlMemo+'"/>';
						codeListHtml += '</td>';
						codeListHtml += '	<td class="project-actions text-right">';
						codeListHtml += '		<a class="btn btn-primary btn-sm" href="javascript:void(0)" onclick="addCode(\''+item.codeId+'\')"><i class="fas fa-folder"></i>추가</a>';
						codeListHtml += '		<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="delCode(\''+item.codeNo+'\')"><i class="fas fa-trash"></i>삭제</a>';
						codeListHtml += '	</td>';
						codeListHtml += '</tr>';
						if(item.childCnt != 0){
							for(var n=0; n<data.length; n++){
								item2 = data[n];
								if(item.codeId == item2.uppCodeId && item2.codeLevel == 3){
									viewedCodeArr.push(item2.codeId);
									codeListHtml += '<tr><td onclick="modifyCode(this)" style="padding-left:60px;">→ '+item2.codeIdNm;
									codeListHtml += '<input type="hidden" id="codeNo" value="'+item2.codeNo+'"/>';
									codeListHtml += '<input type="hidden" id="codeId" value="'+item2.codeId+'"/>';
									codeListHtml += '<input type="hidden" id="codeNm" value="'+item2.codeNm+'"/>';
									codeListHtml += '<input type="hidden" id="uppCodeId" value="'+item2.uppCodeId+'"/>';
									codeListHtml += '<input type="hidden" id="codeGb" value="'+item2.codeGb+'"/>';
									codeListHtml += '<input type="hidden" id="sortIdx" value="'+item2.sortIdx+'"/>';
									codeListHtml += '<input type="hidden" id="codeDtlMemo" value="'+item2.codeDtlMemo+'"/>';
									codeListHtml += '</td>';
									codeListHtml += '	<td class="project-actions text-right">';
									codeListHtml += '		<a class="btn btn-primary btn-sm" href="javascript:void(0)" onclick="addCode(\''+item2.codeId+'\')"><i class="fas fa-folder"></i>추가</a>';
									codeListHtml += '		<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="delCode(\''+item2.codeNo+'\')"><i class="fas fa-trash"></i>삭제</a>';
									codeListHtml += '	</td>';
									codeListHtml += '</tr>';
								}
							}
						}
					}
				}
				
				item = null;
				for(var i=0; i<data.length; i++){
					item = data[i];
					if(item.codeLevel == 3 && viewedCodeArr.indexOf(item.codeId) == -1){
						codeListHtml += '<tr><td onclick="modifyCode(this)" style="padding-left:60px;">→ '+item.codeIdNm;
						codeListHtml += '<input type="hidden" id="codeNo" value="'+item.codeNo+'"/>';
						codeListHtml += '<input type="hidden" id="codeId" value="'+item.codeId+'"/>';
						codeListHtml += '<input type="hidden" id="codeNm" value="'+item.codeNm+'"/>';
						codeListHtml += '<input type="hidden" id="uppCodeId" value="'+item.uppCodeId+'"/>';
						codeListHtml += '<input type="hidden" id="codeGb" value="'+item.codeGb+'"/>';
						codeListHtml += '<input type="hidden" id="sortIdx" value="'+item.sortIdx+'"/>';
						codeListHtml += '<input type="hidden" id="codeDtlMemo" value="'+item.codeDtlMemo+'"/>';
						codeListHtml += '</td>';
						codeListHtml += '	<td class="project-actions text-right">';
						codeListHtml += '		<a class="btn btn-primary btn-sm" href="javascript:void(0)" onclick="addCode(\''+item.codeId+'\')"><i class="fas fa-folder"></i>추가</a>';
						codeListHtml += '		<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="delCode(\''+item.codeNo+'\')"><i class="fas fa-trash"></i>삭제</a>';
						codeListHtml += '	</td>';
						codeListHtml += '</tr>';
					}
				}

				codeListHtml += '</tbody>';
				$("#codeListTable").empty();
				$("#codeListTable").html(codeListHtml);
			},
			error : function(error){
				console.log(error);
			}
		})
	}
	
	function addCode(codeId){
		$("[name=uppCodeId]").val(codeId);
	}
	
	function delCode(codeNo){
		var msg = "삭제하시겠습니까?";
		if(confirm(msg)){
			$.ajax({
				url : "deleteCode",
				data : {codeNo : codeNo},
				type : "POST",
				dataType : "JSON",
				success : function(data){
					alert("정상적으로 삭제하였습니다.");
					pageReload();
				},
				error : function(err){
					console.log(err);
					alert("알 수 없는 이유로 삭제에 실패하였습니다.");
				}
			});
		}
	}
	
	function inputClear(){
		var clearArr = ['uppCodeId','codeId','codeNm','codeGb','sortIdx','codeDtlMemo'];
		for(var i=0; i<clearArr.length; i++){
			$("[name="+clearArr[i]+"]").val("");
		}
	}
	
	function saveCode(){
		if($("[name=sortIdx]").val() == ''){
			$("[name=sortIdx]").val("1");
		}
		
		var data = $("#codeFrm").serialize();
		var msg = "등록하시겠습니까?";
		if(confirm(msg)){
			$.ajax({
				url : "insertCode",
				data : data,
				type : "POST",
				dataType : "JSON",
				success : function(data){
					alert("정상적으로 등록하였습니다.");
					pageReload();
				},
				error : function(err){
					console.log(err);
					alert("알 수 없는 이유로 등록에 실패하였습니다.");
				}
			});
		}
	}
	
	function pageReload(){
		searchCode();
		inputClear();
	}
	
	function modifyCode(target){
		$("[name=codeId]").val(nullToBlank($(target).find("[id^=codeId]").val()));
		$("[name=codeNm]").val(nullToBlank($(target).find("[id^=codeNm]").val()));
		$("[name=uppCodeId]").val(nullToBlank($(target).find("[id^=uppCodeId]").val()));
		$("[name=codeDtlMemo]").val(nullToBlank($(target).find("[id^=codeDtlMemo]").val()));
		$("[name=sortIdx]").val(nullToBlank($(target).find("[id^=sortIdx]").val()));
		$("[name=codeGb]").val(nullToBlank($(target).find("[id^=codeGb]").val()));
	}
	
	function nullToBlank(str){
		if(str == null || str == 'null'){
			str = '';
		}
		return str;
	}
</script>
</html>
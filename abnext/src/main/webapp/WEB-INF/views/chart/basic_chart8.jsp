<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
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
	<!-- Toastr -->
	<link rel="stylesheet" href="resources/plugins/toastr/toastr.min.css">
	<!-- jsGrid -->
	<link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid.min.css">
	<link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid-theme.min.css">


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
						<h1><b>기본통계</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>기본통계</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
 			<div class="container-fluid">
				<div class="card">
					<div class="card-header card-info" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>칙몬통계 - 검색조건</b></h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool" data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>

					<div class="card-body">
						<form id="searchForm">
							<div class="row">
								<div class="col-sm-3">
									<div class="form-group">
										<label>*동물병원명</label>
										<select class="form-control select2" id="hospNo" name="hospNo">
											<option value="">전체</option>
											<c:forEach var="item" items="${hospList}" varStatus="status">
												<option value="${item.hospNo }">${item.hospNm }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="form-group">
										<label>*수의사 <a style="color:red;">(병원선택 후 선택가능)</a></label>
										<select class="form-control select2" id="userNo" name="userNo">
											<option value="">전체</option>
											<c:forEach var="item" items="${hospital }" varStatus="status">
												<option value="${item.hospNo }" data-paygb="${item.payGb }" data-adr="${item.hospSigunguNm }">${item.hospNm }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="form-group">
										<label>*보호자명</label>
										<select class="form-control select2" id="animButler" name="animButler">
											<option value="">전체</option>
											<c:forEach var="item" items="${buttlerList}" varStatus="status">
												<option value="${item.animButler }" >${item.animButler }</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>*생년월일(일령)</label>
										<div class="input-group">
											<input type="date" class="form-control-sm" name="stDt" id="stDt"/>&nbsp;&nbsp;&nbsp;∼  &nbsp;&nbsp;&nbsp;
											<input type="date" class="form-control-sm" name="endDt" id="endDt"/>&nbsp;&nbsp;&nbsp;

										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label>*지역</label>
										<div class="form-group">
											<c:forEach var="item" items="${localList}" varStatus="status">
												<div class="icheck-primary d-inline" style="vertical-align:bottom;">
													<input type="checkbox" id="localChk${status.index }" class="chks" name="sidoNo" value="${item.localNm}">
													<label for="localChk${status.index }" style="width:80px">${item.localNm}</label>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label>*품종</label>
										<div class="form-group">
											<c:forEach var="item" items="${animGbList}" varStatus="status">
												<div class="icheck-primary d-inline" style="vertical-align:bottom;">
													<input type="checkbox" id="animChk${status.index }" class="chks" name="animThirdCd" value="${item.codeId}">
													<label for="animChk${status.index }" style="width:100px">${item.codeNm}</label>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
						</form>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>*질병</label>
								</div>

								<div id="jsGrid"></div>
								<br/>
								<div style="text-align:center;">
									<button class="btn btn-sm btn-success btn-flat" onclick="setSickCd();">항목설정</button>
									<button class="btn btn-sm btn-default btn-flat" onclick="setSickCdAll();">설정취소</button>
								</div>
							</div>
						</div>
					</div>
					<!-- /.card-body -->

					<div class="card-footer" style="background-color:#D4F4FA;color:#000000;">
						<button type="button" class="btn btn-block btn-sm btn-primary btn-flat btn-save"><i class="fas fa-search"></i> 검색</button>
					</div>
				</div>
				<!-- /.card -->

				<div class="card">
					<div class="card-header" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>Data</b></h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool" data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>

					<div class="card-body">
						<div id="jsGrid1"></div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

	<c:import url="../layer/layout_footer.jsp"></c:import>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper  -->
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

<!-- jsGrid -->
<script src="resources/plugins/jsgrid/demos/db.js"></script>
<script src="resources/plugins/jsgrid/jsgrid.min.js"></script>

<script>

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		getDataSick();
		getData1();
    });

	var totalData = '';
	var checkedDataList = new Array();
	var checkedData = new Array();

	function getDataSick(){
		$.ajax({
			url : 'getSickCodeList',
			dataType : 'json',
			type : 'post',
			success:function(data){
				totalData = data;
				setGrid(data);
			}
		})
	}

    var chkRowCnt = 0;
    var update_item ={};

	function setGrid(data){
		$("#jsGrid").jsGrid({
	        height: "auto",
	        width: "100%",

	        sorting: true,
	        paging: true,
	        autoload: true,
	       	pageSize: 10,
	       	pageButtonCount: 5,

			data: data,
	        fields: [
	        	{ name: "sumChk",   type: "checkbox", 	width: 60, title:"", align: "center"
	        		, itemTemplate: function(value, item) {
	        			return $("<input>").attr("type", "checkbox").attr("checked", value || item.Checked)
	        			.on("change", function() {
	        				item.Checked = $(this).is(":checked");

	        				if(item.Checked){
	        					var checked = {'codeId': item.codeId, 'is_deleted':false};
	        					checkedDataList.push(checked);

	        				}else{
								for(var i=0; i<checkedDataList.length; i++){
									if(checkedDataList[i].codeId == item.codeId){
										checkedDataList[i].is_deleted = true;
									}
								}
	        				}
	        			})
	        		}
	        	},
	            { name: "codeId",   type: "text", width: 150, 	title:"코드ID", 	align: "center"},
	            { name: "cate1",   	type: "text", width: 150, 	title:"구분", 	align: "center"},
	            { name: "cate2",   	type: "text", width: 150, 	title:"대분류", 	align: "center"},
	            { name: "cate3",	type: "text", width: 200, 	title:"중분류", 	align: "center"},
	            { name: "cate4",	type: "text", width: 200, 	title:"검사항목(소분류)", 	align: "center"},
	            { name: "memo",		type: "text", width: 200, 	title:"코드메모", 	align: "center"}

	        ]
	    });

	}


	function setSickCd(){
		checkedData = new Array();

		for(var i=0; i<totalData.length; i++){
			for(var j=0; j<checkedDataList.length; j++){
				if(checkedDataList[j].codeId == totalData[i].codeId){

					if(!checkedDataList[j].is_deleted){
						checkedData.push(totalData[i]);
					}
				}
			}
		}
		setGrid(checkedData);
	}


	function setSickCdAll(){
		checkedDataList = new Array();
		setGrid(totalData);
	}

	$(document).on('click', '.btn-save', function(){
		getData1();
	})

	function getData1(){
		var formData = $('#searchForm').serialize();

		for(var i=0; i<checkedData.length; i++){
			formData += '&cate4='+checkedData[i].codeId;
		}

		$.ajax({
			url : 'basicChartList8',
			type : 'post',
			//data : formData,
			dataType :'json',
			success : function(data){
				setGrid1(data);
			}
		})
	}

	function setGrid1(data){
		$("#jsGrid1").jsGrid({
	        height: "auto",
	        width: "100%",
	        sorting: true,
	        paging: true,
	       	pageSize: 20,
			data: data,
	        fields: [
	        	{ name: "rqstNo",   type: "text", width: 100, 	title:"의뢰번호", 	align: "center"},
	            { name: "hospNm",   type: "text", width: 120, 	title:"병원명", 	align: "center"},
	            { name: "docNm",   	type: "text", width: 80, 	title:"수의사", 	align: "center"},
	            { name: "animButler",type: "text", width: 80, 	title:"보호자", 	align: "center"},
	            { name: "animBirth",type: "text", width: 70, 	title:"생년월일", 	align: "center"},
	            { name: "value1", 	type: "text", width: 50, 	title:"지역", 	align: "center"},
	            { name: "animNm", 	type: "text", width: 80, 	title:"이름", 	align: "center"},
	            { name: "value2", 	type: "text", width: 50, 	title:"성별",		align: "center"},
	            { name: "value3", 	type: "text", width: 90, 	title:"대분류", 	align: "center"},
	            { name: "value4", 	type: "text", width: 120, 	title:"중분류", 	align: "center"},
	            { name: "value5", 	type: "text", width: 150, 	title:"검사항목", 	align: "center"},
	            { name: "diagNm", 	type: "text", width: 150, 	title:"최종진단", 	align: "center"},
	            { name: "value6", 	type: "text", width: 60, 	title:"진행상태", 	align: "center"}
	        ]
	    });


	}
</script>
</html>
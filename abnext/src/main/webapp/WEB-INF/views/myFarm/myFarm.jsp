<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shotcut icon" href="resources/files/aviicon.png" />
	<title>avinext | (주)아비넥스트</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
	<!-- daterange picker -->
	<link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
	<!-- Bootstrap Color Picker -->
	<link rel="stylesheet" href="resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- BS Stepper -->
	<link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
	<!-- dropzonejs -->
	<link rel="stylesheet" href="resources/plugins/dropzone/min/dropzone.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet" href="resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	<!-- jsGrid -->
	<link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid.min.css">
	<link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid-theme.min.css">
	<style>
		.txtl{text-align:left;}
		.txtc{text-align:center;}
		.txtr{text-align:right;}
		.txtb{background-color:#F2F2F2}
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
						<h1><b>myPage</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">myPage</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content" style="font-size:13px;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">*진단검사</h3>
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<div class="input-group date" id="reservationdate" data-target-input="nearest">
											<input type="text" id="searchYear" class="form-control datetimepicker-input" data-target="#reservationdate" data-toggle="datetimepicker" placeholder="검색연도">
											<div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
												<div class="input-group-text"><i class="fa fa-calendar"></i></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-header -->
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box" style="color:white;background-color:#0080FF;">
							<div class="inner">
								<h3>신청</h3>
								<p>REQUEST</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="javascript:void(0)" class="small-box-footer">&nbsp;<span style="float:right;margin-right:1rem;"><span id="ak01ReqCnt">${ak01Yeardata.reqCnt }</span> 건<!-- <i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i> --></span></a>
							<%--
							<a href="javascript:void(0)" onclick="getList('a1')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01ReqCnt">${ak01Yeardata.reqCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							 --%>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box" style="color:white;background-color:#0067a3">
							<div class="inner">
								<h3>접수</h3>
								<p>RECEIPT</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="javascript:void(0)" class="small-box-footer">&nbsp; <span style="float:right;margin-right:1rem;"><span id="ak01RecCnt">${ak01Yeardata.recCnt }</span> 건</span></a>
							<%--
							<a href="javascript:void(0)" onclick="getList('a2')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01RecCnt">${ak01Yeardata.recCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							 --%>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box" style="color:white;background-color:#1b315e">
							<div class="inner">
								<h3>검사중</h3>
								<p>PROCESSING</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="javascript:void(0)" class="small-box-footer">&nbsp; <span style="float:right;margin-right:1rem;"><span id="ak01ProcCnt">${ak01Yeardata.procCnt }</span> 건</span></a>
							<%--
							<a href="javascript:void(0)" onclick="getList('a3')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01ProcCnt">${ak01Yeardata.procCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							 --%>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box" style="color:white;background-color:#000080">
							<div class="inner">
								<h3>검사완료</h3>
								<p>FINISH</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="javascript:void(0)" class="small-box-footer">&nbsp; <span style="float:right;margin-right:1rem;"><span id="ak01FinCnt">${ak01Yeardata.finCnt }</span> 건</span></a>
							<%--
							<a href="javascript:void(0)" onclick="getList('a4')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01FinCnt">${ak01Yeardata.finCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							 --%>
						</div>
					</div>
					<!-- ./col -->
				</div>

<%--
				<div class="card">
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>의뢰번호</th>
									<th>신청일</th>
									<th>상태</th>
									<th>동물명</th>
									<th>신청자(기관)</th>
									<th>담당수의사</th>
									<th>결과입력자</th>
									<th>진단명</th>
									<th>검사완료일</th>
								</tr>
							</thead>
							<tbody id="listBody">
								<c:forEach var="item" items="${rceptList }" varStatus="status">
									<tr>
										<td>${item.pdlNo }</td>
										<td>${item.rqstDt }<input type="hidden" id="rqstNo_${status.index+1 }" value="${item.rqstNo }"/></td>
										<td>${item.procStatNm }</td>
										<td>${item.animNm }</td>
										<td>${item.hospNm }</td>
										<td>${item.docNm }</td>
										<td>${item.resultWriterNm }</td>
										<td></td>
										<td></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
				 --%>
				 <div class="card card-primary card-outline">
					<div class="card-body">
						<div id="jsGrid1"></div>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<form id="viewFrm" method="POST">
		<input type="hidden" name="pdlNo"/>
	</form>

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
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- date-range-picker -->
<script src="resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- bs-custom-file-input -->
<script src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- Customizing Js -->
<script src="resources/js/common.js"></script>
<!-- jsGrid -->
<script src="resources/plugins/jsgrid/demos/db.js"></script>
<script src="resources/plugins/jsgrid/jsgrid.min.js"></script>
<script>

	$(function () {
		bsCustomFileInput.init();

		//Date picker
		$('#reservationdate').datetimepicker({
			format: 'YYYY.MM',
			defaultDate : new Date()
		});

		getGrid();

	 });

	$('#reservationdate').on('change.datetimepicker', function (e) {
		getGrid();
	});


	function getList(str){
		if(str == 'a1'){
			if($("#ak01ReqCnt").text().trim() != 0){
				location.href = 'requestInspect';
			}
		}else if(str == 'a2'){
			if($("#ak01RecCnt").text().trim() != 0){
				location.href = 'requestInspect';
			}
		}else if(str == 'a3'){
			if($("#ak01ProcCnt").text().trim() != 0){
				location.href = 'settingInspectList';
			}
		}else if(str == 'a4'){
			if($("#ak01FinCnt").text().trim() != 0){
				location.href = 'resultInspectList';
			}
		}
	}

	function getGrid(){
		var searchYear = $("#searchYear").val().substring(0,7).replace("-",".");
		var data = {
			insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
			limitCnt : 5,
			searchStrtDt : searchYear+".01",
			searchFnshDt : searchYear+".31"
		};

		$.ajax({
			url : 'selectCustomerList',
			dataType : 'json',
			type : 'post',
			data : data,
			success:function(data){
				var colList = ['pdlNo','rqstDt','procStatNm','animNm','animButler','docNm','gubun'];
				var typeList = ['text','text','text','text','text','text','text'];
				var widthList = ['120','100','100','150','180','150','120'];
				var titleList = ['의뢰번호','신청일','상태','동물이름','보호자','담당수의사','검사구분'];
				var alignList = ['center','center','center','center','center','center','center'];
				var gridId = 'jsGrid1';
				var fields = new Array();
				var row = '';

				for(var i=0; i<colList.length; i++){
					row = {
						"name"	: colList[i],
						"type"	: typeList[i],
						"width" : widthList[i],
						"title"	: titleList[i],
						"align"	: alignList[i],

					}
					fields.push(row);
				}
				$("#"+gridId).empty();
				$("#"+gridId).jsGrid({
			        height: "auto",
			        width: "100%",
			        sorting: true,
			        paging: true,
					data: data,
			        fields: fields,
			        rowClick: function(args){
						var $target = $(args.event.target);
						$("[name=pdlNo]").val($target.parent().find("td:eq(0)").text());
						$("#viewFrm").attr("action","customerViewInspect");
						$("#viewFrm").submit();
			        }
			    });
			}
		})

		$("#ak01ReqCnt").text("0");
		$("#ak01RecCnt").text("0");
		$("#ak01ProcCnt").text("0");
		$("#ak01FinCnt").text("0");

		var data2 = {
			insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
			searchStr : searchYear
		}
		$.ajax({
			url : 'selectMonthlyData',
			dataType : 'json',
			type : 'post',
			data : data2,
			success:function(data){
				$("#ak01ReqCnt").text(data.reqCnt);
				$("#ak01RecCnt").text(data.recCnt);
				$("#ak01ProcCnt").text(data.procCnt);
				$("#ak01FinCnt").text(data.finCnt);
			}
		});
	}
</script>
</body>
</html>

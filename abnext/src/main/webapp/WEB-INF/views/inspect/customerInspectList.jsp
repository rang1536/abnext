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
	<!-- DataTables -->
	<link rel="stylesheet" href="resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" href="resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
	<!-- jsGrid -->
	<link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid.min.css">
	<link rel="stylesheet" href="resources/plugins/jsgrid/jsgrid-theme.min.css">
	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<style>
		th,td {text-align:center;}
	</style>
</head>
<body class="hold-transition sidebar-mini" onselectstart='return false'>
<div class="wrapper">
	<jsp:include page="../layer/layout.jsp"></jsp:include>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1><b>진단검사신청 현황</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">진단검사신청 현황</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content" style="font-size:13px;">
			<div class="invoice p-3 mb-3">
				<!-- Table row -->
				<div class="row">
					<div class="col-12">
						<div class="card card-primary card-outline"">
							<div class="card-header">
								<h3 class="card-title"><b>의뢰목록</b></h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="display:none">
									<div class="form-group clearfix" style="float:right">
										<div class="icheck-primary d-inline">
											<input type="checkbox" id="chkAll" class="chkbox" checked>
											<label for="chkAll">전체</label>
										</div>
										<div class="icheck-primary d-inline" style="margin-left:15px">
											<input type="checkbox" id="chk1" class="chkbox">
											<label for="chk1">검사중</label>
										</div>
										<div class="icheck-primary d-inline" style="margin-left:15px">
											<input type="checkbox" id="chk2" class="chkbox">
											<label for="chk2">검사완료</label>
										</div>
									</div>
								</div>
								<div id="jsGrid1"></div>
							</div>
							<!-- /.card-body -->
							<div class="card-footer">
								<button type="button" class="excelBtn btn-sm btn-success btn-flat" onclick="excelDown();" style="max-width:100px;min-width:82px;"><i class="fa fa-copy"></i> EXCEL</button>
								<button type="button" class="btn btn-sm btn-primary btn-flat" style="float:right;">신규신청</button>
							</div>
							<!-- /.card-footer -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col-12 -->
				</div>
				 <!-- /.row -->
			</div><!-- /.invoice -->
		</section>
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../layer/layout_footer.jsp"></jsp:include>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	<form id="viewFrm" method="POST">
		<input type="hidden" name="pdlNo"/>
	</form>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables	& Plugins -->
<script src="resources/plugins/datatables/jquery.dataTables.js"></script>
<script src="resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="resources/plugins/jszip/jszip.min.js"></script>
<script src="resources/plugins/pdfmake/pdfmake.min.js"></script>
<script src="resources/plugins/pdfmake/vfs_fonts.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="resources/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- jsGrid -->
<script src="resources/plugins/jsgrid/demos/db.js"></script>
<script src="resources/plugins/jsgrid/jsgrid.min.js"></script>
<!-- Customizing Js -->
<script src="resources/js/common.js"></script>
<!-- Page specific script -->
<script>
	$(function () {
		if(sessionStorage.getItem('userInfo') == null){
			if(confirm("로그인이 필요한 페이지입니다.\n로그인 하시겠습니까?")){
				location.href = "loginPage";
			}else {
				history.back();
			}
		}

		getList();
	});

	$(".btn-primary").on("click",function(){
		location.href = "registerInspect";
	});

	$(".chkbox").click(function(){
		if($(this).hasClass("on")){
			$(this).prop("checked", false);
			$(this).removeClass("on");
		}else {
			$(".chkbox").each(function(){
				$(".chkbox").prop("checked", false);
				$(".chkbox").removeClass("on");
			});
			$(this).prop("checked", true);
			$(this).addClass("on");
		}
		getList();
	});

	function getList(){
		var data = {};

		if($("#chk1").is(":checked")){
			data = {
				insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
				searchStr : "01"
			};
		}else if($("#chk2").is(":checked")){
			data = {
				insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
				searchStr : "02"
			};
		}else {
			data = {
				insId : JSON.parse(sessionStorage.getItem("userInfo")).userId
			};
		}

		$.ajax({
			url : 'selectCustomerInspectList',
			dataType : 'json',
			type : 'post',
			data : data,
			success:function(data){
				var colList = ['pdlNo','rqstDt','procStatNm','animNm','animButler','docNm','gubun','payStat'];
				var typeList = ['text','text','text','text','text','text','text','text'];
				var widthList = ['120','100','100','150','180','150','120','120'];
				var titleList = ['의뢰번호','신청일','상태','동물이름','보호자','담당수의사','검사구분','비용'];
				var alignList = ['center','center','center','center','center','center','center','right'];
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
						"itemTemplate" :
							function(value, item) {
								var flag = false;
								console.log(item);
								if(value == '01') {
									return '<p style="color:red;font-weight:bold;">'+$.gfn_setComma(item.price)+"(미납) </p>";
								}else if(value == '02') {
									return '<p style="color:green;font-weight:bold;">'+$.gfn_setComma(item.price)+"(수납) </p>";
								}else {
									return value;
								}
							}
					}
					fields.push(row);
				}

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
	}

	function excelDown(){
		$("#jsGrid1").table2excel({
			exclude : ".excludeThisClass",
			name : "의뢰목록",
			filename : "의뢰목록",
			fileext : ".xlsx",
			exclude_img : true,
			exclude_links : true,
			exclude_inputs : true        
		});    
	}
</script>
</body>
</html>

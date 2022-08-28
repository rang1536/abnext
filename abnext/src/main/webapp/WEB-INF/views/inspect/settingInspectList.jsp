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
	<style>
		th,td {text-align:center;}
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
						<h1><b>진단설정</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active">진단설정</li>
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
						<div class="card card-primary card-outline">
							<!-- /.card-header -->
							<div class="card-header">
				              <h3 class="card-title"><b>진단설정목록</b></h3>
				            </div>
							<!-- /.card-header -->
							<div class="card-body">
								<div id="jsGrid1"></div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.row -->
				</div>
				 <!-- /.col -->
			</div><!-- /.container-fluid -->
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
<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
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
<!-- Page specific script -->
<script>
	$(function () {
		$.ajax({
			url : 'settingInspectList2',
			dataType : 'json',
			type : 'post',
			data : {'stDt':$('#stDt').val(), 'endDt':$('#endDt').val()},
			success:function(data){
				var colList = ['pdlNo','rqstDt','procStatNm','animNm','animNo','hospNm','docNm','inspType'];
				var typeList = ['text','text','text','text','text','text','text','text'];
				var widthList = ['120','100','100','150','180','150','120','120'];
				var titleList = ['의뢰번호','신청일','상태','동물이름','동물번호','신청자(기관)','담당수의사','검사구분'];
				var alignList = ['center','center','center','center','center','center','center','center'];
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
						$("#viewFrm").attr("action","settingInspectModify");
						$("#viewFrm").submit();
			        }
			    });
			}
		})
	});

</script>
</body>
</html>

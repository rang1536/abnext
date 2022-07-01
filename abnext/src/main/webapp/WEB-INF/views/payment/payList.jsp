<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
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

	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">


	<style>
		th,td {text-align:center;}
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
						<h1> * 검사비 정산</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">검사비 정산</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<div class="invoice p-3 mb-3">
			<!-- Table row -->
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<div class="row">
								<div class="col-sm-2" style="padding-top:30px;min-width:150px;">
									<h5>* 신청목록  </h5>
								</div>
								<div class="col-sm-2">
									<div class="form-group">
										<label>기간</label>
										<div class="input-group date" id="searchStrtDt" data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input" data-target="#searchStrtDt" data-toggle="datetimepicker" placeholder="시작일자" id="strtDt" value="${strt}">
											<div class="input-group-append" data-target="#searchStrtDt" data-toggle="datetimepicker">
												<div class="input-group-text"><i class="fa fa-calendar"></i></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="form-group">
										<label>&nbsp;</label>
										<div class="input-group date" id="searchFnshDt" data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input" data-target="#searchFnshDt" data-toggle="datetimepicker" placeholder="종료일자" id="fnshDt" value="${fnsh}">
											<div class="input-group-append" data-target="#searchFnshDt" data-toggle="datetimepicker">
												<div class="input-group-text"><i class="fa fa-calendar"></i></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-5">
									<div class="form-group">
										<label>신청기관</label>
										<input type="text" class="form-control" placeholder="신청기관" id="searchStr">
									</div>
								</div>
								<div class="col-sm-1">
									<div class="form-group">
										<label>&nbsp;</label>
										<button type="button" class="searchBtn btn btn-default btn-flat btn-block" style="max-width:100px;min-width:82px;"><i class="fa fa-search"></i> 조회</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card-header -->
						<div class="card-body table-responsive">
							<table id="example2" class="table table-bordered text-nowrap">
								<thead>
									<tr>
										<th>no</th>
										<th>신청기관명</th>
										<th>신청일</th>
										<th>검사완료일</th>
										<th>진단명</th>
										<!-- <th>검사구분</th> -->
										<th>검사비</th>
										<th>입금액</th>
										<th>납부</th>
									</tr>
								</thead>
								<tbody id="listBody">
									<c:forEach var="item" items="${rceptList }" varStatus="status">
										<tr>
											<td>${status.index+1 }</td>
											<td>${item.hospNm }</td>
											<td>${item.rqstDt }</td>
											<td>${item.finishDt }</td>
											<td>${item.diagCdNm }</td>
											<td class="txtr"><fmt:formatNumber value="${item.price }" pattern="#,###"/></td>
											<td class="txtr">
												<c:if test="${item.payStat == '02' }">
													<fmt:formatNumber value="${item.price }" pattern="#,###"/>
												</c:if>
												<c:if test="${item.payStat == '01' }">
													0
												</c:if>
											</td>
											<td>
												<c:if test="${item.payStat == '02' }">
													<div class="clearfix">
														<div class="icheck-primary d-inline">
															<input type="checkbox" disabled id="checkboxDanger${status.index+1 }">
															<label for="checkboxDanger${status.index+1 }"></label>
														</div>
													</div>
												</c:if>
												<c:if test="${item.payStat == '01' }">
													<div class="clearfix">
														<div class="icheck-primary d-inline">
															<input type="checkbox" id="checkboxDanger${status.index+1 }">
															<label for="checkboxDanger${status.index+1 }"></label>
														</div>
													</div>
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->

					<div class="card">
						<div class="card-header">
							<div class="row">
								<div class="col-sm-2" style="padding-top:30px;min-width:150px;">
									<h5>* 정산 내역  </h5>
								</div>
							</div>
						</div>
						<!-- /.card-header -->
						<div class="card-body table-responsive">
							<table id="example3" class="table table-bordered text-nowrap">
								<thead>
									<tr>
										<th>신청건수</th>
										<th>검사비용 합계(원)</th>
										<th>입금액합계(원)</th>
										<th>정산액</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${rceptList }" varStatus="status">
										<tr>
											<td>${status.index+1 }</td>
											<td><fmt:formatNumber value="${item.price }" pattern="#,###"/></td>
											<td><fmt:formatNumber value="${item.price }" pattern="#,###"/></td>
											<td><fmt:formatNumber value="${item.price }" pattern="#,###"/></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->

				</div>
				<!-- /.row -->
			</div>
			 <!-- /.col -->
		</div><!-- /.container-fluid -->
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
		<input type="hidden" name="rqstNo"/>
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

<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>

<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Customizing Js -->
<script src="resources/js/common.js"></script>

<!-- Page specific script -->
<script>
	//Date picker
	$('#searchStrtDt').datetimepicker({
		format: 'YYYY.MM.DD'
	});

	//Date picker
	$('#searchFnshDt').datetimepicker({
		format: 'YYYY.MM.DD'
	});


	$(function () {
		$('#example2').DataTable({
			"paging": true,
			"lengthChange": false,
			"ordering": true,
			"filter" : false
		});

		$('#example3').DataTable({
			"paging": false,
			"lengthChange": false,
			"ordering": false,
			"filter" : false
		});

		$('.searchBtn').on('click',function(){
			var sdata = {
					searchStrtDt : $('#strtDt').val(),
					searchFnshDt : $('#fnshDt').val(),
					searchStr : $('#searchStr').val()
			}

			$.ajax({
				url : "selectPaymentList",
				data : sdata,
				type : "POST",
				dataType : "JSON",
				success : function(data){
					var table = $("#example2").DataTable();
					table.destroy();

					$("#example2").DataTable({
						"data" : data,
						"paging": true,
						"lengthChange": false,
						"ordering": true,
						"filter" : false,
						'columnDefs': [{
					        'targets': 0,
					        'className': 'dt-body-center',
					        'render': function (data, type, full, meta){
					            return (meta.row+1);
					        }
					    }],
					    "columns" : [
					        {"data": "hospNo"},
							{"data": "hospNm"},
					        {"data": "rqstDt"},
					        {"data": "finishDt"},
					        {"data": "diagCdNm"},
					        {"data": "price",
								'className': 'txtr',
								"render": function(data){
									return $.gfn_setComma(data);
								}
							},
							{"data": "payedPrice",
								'className': 'txtr',
								"render": function(data){
									return $.gfn_setComma(data);
								}
							},
							{"data": "payStat",
								"render": function(data, type, row, meta){
									if(data === '01'){
				                        data = '<div class="clearfix">';
				                        data += '			<div class="icheck-primary d-inline">';
				                        data += '				<input type="checkbox" id="checkboxDanger_'+(meta.row+1)+'">';
				                        data += '				<label for="checkboxDanger_'+(meta.row+1)+'"></label>';
				                        data += '			</div>';
				                        data += '		</div>';
				                    }else {
				                        data = '<div class="clearfix">';
				                        data += '			<div class="icheck-primary d-inline">';
				                        data += '				<input type="checkbox" disabled checked id="checkboxDanger_'+(meta.row+1)+'">';
				                        data += '				<label for="checkboxDanger_'+(meta.row+1)+'"></label>';
				                        data += '			</div>';
				                        data += '		</div>';
				                    }
					                    return data;
				                 }
							}
						]
					});
				}
			});
		});

	});


</script>
</body>
</html>

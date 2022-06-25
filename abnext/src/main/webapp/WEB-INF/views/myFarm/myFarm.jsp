<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<!-- Select2 -->
	<link rel="stylesheet" href="resources/plugins/select2/css/select2.min.css">
	<link rel="stylesheet" href="resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
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
						<h1>myFarm</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">myFarm</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
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
						<div class="small-box bg-info">
							<div class="inner">
								<h3>신청</h3>
								<p>REQUEST</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="javascript:void(0)" onclick="getList('a1')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01ReqCnt">${ak01Yeardata.reqCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-success">
							<div class="inner">
								<h3>접수</h3>
								<p>RECEIPT</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="javascript:void(0)" onclick="getList('a2')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01RecCnt">${ak01Yeardata.recCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>검사중</h3>
								<p>PROCESSING</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="javascript:void(0)" onclick="getList('a3')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01ProcCnt">${ak01Yeardata.procCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>검사완료</h3>
								<p>FINISH</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="javascript:void(0)" onclick="getList('a4')" class="small-box-footer">반려조류 <span style="float:right;margin-right:1rem;"><span id="ak01FinCnt">${ak01Yeardata.finCnt }</span> 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">가금류 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
							<a href="javascript:void(0)" onclick="" class="small-box-footer">돼지 <span style="float:right;margin-right:1rem;">0 건<i class="fas fa-arrow-circle-right" style="margin-left:5px;"></i></span></a>
						</div>
					</div>
					<!-- ./col -->
				</div>

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">*진단비용</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<ul class="pagination pagination-month justify-content-center" style="overflow:scroll;">
									<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="changeYear(1)">«</a></li>
									<li class="page-item Jan">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Jan</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Feb">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Feb</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Mar">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Mar</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Apr">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Apr</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item May">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">May</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Jun">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Jun</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Jul">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Jul</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Aug">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Aug</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Sep">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Sep</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Oct">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Oct</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Nov">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Nov</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item Dec">
										<a class="page-link" href="javascript:void(0)" onclick="selCal(this)">
											<p class="page-month">Dec</p>
											<p class="page-year">2022</p>
										</a>
									</li>
									<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="changeYear(2)">»</a></li>
								</ul>
							</div>
							<div class="card-body table-responsive p-0" style="height: 500px;">
								<table class="table table-bordered table-head-fixed text-nowrap">
									<thead>
										<tr>
											<td class="txtc txtb">날짜</td>
											<td class="txtc txtb">의뢰번호</td>
											<td class="txtc txtb">청구액</td>
											<td class="txtc txtb">납부액</td>
											<td class="txtc txtb">납부예정</td>
										</tr>
									</thead>
									<tbody id="tbodyList">
										<c:set var="rqstTot" value="0"/>
										<c:set var="payedTot" value="0"/>
										<c:set var="payingTot" value="0"/>
										<c:forEach var="item" items="${ak01Monthdata }" varStatus="status">
											<tr>
												<td class="txtc">${item.rqstDt }</td>
												<td class="txtc">${item.rqstNo }</td>
												<td class="txtr"><fmt:formatNumber value="${item.price }" pattern="#,###"/></td>
												<td class="txtr">
													<c:choose>
														<c:when test="${item.payStat == '02' }">
															<fmt:formatNumber value="${item.price }" pattern="#,###"/>
															<c:set var="payedTot" value="${payedTot+ item.price}"/>
														</c:when>
														<c:otherwise>
															0
														</c:otherwise>
													</c:choose>
												</td>
												<td class="txtr">
													<c:choose>
														<c:when test="${item.payStat == '01' }">
															<fmt:formatNumber value="${item.price }" pattern="#,###"/>
															<c:set var="payingTot" value="${payingTot+ item.price}"/>
														</c:when>
														<c:otherwise>
															0
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
											<c:set var="rqstTot" value="${rqstTot+ item.price}"/>
										</c:forEach>
									</tbody>
									<tfoot id="tfootList">
										<tr>
											<td class="txtr" colspan="2">합계</td>
											<td class="txtr"><fmt:formatNumber value="${rqstTot }" pattern="#,###"/></td>
											<td class="txtr"><fmt:formatNumber value="${payedTot }" pattern="#,###"/></td>
											<td class="txtr"><fmt:formatNumber value="${payingTot }" pattern="#,###"/></td>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
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
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
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
<script>

	$(function () {
		bsCustomFileInput.init();

		//Initialize Select2 Elements
		$('.select2').select2()

		//Initialize Select2 Elements
		$('.select2bs4').select2({
			theme: 'bootstrap4'
		})

		//Date picker
		$('#reservationdate').datetimepicker({
			format: 'YYYY'
		});

		var now = new Date();
		$("#searchYear").val(now.getFullYear());
		var nowMonth = now.getMonth()+1;
		var monthTxt = "";
		switch(nowMonth) {
		  case 1 : monthTxt = 'Jan'; break;
		  case 2 : monthTxt = "Feb"; break;
		  case 3 : monthTxt = "Mar"; break;
		  case 4 : monthTxt = "Apr"; break;
		  case 5 : monthTxt = "May"; break;
		  case 6 : monthTxt = "Jun"; break;
		  case 7 : monthTxt = "Jul"; break;
		  case 8 : monthTxt = "Aug"; break;
		  case 9 : monthTxt = "Sep"; break;
		  case 10 : monthTxt = "Oct"; break;
		  case 11 : monthTxt = "Nov"; break;
		  case 12 : monthTxt = "Dec"; break;
		}
		$("."+monthTxt).addClass("active");
	 });

	$('#reservationdate').on('change.datetimepicker', function (e) {
		var searchStr = $("#searchYear").val();
		var data = {
				searchStr : searchStr
		}
		$.ajax({
			url : "getDataYear",
			data : data,
			type : "POST",
			dataType : "JSON",
			success : function(data){
				 $("#ak01ReqCnt").text(data.myFarm.reqCnt);
				 $("#ak01RecCnt").text(data.myFarm.recCnt);
				 $("#ak01ProcCnt").text(data.myFarm.procCnt);
				 $("#ak01FinCnt").text(data.myFarm.finCnt);
			}
		});
	});

	function selCal(target){
		$(".page-item").removeClass("active");
		$(target).parent().addClass("active");

		var month = '';
		switch($(target).find(".page-month").text()) {
		  case 'Jan' : month = "01"; break;
		  case 'Feb' : month = "02"; break;
		  case 'Mar' : month = "03"; break;
		  case 'Apr' : month = "04"; break;
		  case 'May' : month = "05"; break;
		  case 'Jun' : month = "06"; break;
		  case 'Jul' : month = "07"; break;
		  case 'Aug' : month = "08"; break;
		  case 'Sep' : month = "09"; break;
		  case 'Oct' : month = "10"; break;
		  case 'Nov' : month = "11"; break;
		  case 'Dec' : month = "12"; break;
		  default : "01"; break;
		}
		var searchStr = $(target).find(".page-year").text()+month;
		var data = {
				searchStr : searchStr
		}
		$.ajax({
			url : "getDataMonth",
			data : data,
			type : "POST",
			dataType : "JSON",
			success : function(data){
				console.log(data);

				var tbodyHtml = '';
				var rqstTot = 0;
				var payedTot = 0;
				var payingTot = 0;

				for(var i=0; i<data.list.length; i++){
					var item = data.list[i];
					var payedPrice = 0;
					var payingPrice = 0;
					if(item.payStat == '02') {
						payedPrice = item.price;
						payedTot += Number(item.price);
					}else {
						payingPrice = item.price;
						payingTot += Number(item.price);
					}
					rqstTot += Number(item.price);

					tbodyHtml += '<tr>';
					tbodyHtml += '	<td class="txtc">'+item.rqstDt+'</td>';
					tbodyHtml += '	<td class="txtc">'+item.rqstNo+'</td>';
					tbodyHtml += '	<td class="txtr">'+$.gfn_setComma(item.price)+'</td>';
					tbodyHtml += '	<td class="txtr">'+$.gfn_setComma(payedPrice)+'</td>';
					tbodyHtml += '	<td class="txtr">'+$.gfn_setComma(payingPrice)+'</td>';
					tbodyHtml += '</tr>';
				}

				$("#tbodyList").empty();
				$("#tbodyList").append(tbodyHtml);
				$("#tfootList").empty();

				if(data.list.length > 0){
					var tfootHtml = '<tr>';
					tfootHtml += '	<td class="txtr" colspan="2">합계</td>';
					tfootHtml += '	<td class="txtr">'+$.gfn_setComma(rqstTot)+'</td>';
					tfootHtml += '	<td class="txtr">'+$.gfn_setComma(payedTot)+'</td>';
					tfootHtml += '	<td class="txtr">'+$.gfn_setComma(payingTot)+'</td>';
					tfootHtml += '</tr>';
					$("#tfootList").html(tfootHtml);
				}else {
					var noData = '<tr><td class="txtc" colspan="5">데이터가 없습니다.</td></tr>';
					$("#tfootList").html(noData);
				}
			}
		});
	}

	function changeYear(type){
		$(".page-item").removeClass("active");
		if(type == 1){
			$(".pagination-month").find(".page-year").each(function(){
				$(this).text(parseInt($(this).text())-1);
			});
		}else {
			$(".pagination-month").find(".page-year").each(function(){
				$(this).text(parseInt($(this).text())+1);
			});
		}
	}

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

</script>
</body>
</html>

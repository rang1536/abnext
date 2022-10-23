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
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="resources/plugins/select2/css/select2.min.css">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="resources/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
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
						<h1><b>월별 검사통계</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>월별 검사통계</b></li>
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
						<h3 class="card-title"><b>월별 검사통계 Chart</b></h3>

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
						<div class="row">
							<div class="col-sm-9"></div>
							<div class="col-sm-3">
								<div class="form-group">
									<div class="input-group">
										<select name="stDt" id="stDt" class="form-control-sm">
											<option value="2022">2022</option>
										</select>&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="btn-group">
	                  						<button type="button" class="searchBtn btn-sm btn-primary" style="max-width:100px;min-width:82px;"><i class="fa fa-search"></i> 조회</button>
                  						</div>
									</div>
								</div>
							</div>
						</div>

						<div class="chart">
							<canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

				<div class="card">
					<div class="card-header" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>일자별 검사통계</b></h3>

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
						<div class="row">
							<div class="col-sm-10"></div>
							<div class="col-sm-2">
								<div class="form-group">
									<div class="input-group">
										<div class="btn-group">
	                  						<button type="button" class="excelBtn btn-sm btn-success" onclick="excelDown();" style="max-width:100px;min-width:82px;"><i class="fa fa-copy"></i> EXCEL</button>
                  						</div>
									</div>
								</div>
							</div>
						</div>

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
<!-- ChartJS -->
<script src="resources/plugins/chart.js/Chart.min.js"></script>
<!-- jsGrid -->
<script src="resources/plugins/jsgrid/demos/db.js"></script>
<script src="resources/plugins/jsgrid/jsgrid.min.js"></script>

<script src="resources/js/common.js"></script>

<script>

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		//년도세팅
		$('#stDt').empty();
		var nowYy = new Date().getFullYear();
		$('#stDt').append('<option value="'+nowYy+'" selected>'+nowYy+'</option>');

		for(var i=0; i<9; i++){
			nowYy = nowYy-1;
			$('#stDt').append('<option value="'+nowYy+'">'+nowYy+'</option>');
		}

		getData();
    });

	$(document).on('click', '.searchBtn', function(){
		getData();
	})

	function getData(){
		$.ajax({
			url : 'basicChartList3',
			dataType : 'json',
			type : 'post',
			data : {'stDt':$('#stDt').val()},
			success:function(data){
				//console.log(data);
				setGrid(data.dayData);
				setChartData(data.monthData);
			}
		})
	}

	function setGrid(data){
		$("#jsGrid1").jsGrid({
	        height: "auto",
	        width: "100%",
	        sorting: true,
	        paging: true,
			data: data,
	        fields: [
	            { name: "rqstDt",   type: "text", 	width: 100, title:"일자", 	align: "center"},
	            { name: "sample1", 	type: "number", width: 100, title:"PBFD", 	align: "center"},
	            { name: "sample2", 	type: "number", width: 100, title:"APV", 	align: "center"},
	            { name: "sample3", 	type: "number", width: 100, title:"PDD", 	align: "center"},
	            { name: "sample4", 	type: "number", width: 100, title:"chlamydiasis", 	align: "center"},
	            { name: "sample5", 	type: "number", width: 100, title:"성감별PCR", 	align: "center"},
	            { name: "sample6", 	type: "number", width: 100, title:"분변검사", 	align: "center"},
	            { name: "sample7", 	type: "number", width: 100, title:"기타", 	align: "center"},
	            { name: "total", 	type: "number", width: 100, title:"합계", 	align: "center", background:"#ddd"}
	        ]
	    });
	}


	function excelDown(){
		$("#jsGrid1").table2excel({
			exclude : ".excludeThisClass",
			name : "월별 검사통계",
			filename : "월별 검사통계",
			fileext : ".xlsx",
			exclude_img : true,
			exclude_links : true,
			exclude_inputs : true        
		});    
	}


	//-------------
    //- BAR CHART -
    //-------------
    function setChartData(data){
		var areaChartData = '';

		// x축값 구하기
		var xArr = new Array();
		var monList = new Date().getMonth()+1;

		// y축값 구하기
		var yArr = new Array();
		var yArrDetail ='';

		for(var j=0; j < 6; j++){
			yArrDetail = new Array();

			for(var i=0; i < monList; i++){
				if(j == 0) yArrDetail.push(data[i].sample2);
				if(j == 1) yArrDetail.push(data[i].sample1);
				if(j == 2) yArrDetail.push(data[i].sample3);
				if(j == 3) yArrDetail.push(data[i].sample4);
				if(j == 4) yArrDetail.push(data[i].sample5+data[i].sample6+data[i].sample7);
				//if(j == 5) yArrDetail.push(data[i].sample6);
				//if(j == 6) yArrDetail.push(data[i].sample7);
				if(j == 5) yArrDetail.push(data[i].total);

			}
			yArr[j]= yArrDetail;
		}

		for(var i=1; i <= monList; i++){
			xArr.push(i+'월');
		}


		var labels = ['APV', 'PBFD', 'PDD', 'chlamydiasis', '기타', '합계'];
		var backgroundColors = ['rgba(60,141,188,0.9)', 'rgba(210, 214, 222, 1)', '#476600', '#FAED7D', '#030066', '#F2CB61'];
		var pointColors = ['#3b8bba', 'rgba(210, 214, 222, 1)', '#476600', 'rgba(210, 214, 222, 1)', '#3b8bba', '#F2CB61'];
		var pointStrokeColors = ['rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)'];
		var pointHighlightFills = ['fff', 'fff', 'fff', 'fff', 'fff', 'fff', 'fff', 'fff'];
		var pointHighlightStrokes = ['rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)', 'rgba(60,141,188,1)'];

		var dataSets= new Array();
		var dataSet = '';
		for(var i=0; i < 6; i++){
			dataSet = {
				label               : labels[i],
				backgroundColor     : backgroundColors[i],
				borderColor         : backgroundColors[i],
				pointRadius          : false,
				pointColor          : pointColors[i],
				pointStrokeColor    : pointStrokeColors[i],
				pointHighlightFill  : '#fff',
				pointHighlightStroke: pointHighlightStrokes[i],
				data                : yArr[i]
			}

			dataSets.push(dataSet);
		}

		//console.log(dataSets);
		var areaChartData = {
			labels  :	xArr,
			datasets: dataSets
		}

		//console.log(areaChartData);

	    var barChartCanvas = $('#barChart').get(0).getContext('2d')
	    var barChartData = $.extend(true, {}, areaChartData)
	    var temp0 = areaChartData.datasets[0]
	    var temp1 = areaChartData.datasets[1]
	    barChartData.datasets[0] = temp1
	    barChartData.datasets[1] = temp0

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



</script>
</html>
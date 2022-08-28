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
						<h1><b>월별 진단명별통계</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>월별 진단명별통계</b></li>
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
						<h3 class="card-title"><b>월별 진단명별 Chart</b></h3>

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
							<canvas id="stackedBarChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

				<div class="card">
					<div class="card-header" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>월별 진단명별 Data</b></h3>

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

    function getData(){
		$.ajax({
			url : 'basicChartList5',
			dataType : 'json',
			type : 'post',
			data : {'stDt':$('#stDt').val()},
			success:function(data){
				//console.log(data);

				toastr.success($('#stDt').val()+ '년도 데이터가 조회 되었습니다,');
				setGrid(data);
				setChartData(data);
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
	            { name: "diagNm",   type: "text", 	width: 150, title:"질병명", 	align: "center"},
	            { name: "sample1", 	type: "number", width: 60, 	title:"1월", 	align: "center"},
	            { name: "sample2", 	type: "number", width: 60, 	title:"2월", 	align: "center"},
	            { name: "sample3", 	type: "number", width: 60, 	title:"3월", 	align: "center"},
	            { name: "sample4", 	type: "number", width: 60, 	title:"4월", 	align: "center"},
	            { name: "sample5", 	type: "number", width: 60, 	title:"5월", 	align: "center"},
	            { name: "sample6", 	type: "number", width: 60, 	title:"6월", 	align: "center"},
	            { name: "sample7", 	type: "number", width: 60, 	title:"7월", 	align: "center"},
	            { name: "sample8", 	type: "number", width: 60, 	title:"8월", 	align: "center"},
	            { name: "sample9", 	type: "number", width: 60, 	title:"9월", 	align: "center"},
	            { name: "sample10", type: "number", width: 60, 	title:"10월", 	align: "center"},
	            { name: "sample11", type: "number", width: 60, 	title:"11월", 	align: "center"},
	            { name: "sample12", type: "number", width: 60, 	title:"12월", 	align: "center"}

	        ]
	    });
	}


	function excelDown(){
		$("#jsGrid1").table2excel({
			exclude : ".excludeThisClass",
			name : "월별 진단명별 통계",
			filename : "월별 진단명별 통계",
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
		for(var i=0; i < 12; i++){
			xArr[i] = (i+1)+'월';
		}


		// y축값 구하기
		var yArr = new Array();
		var yArrDetail ='';

		var labels = new Array()
		for(var i=0; i < 5; i++){
			yArrDetail = new Array();

			if(i < 4){
				yArrDetail.push(data[i].sample1);
				yArrDetail.push(data[i].sample2);
				yArrDetail.push(data[i].sample3);
				yArrDetail.push(data[i].sample4);
				yArrDetail.push(data[i].sample5);
				yArrDetail.push(data[i].sample6);
				yArrDetail.push(data[i].sample7);
				yArrDetail.push(data[i].sample8);
				yArrDetail.push(data[i].sample9);
				yArrDetail.push(data[i].sample10);
				yArrDetail.push(data[i].sample11);
				yArrDetail.push(data[i].sample12);
			}else if(i == 4){
				var sam1=0, sam2=0, sam3=0, sam4=0, sam5=0, sam6=0, sam7=0, sam8=0, sam9=0, sam10=0, sam11=0, sam12=0;
				for(var j=4; j<data.length; j++){
					sam1 += data[j].sample1;
					sam2 += data[j].sample2;
					sam3 += data[j].sample3;
					sam4 += data[j].sample4;
					sam5 += data[j].sample5;
					sam6 += data[j].sample6;
					sam7 += data[j].sample7;
					sam8 += data[j].sample8;
					sam9 += data[j].sample9;
					sam10 += data[j].sample10;
					sam11 += data[j].sample11;
					sam12 += data[j].sample12;
				}

				yArrDetail.push(sam1);
				yArrDetail.push(sam2);
				yArrDetail.push(sam3);
				yArrDetail.push(sam4);
				yArrDetail.push(sam5);
				yArrDetail.push(sam6);
				yArrDetail.push(sam7);
				yArrDetail.push(sam8);
				yArrDetail.push(sam9);
				yArrDetail.push(sam10);
				yArrDetail.push(sam11);
				yArrDetail.push(sam12);
			}

			yArr[i]= yArrDetail;

			if(i == 4){
				labels[i] = '기타';
			}else{
				labels[i] = data[i].diagNm;
			}
		}


		var backgroundColors = ['#670000', '#DAD9FF', '#476600', '#FAED7D', '#0100FF' ];
		var pointColors = ['#670000', '#DAD9FF', '#476600', '#FAED7D', '#030066'];
		var pointStrokeColors = ['#670000', '#DAD9FF', '#476600', '#FAED7D', '#030066' ];
		var pointHighlightFills = ['fff', 'fff', 'fff', 'fff', 'fff'];
		var pointHighlightStrokes = ['#670000', '#DAD9FF', '#476600', '#FAED7D', '#030066'];

		var dataSets= new Array();
		var dataSet = '';
		for(var i=0; i <5; i++){
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

		var barChartData = $.extend(true, {}, areaChartData)
	    var stackedBarChartCanvas = $('#stackedBarChart').get(0).getContext('2d')
	    var stackedBarChartData = $.extend(true, {}, barChartData)

	    var stackedBarChartOptions = {
	      responsive              : true,
	      maintainAspectRatio     : false,
	      scales: {
	        xAxes: [{
	          stacked: true,
	        }],
	        yAxes: [{
	          stacked: true
	        }]
	      }
	    }

	    new Chart(stackedBarChartCanvas, {
	      type: 'bar',
	      data: stackedBarChartData,
	      options: stackedBarChartOptions
	    })
	}



</script>
</html>
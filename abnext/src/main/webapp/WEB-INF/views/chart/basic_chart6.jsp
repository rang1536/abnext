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
						<h1><b>혈청검사 통계</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>혈청검사 통계</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
 			<div class="container-fluid">

				<div class="card">
					<div class="card-header" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>혈청검사 통계</b></h3>

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
							<div class="col-sm-12">
								<div class="form-group">
									<div class="input-group">
										<input type="date" class="form-control-sm" name="stDt" id="stDt"/>&nbsp;&nbsp;&nbsp;
										<input type="date" class="form-control-sm" name="endDt" id="endDt"/>&nbsp;&nbsp;&nbsp;
										<div class="btn-group">
	                  						<button type="button" class="searchBtn btn-sm btn-primary" style="max-width:100px;min-width:82px;"><i class="fa fa-search"></i> 조회</button>
	                  						&nbsp;&nbsp;
	                  						<button type="button" class="excelBtn btn-sm btn-success" onclick="excelDown();" style="max-width:100px;min-width:82px;"><i class="fa fa-copy"></i> EXCEL</button>
                  						</div>
									</div>
								</div>
							</div>
						</div>


						<div id="jsGrid1"></div>
					</div>

					<div class="card-footer" style="background-color:#D4F4FA;color:#000000;">
						<div class="row">
							<div class="col-sm-12">

							</div>
						</div>
					</div>

					<!-- /.card-body -->
				</div>
				<!-- /.card -->

				<div class="card sumAvgDiv" style="display:none;">
					<div class="card-header" style="background-color:#D4F4FA;color:#000000;">
						<h3 class="card-title"><b>평균치</b></h3>

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
						<div id="jsGrid2"></div>
					</div>

				</div>

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

<script>

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		getData();

    });

    function getData(){
		$.ajax({
			url : 'basicChartList6',
			dataType : 'json',
			type : 'post',
			data : {'stDt':$('#stDt').val(), 'endDt':$('#endDt').val()},
			success:function(data){

				if(($('#stDt').val() == null || $('#stDt').val() == '') && ($('#endDt').val() == null || $('#endDt').val() == '')){
					toastr.success('전체 데이터가 조회 되었습니다,');
				}else{
					toastr.success($('#stDt').val()+ '~'+$('#endDt').val()+' 기간의 데이터가 조회 되었습니다,');
				}

				setGrid(data);

			}
		})
	}

    var chkRowCnt = 0;
    var update_item ={};

	function setGrid(data){
		$("#jsGrid1").jsGrid({
	        height: "auto",
	        width: "100%",
	        sorting: true,
	        paging: true,
	       	pageSize: 12,
			data: data,
	        fields: [
	        	{ name: "sumChk",   type: "checkbox", 	width: 60, title:"", align: "center"
	        		, itemTemplate: function(value, item) {
	        			return $("<input>").attr("type", "checkbox").attr("checked", value || item.Checked)
	        			.on("change", function() {
	        				item.Checked = $(this).is(":checked");

	        				if(item.Checked){
	        					if(chkRowCnt == 0){
	        						$('.sumAvgDiv').css('display', '');
	        						chkRowCnt++;
		        					addSumRow(item);
		        				}else{
		        					chkRowCnt++;
		        					updateSumRow(item, 'plus');
		        				}
	        				}else{
	        					chkRowCnt--;
	        					updateSumRow(item, 'minus');
	        				}
	        			})
	        		}
	        	},
	            { name: "rqstNo",   type: "text", width: 150, 	title:"의뢰번호", 	align: "center"},
	            { name: "rqstDt",   type: "text", width: 100, 	title:"의뢰일", 	align: "center"},
	            { name: "animNm",   type: "text", width: 100, 	title:"품종", 	align: "center"},
	            { name: "animBirth",type: "text", width: 100, 	title:"생년월일", 	align: "center"},
	            { name: "sample1", 	type: "number", width: 60, 	title:"TP", 	align: "center"},
	            { name: "sample2", 	type: "number", width: 60, 	title:"Alb", 	align: "center"},
	            { name: "sample3", 	type: "number", width: 60, 	title:"Glob", 	align: "center"},
	            { name: "sample4", 	type: "number", width: 60, 	title:"A/G ratio", 	align: "center"},
	            { name: "sample5", 	type: "number", width: 60, 	title:"GLU", 	align: "center"},
	            { name: "sample6", 	type: "number", width: 60, 	title:"AST", 	align: "center"},
	            { name: "sample7", 	type: "number", width: 60, 	title:"CK", 	align: "center"},
	            { name: "sample8", 	type: "number", width: 60, 	title:"CA", 	align: "center"},
	            { name: "sample9", 	type: "number", width: 60, 	title:"PHOS", 	align: "center"},
	            { name: "sample10", type: "number", width: 60, 	title:"Na", 	align: "center"},
	            { name: "sample11", type: "number", width: 60, 	title:"K", 		align: "center"},
	            { name: "sample12", type: "number", width: 60, 	title:"Na/K ratio", 	align: "center"},
	            { name: "sample13", type: "number", width: 60, 	title:"BA", 	align: "center"},
	            { name: "sample14", type: "number", width: 60, 	title:"UA", 	align: "center"}
	        ]
	    });

		var data2 = { "sumTitle":'평균치'
			   ,"sample1" : 0
			   ,"sample2" : 0
			   ,"sample3" : 0
			   ,"sample4" : 0
			   ,"sample5" : 0
			   ,"sample6" : 0
			   ,"sample7" : 0
			   ,"sample8" : 0
			   ,"sample9" : 0
			   ,"sample10" : 0
			   ,"sample11" : 0
			   ,"sample12" : 0
			   ,"sample13" : 0
			   ,"sample14" : 0
		}

		var dataArr = new Array();
		dataArr.push(data2);

		setGrid2(dataArr);
	}

	function setGrid2(dataArr){

		$("#jsGrid2").jsGrid({
			 height: "auto",
			 width: "100%",
			 sorting: true,
			 paging: true,
			 data: dataArr,
			 fields: [
			 	{ name: "sumTitle",   type: "text", width: 510, title:"-", align: "center"},
			     { name: "sample1", 	type: "number", width: 60, 	title:"TP", 	align: "center"},
			     { name: "sample2", 	type: "number", width: 60, 	title:"Alb", 	align: "center"},
			     { name: "sample3", 	type: "number", width: 60, 	title:"Glob", 	align: "center"},
			     { name: "sample4", 	type: "number", width: 60, 	title:"A/G ratio", 	align: "center"},
			     { name: "sample5", 	type: "number", width: 60, 	title:"GLU", 	align: "center"},
			     { name: "sample6", 	type: "number", width: 60, 	title:"AST", 	align: "center"},
			     { name: "sample7", 	type: "number", width: 60, 	title:"CK", 	align: "center"},
			     { name: "sample8", 	type: "number", width: 60, 	title:"CA", 	align: "center"},
			     { name: "sample9", 	type: "number", width: 60, 	title:"PHOS", 	align: "center"},
			     { name: "sample10", type: "number", width: 60, 	title:"Na", 	align: "center"},
			     { name: "sample11", type: "number", width: 60, 	title:"K", 		align: "center"},
			     { name: "sample12", type: "number", width: 60, 	title:"Na/K ratio", 	align: "center"},
			     { name: "sample13", type: "number", width: 60, 	title:"BA", 	align: "center"},
			     { name: "sample14", type: "number", width: 60, 	title:"UA", 	align: "center"}
			 ]
		});
	}

	//버튼 클릭시 grid에 데이터를 추가
	function addSumRow(item) {
		var insert_item = {};
		var dataArr = new Array();
		//데이터를 추가를 위해서 json object 생성
		insert_item.sumTitle = '평균값';
		insert_item.sample1 = (item.sample1/chkRowCnt).toFixed(2);
		insert_item.sample2 = (item.sample2/chkRowCnt).toFixed(2);
		insert_item.sample3 = (item.sample3/chkRowCnt).toFixed(2);
		insert_item.sample4 = (item.sample4/chkRowCnt).toFixed(2);
		insert_item.sample5 = (item.sample5/chkRowCnt).toFixed(2);
		insert_item.sample6 = (item.sample6/chkRowCnt).toFixed(2);
		insert_item.sample7 = (item.sample7/chkRowCnt).toFixed(2);
		insert_item.sample8 = (item.sample8/chkRowCnt).toFixed(2);
		insert_item.sample9 = (item.sample9/chkRowCnt).toFixed(2);
		insert_item.sample10 = (item.sample10/chkRowCnt).toFixed(2);
		insert_item.sample11 = (item.sample11/chkRowCnt).toFixed(2);
		insert_item.sample12 = (item.sample12/chkRowCnt).toFixed(2);
		insert_item.sample13 = (item.sample13/chkRowCnt).toFixed(2);
		insert_item.sample14 = (item.sample14/chkRowCnt).toFixed(2);

		dataArr.push(insert_item);
		//수정을 위한 세팅 추가
		update_item.sumTitle = '평균값';
		update_item.sample1 = item.sample1;
		update_item.sample2 = item.sample2;
		update_item.sample3 = item.sample3;
		update_item.sample4 = item.sample4;
		update_item.sample5 = item.sample5;
		update_item.sample6 = item.sample6;
		update_item.sample7 = item.sample7;
		update_item.sample8 = item.sample8;
		update_item.sample9 = item.sample9;
		update_item.sample10 = item.sample10;
		update_item.sample11 = item.sample11;
		update_item.sample12 = item.sample12;
		update_item.sample13 = item.sample13;
		update_item.sample14 = item.sample14;

		setGrid2(dataArr);

	};


	function updateSumRow(item, type) {
		var insert_item = {};
		var dataArr = new Array();

		insert_item.sumTitle = '평균값';

		if(type == 'plus'){

			update_item.sample1 = update_item.sample1 + item.sample1;
			update_item.sample2 = update_item.sample2 + item.sample2;
			update_item.sample3 = update_item.sample3 + item.sample3;
			update_item.sample4 = update_item.sample4 + item.sample4;
			update_item.sample5 = update_item.sample5 + item.sample5;
			update_item.sample6 = update_item.sample6 + item.sample6;
			update_item.sample7 = update_item.sample7 + item.sample7;
			update_item.sample8 = update_item.sample8 + item.sample8;
			update_item.sample9 = update_item.sample9 + item.sample9;
			update_item.sample10 = update_item.sample10 + item.sample10;
			update_item.sample11 = update_item.sample11 + item.sample11;
			update_item.sample12 = update_item.sample12 + item.sample12;
			update_item.sample13 = update_item.sample13 + item.sample13;
			update_item.sample14 = update_item.sample14 + item.sample14;

		}else{

			update_item.sample1 = update_item.sample1 - item.sample1;
			update_item.sample2 = update_item.sample2 - item.sample2;
			update_item.sample3 = update_item.sample3 - item.sample3;
			update_item.sample4 = update_item.sample4 - item.sample4;
			update_item.sample5 = update_item.sample5 - item.sample5;
			update_item.sample6 = update_item.sample6 - item.sample6;
			update_item.sample7 = update_item.sample7 - item.sample7;
			update_item.sample8 = update_item.sample8 - item.sample8;
			update_item.sample9 = update_item.sample9 - item.sample9;
			update_item.sample10 = update_item.sample10 - item.sample10;
			update_item.sample11 = update_item.sample11 - item.sample11;
			update_item.sample12 = update_item.sample12 - item.sample12;
			update_item.sample13 = update_item.sample13 - item.sample13;
			update_item.sample14 = update_item.sample14 - item.sample14;
		}

		if(chkRowCnt == 0){
			insert_item.sample1 = 0.00;
			insert_item.sample2 = 0.00;
			insert_item.sample3 = 0.00;
			insert_item.sample4 = 0.00;
			insert_item.sample5 = 0.00;
			insert_item.sample6 = 0.00;
			insert_item.sample7 = 0.00;
			insert_item.sample8 = 0.00;
			insert_item.sample9 = 0.00;
			insert_item.sample10 = 0.00;
			insert_item.sample11 = 0.00;
			insert_item.sample12 = 0.00;
			insert_item.sample13 = 0.00;
			insert_item.sample14 = 0.00;

		}else{
			insert_item.sample1 = (update_item.sample1/chkRowCnt).toFixed(2);
			insert_item.sample2 = (update_item.sample2/chkRowCnt).toFixed(2);
			insert_item.sample3 = (update_item.sample3/chkRowCnt).toFixed(2);
			insert_item.sample4 = (update_item.sample4/chkRowCnt).toFixed(2);
			insert_item.sample5 = (update_item.sample5/chkRowCnt).toFixed(2);
			insert_item.sample6 = (update_item.sample6/chkRowCnt).toFixed(2);
			insert_item.sample7 = (update_item.sample7/chkRowCnt).toFixed(2);
			insert_item.sample8 = (update_item.sample8/chkRowCnt).toFixed(2);
			insert_item.sample9 = (update_item.sample9/chkRowCnt).toFixed(2);
			insert_item.sample10 = (update_item.sample10/chkRowCnt).toFixed(2);
			insert_item.sample11 = (update_item.sample11/chkRowCnt).toFixed(2);
			insert_item.sample12 = (update_item.sample12/chkRowCnt).toFixed(2);
			insert_item.sample13 = (update_item.sample13/chkRowCnt).toFixed(2);
			insert_item.sample14 = (update_item.sample14/chkRowCnt).toFixed(2);
		}

		dataArr.push(insert_item);
		setGrid2(dataArr);

	};


	function excelDown(){
		$("#jsGrid1").table2excel({
			exclude : ".excludeThisClass",
			name : "혈청검사 통계",
			filename : "혈청검사 통계",
			fileext : ".xlsx",
			exclude_img : true,
			exclude_links : true,
			exclude_inputs : true        
		});    
	}


	$(document).on('click', '.searchBtn', function(){
		getData();
	});


</script>
</html>
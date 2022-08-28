<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  <link rel="stylesheet" href="resources//plugins/toastr/toastr.min.css">
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
						<h1><b>기관(병원)관리</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>기관(병원)관리</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
 			<div class="container-fluid">
 				<div class="invoice p-3 mb-3">
					<!-- Table row -->
					<div class="row">
						<div class="col-12">
							<div class="card card-primary card-outline">
								<!-- /.card-header -->
								<div class="card-header">
					              <h3 class="card-title"><b>기관목록</b></h3>
					            </div>
								<!-- /.card-header -->

								<div class="card-body">
									<div id="jsGrid1"></div>
									<%-- <table id="example2" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th><input type="checkbox" id="allCheck"/></th>
												<th>기관명</th>
												<th>대표자</th>
												<th>책임수의사</th>
												<th>지역</th>
												<th>지역2</th>
												<th>정산타입</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${hospList }" varStatus="status">
												<tr>
													<td>
														<input type="checkbox" name="hospNo" value="${item.hospNo }"/>
													</td>
													<td ondblclick="fn_modifyHosp('${item.hospNo }')">${item.hospNm }</td>
													<td>${item.hospCeo }</td>
													<td>${item.hospFirstDoctorNm }</td>
													<td>${item.hospSidoNm}</td>
													<td>${item.hospSigunguNm }</td>
													<td>${item.payGb }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table> --%>
								</div> <!-- /.card-body -->

								<!-- 수정페이지 키값 세팅 폼-->
								<form id="modifyHospForm">
									<input type="hidden" id="modifyHospNo" name="modifyHospNo" />
								</form>

								<div class="card-footer">
									<button type="button" id="delHospBtn" class="btn btn-sm btn-danger" onclick="fn_delHospital();">삭제</button>
									<button type="button" id="addHospBtn" class="btn btn-sm btn-success btn-flat" style="float:right;">기관병원등록</button>
								</div>
							</div> <!-- /.card -->
						</div> <!-- /.col-12 -->
					</div>  <!-- /.row -->
				</div> <!-- invoice -->

 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

	<c:import url="../layer/layout_footer.jsp"></c:import>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper  -->

<c:import url="../popup/pop_addHospital.jsp"></c:import>
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
<script src="resources/js/common.js"></script>

<script>

	$(function () {
		getData();
    });


	function getData(){
		$.ajax({
			url : 'searchCompany',
			dataType : 'json',
			type : 'post',
			data : {'companyGb': 'hospital', 'companyNm': ''},
			success:function(data){
				setGrid(data.hospList);
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
	        rowClick : function(args){
	        	fn_modifyHosp(args.item.hospNo);
	        },
	        fields: [
	            { name: "hospNm", 				type: "text", 	width: 140, title:"기관명", 	align: "center"},
	            { name: "hospCeo",   			type: "text", 	width: 80, title:"대표자", 	align: "center"},
	            { name: "hospFirstDoctorNm",	type: "text", 	width: 80, title:"책임수의사",	align: "center"},
	            { name: "hospTel", 				type: "text", 	width: 80, 	title:"전화번호", 	align: "center",
	            	itemTemplate: function(value, item) {
		              	var retText = value;
		              	if(retText == null || retText == ''){
	            			 retText = item.hospHp;
	            		 }else{

	            		 }

	            		return retText;
		            }
	            },
	            { name: "hospSidoNm", 			type: "text", 	width: 80, 	title:"시도", 	align: "center"},
	            { name: "hospSigunguNm", 		type: "text", 	width: 100, title:"시군구", 	align: "center"},
	            { name: "payGb", 				type: "text", 	width: 100, title:"정산구분", 	align: "center"}
	        ]
	    });
	}


	/*
	* 회원등록 페이지 연결
	*/
	$('#addHospBtn').on('click', function(){
		$('#popAddHosp').modal();
	})


	/*
	* 전체체크/헤제
	*/
	$('#allCheck').on('click', function(){
		if($('#allCheck').is(':checked')){
			$('input:checkbox').prop('checked', true);
		}else{
			$('input:checkbox').prop('checked', false);
		}
	})


	/*
	* 병원삭제
	*/
	function fn_delHospital(){
		var arr = new Array();

		$('input:checkbox[name="hospNo"]').each(function(){
			if($(this).is(':checked')){
				arr.push($(this).val());
			}
		})

		$.ajax({
			url : 'delHospCtrl',
			dataType : 'json',
			type : 'post',
			data : {'hospList':arr},
			success : function(data){
				if(data.result == 'succ'){
					alert('삭제되었습니다');
					window.location.reload(true);
				}
			}
		})
	}

	//기관정보수정
	function fn_modifyHosp(hospNo){
		$('#modifyHospNo').val(hospNo);

		$('#modifyHospForm').prop('action', 'modifyHospital');
		$('#modifyHospForm').submit();
	}


</script>
</html>
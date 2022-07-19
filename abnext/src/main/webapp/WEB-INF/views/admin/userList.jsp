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
						<h1><b>회원관리</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>회원관리</b></li>
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
							<div class="card card-primary card-outline"">
								<!-- /.card-header -->
								<div class="card-header">
					              <h3 class="card-title"><b>회원목록</b></h3>
					            </div>
								<!-- /.card-header -->

								<div class="card-body">
									<div id="jsGrid1"></div>
									<%-- <table id="example2" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th><input type="checkbox" id="allCheck"/></th>
												<th>구분</th>
												<th>ID</th>
												<th>이름</th>
												<th>전화</th>
												<th>휴대폰</th>
												<th>지역</th>
												<th>소속</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${userList }" varStatus="status">
												<tr>
													<td>
														<input type="checkbox" />
													</td>
													<td  onclick="fn_modifyUser('${item.userNo}');">
														<c:if test="${item.userLev eq '1'}">
															일반회원
														</c:if>
														<c:if test="${item.userLev eq '2'}">
															수의사
														</c:if>
														<c:if test="${item.userLev eq '3'}">
															기관(병원)
														</c:if>
														<c:if test="${item.userLev eq '4'}">
															농장
														</c:if>
														<c:if test="${item.userLev eq '5'}">
															관리자
														</c:if>
													</td>
													<td onclick="fn_modifyUser('${item.userNo}');">${item.userId }</td>
													<td onclick="fn_modifyUser('${item.userNo}');">
														<b>${item.userNm }</b>
														<c:if test="${item.userStat eq 'F002-01'}">(신청)</c:if>
														<c:if test="${item.userStat eq 'F002-02'}">(승인)</c:if>
														<c:if test="${item.userStat eq 'F002-03'}">(정지)</c:if>
													</td>
													<td>${item.userTel }</td>
													<td>${item.userHp}</td>
													<td>${item.sidoNm}</td>
													<td>${item.hospNm }${item.farmNm }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table> --%>
								</div> <!-- /.card-body -->

								<!-- 수정페이지 키값 세팅 폼-->
								<form id="modifyUserForm">
									<input type="hidden" id="modifyUserNo" name="modifyUserNo" />
								</form>

								<div class="card-footer">
									<button type="button" id="addUserBtn" class="btn btn-sm btn-primary btn-flat" style="float:right;">회원등록</button>
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
<script src="resources/js/common.js"></script>

<script>

	$(function () {
		getData();
    });


	function getData(){
		$.ajax({
			url : 'searchUserCtrl',
			dataType : 'json',
			type : 'post',
			success:function(data){
				setGrid(data.list);
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
	        deleteConfirm : function(item){
				console.log(item);
	        },
	        rowClick : function(args){
	        	fn_modifyUser(args.item.userNo);
	        },
	        fields: [
	            { name: "userLev", 		type: "text", 	width: 80, 	title:"구분", 	align: "center",
	            	  itemTemplate: function(value, item) {
		              	var retText = '-';
	            		if(value == '1') retText = '일반회원';
	            		else if(value == '2') retText = '연구원';
	            		else if(value == '3') retText = '접수자';
	            		else if(value == '4') retText = '책임자';

	            		return retText;
		              }
	            },
	            { name: "userId",   	type: "text", 	width: 120, title:"아이디", 	align: "center"},
	            { name: "userNm", 		type: "text", 	width: 80, 	title:"이름", 	align: "center"},
	            { name: "userStat", 	type: "text", 	width: 80, 	title:"상태", 	align: "center",
	            	  itemTemplate: function(value, item) {
		              	var retText = '신청';
	            		if(value == 'F002-02') retText = '승인';
	            		else if(value == 'F002-03') retText = '사용정지';

	            		return retText;
		              }
	            },
	            { name: "userTel", 		type: "text", 	width: 100, title:"전화번호", 	align: "center"},
	            { name: "userHp", 		type: "text", 	width: 100, title:"핸드폰", 	align: "center"},
	            { name: "sidoNm", 		type: "text", 	width: 110, title:"시도", 	align: "center"},
	            { name: "hospNm", 		type: "text", 	width: 140, title:"소속", 	align: "center",
	            	 itemTemplate: function(value, item) {
	            		 var retText = value;

	            		 if(retText == null || retText == ''){
	            			 retText = item.farmNm;
	            		 }

	            		 return retText;
		             }
	            }
	        ]
	    });
	}

	/*
	* 회원등록 페이지 연결
	*/
	$('#addUserBtn').on('click', function(){
		location.href = 'addUserPage';
	})


	/*
	* 회원삭제
	*/


	/*
	* 회원정보수정페이지 연결
	*/
	function fn_modifyUser(userNo){
		$('#modifyUserNo').val(userNo);

		$('#modifyUserForm').prop('action', 'modifyUser');
		$('#modifyUserForm').submit();
	}

</script>
</html>
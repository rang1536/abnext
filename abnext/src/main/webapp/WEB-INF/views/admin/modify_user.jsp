<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <!-- DataTables -->
  <link rel="stylesheet" href="resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


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
						<h1><b>회원관리</b><code>&nbsp;(정보수정)</code></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><a href="userList"><b>회원관리</b></a></li>
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

		          	<!-- 소속정보 -->
		            <div class="card">
		              <div class="card-header" style="background-color:#002266;">
		                <h5 class="card-title"><b style="color:#FFFFFF;">소속정보</b></h5>

		              </div>
		              <!-- /.card-header 본문-->
		              <div class="card-body" style="font-size:13px;">
						<div id="hospInfoDiv" <c:if test="${user.hospNo eq null or user.hospNo eq ''}"> style="display:none;" </c:if>>
							<div class="row">
								<div class="col-sm-6">
									<!-- select -->
									<div class="form-group">
										<label>소속구분</label>
										<select class="custom-select hospInput" name="gubun" id="gubun" disabled>
											<option value="hospital" selected>기관(병원)</option>
										</select>
									</div>
								</div>
			                  	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>기관(병원)명</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-building"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="hospNm" name="hospNm" value="${hosp.hospNm }" readonly>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
					                  <label>대표자</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-building"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="hospCeo" name="hospCeo" value="${hosp.hospCeo }" readonly>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
								</div>
			                  	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>책임수의사</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-building"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="hospFirstDoctorNm" name="hospFirstDoctorNm" value="${hosp.hospFirstDoctorNm }" readonly>
					                  	<input type="hidden" class="form-control hospInput" id="hospFirstDoctor" name="hospFirstDoctor" value="${hosp.hospFirstDoctor }" readonly>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
					                  <label>주소</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-building"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="hospAdr" name="hospAdr" value="${hosp.hospAdr} ${hosp.hospDtlAdr }" readonly>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
								</div>
			                  	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>전화번호</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="hospHp" name="hospHp" value="${fn:substring(hosp.hospHp, 0, 3) }-${fn:substring(hosp.hospHp, 3, 7) }-${fn:substring(hosp.hospHp, 7, 11) }" readonly>

					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>
						</div> <!-- 병원폼 -->
					  </div> <!-- card-body END -->

		              <div class="card-footer">
					  	<button type="button" onclick="fn_openCompanyPop();" class="btn btn-sm btn-primary btn-flat" style="float:right;">소속변경</button>
					  </div>
		            </div>
		            <!-- /.card -->

					<br/>
		            <div class="card">
		              <div class="card-header" style="background-color:#002266;">
		                <h5 class="card-title"><b style="color:#FFFFFF;">사용자정보</b></h5>

		              </div>
		              <!-- /.card-header 본문-->
		              <div class="card-body" style="font-size:13px;">
					  	<!-- 유저정보입력 FORM -->
                   		<form onsubmit="return false" id="userInfoForm" method="post" encType="multipart/form-data">
							<div class="row">
								<div class="col-sm-6">
									<!-- select -->
									<div class="form-group">
										<label>사용자구분</label>
										<select class="custom-select" name="userLev" id="userLev" >
											<option <c:if test="${user.userLev eq '1' }">seleted</c:if> value="1">일반회원</option>
					                        <option <c:if test="${user.userLev eq '2' }">seleted</c:if> value="2">수의사</option>
					                        <option <c:if test="${user.userLev eq '3' }">seleted</c:if> value="3">기관(병원)</option>
					                        <option <c:if test="${user.userLev eq '4' }">seleted</c:if> value="4">농장</option>
					                        <option <c:if test="${user.userLev eq '5' }">seleted</c:if> value="5">관리자</option>
										</select>
									</div>
								</div>
			                  	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>이름</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-building"></i></span>
					                    </div>
					                    <input type="text" class="form-control" id="userNm" name="userNm" value="${user.userNm }" />
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
					                  <label>전화번호</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
					                    </div>
					                    <input type="text" class="form-control" id="userHp" name="userHp" value="${fn:substring(user.userHp, 0, 3) }-${fn:substring(user.userHp, 3, 7) }-${fn:substring(user.userHp, 7, 11) }" />
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
								</div>
			                  	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>이메일</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-envelope"></i></span>
					                    </div>
					                    <input type="text" class="form-control" id="userEmail" name="userEmail" value="${user.userEmail }">
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
					                  <label>아이디</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>
					                    </div>
					                    <input type="text" class="form-control" id="userId" name="userId" value="${user.userId }" readonly>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
								</div>
			                  	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>비밀번호</label>
					                  <div class="input-group">
					                    <input type="password" class="form-control" id="userPass" name="userPass" value="${user.userPass}" readonly>
										<div class="input-group-append">
					                      <button type="button" class="btn btn-danger btn-flat" onclick="fn_passReset('${fn:substring(user.userHp, 7, 11)}')" >초기화</button>
					                    </div>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>

			                </div>
						</form>
					  </div> <!-- card-body END -->
					</div>


					<br/>
		            <div class="card">
		              <div class="card-header" style="background-color:#002266;">
		                <h5 class="card-title"><b style="color:#FFFFFF;">사용자상태 및 권한</b></h5>

		              </div>
		              <!-- /.card-header 본문-->
		              <div class="card-body" style="font-size:13px;">
					  	<div class="row">
							<div class="col-sm-6">
								<!-- select -->
								<div class="form-group">
									<label>승인상태</label>
									<select class="custom-select" name="userStat" id="userStat" >
										<c:forEach var="item" items="${user.userStatList }" varStatus="status">
											<option <c:if test="${item.codeId eq user.userStat }">selected</c:if> value="${item.codeId }">${item.codeNm }</option>
										</c:forEach>
									</select>
								</div>
							</div>
		                  	<div class="col-sm-6">
				                <div class="form-group">
				                  <label>권한</label>
				                  <select class="custom-select" name="userStat" id="userStat" >
							     	  <option <c:if test="${user.adminYn eq 'N' }">selected</c:if> value="N">일반사용자</option>
									  <option <c:if test="${user.adminYn eq 'Y' }">selected</c:if> value="Y">관리자</option>
								  </select>
				                  <!-- /.input group -->
				                </div>
				                <!-- /.form group -->
			                </div>
		                </div>
					  </div> <!-- card-body END -->


		              <div class="card-footer">
					  	<button type="button" onclick="fn_modifyUserCtrl();" class="btn btn-sm btn-primary btn-flat" style="float:right;">회원정보변경</button>
					  </div>



		          </div><!-- /.card -->
		        </div>
		        <!-- /.row -->

 			</div> <!-- End container-fluid -->
		</section> <!-- End content -->
	</div> <!-- End content-wrapper -->

	<c:import url="../layer/layout_footer.jsp"></c:import>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper  -->



<c:import url="../popup/pop_searchCompany.jsp"></c:import>
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

<script>

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		$('#example2').DataTable({
			"paging": true,
			"lengthChange": false,
			"ordering": true,
			"info": true,
			"autoWidth": false,
			"responsive": true,
		});
    });


	function fn_openCompanyPop(){
		$('#popCompany').modal();
		popSearch();
	}


	/*======================
	* 기관,병원 세팅
	======================*/
	function fn_setHospDataToForm(hospNo){
		alert(hospNo)
		$.ajax({
			url : 'getHospInfo',
			dataType : 'json',
			type : 'post',
			data : {'hospNo':hospNo},
			success : function(data){
				var hospInfo = data.hospInfo;

				$('#hospNm').val(fn_ifNull(hospInfo.hospNm));
				$('#hospHp').val(fn_ifNull(hospInfo.hospHp.substring(0, 3)+'-'+hospInfo.hospHp.substring(3, 7)+'-'+hospInfo.hospHp.substring(7)));
				$('#hospAdr').val(fn_ifNull(hospInfo.hospAdr)+' '+fn_ifNull(hospInfo.hospDtlAdr));

				toastr.success(hospInfo.hospNm+' 이 선택되었습니다');

				$('#hospNo').val(hospInfo.hospNo);

				$('#modalCloseBtn').click();
			}
		})
	}


	/*====================================
	* 비밀번호 초기화(세팅만 하고 저장할때 저장함.)
	====================================*/
	function fn_passReset(newPass){
		//console.log(newPass.length, newPass);
		if(confirm('비밀번호를 초기화 하시겠습니까?')){
			$('#userPass').val('');
			$('#userPass').val(newPass);

			toastr.info('변경된 비밀번호의 적용을 위해서는 하단의 저장버튼으로 저장하셔야 합니다.');
		}
	}



</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		            <div class="card">
		              <div class="card-header" style="background-color:red;">
		                <h3 class="card-title"></h3>

		              </div>
		              <!-- /.card-header 본문-->
		              <div class="card-body">
						<!-- 유저정보입력 FORM -->
                   		<form onsubmit="return false" id="userInfoForm" method="post" encType="multipart/form-data">
							<h5><b>소속정보</b></h5>

							<div class="row">
			                  <div class="col-sm-6">
			                    <!-- select -->
			                    <div class="form-group">
			                      <label>회원구분</label>
			                      <select class="custom-select" name="userLev" id="userLev">
			                        <option value="1">일반회원</option>
			                        <option value="2">수의사</option>
			                        <option value="3">기관(병원)</option>
			                        <option value="4">농장</option>
			                        <option value="5">관리자</option>
			                      </select>
			                    </div>
			                  </div>
			                  <div class="col-sm-6">
			                    <!-- <div class="form-group">
			                      <label>Custom Select Disabled</label>
			                      <select class="custom-select" disabled>
			                        <option>option 1</option>
			                        <option>option 2</option>
			                        <option>option 3</option>
			                        <option>option 4</option>
			                        <option>option 5</option>
			                      </select>
			                    </div> -->
			                  </div>
			                </div>

						</form>
					  </div> <!-- card-body END -->

		              <div class="card-footer">
					  	<button type="button" onclick="fn_modifyfarmital();" class="btn btn-sm btn-success btn-flat" style="float:right;">정보변경</button>
					  </div>
		            </div>
		            <!-- /.card -->
		          </div>
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


	/*====================================
	* 농장병원등 수정
	* 팝업 : fn_modifyfarmital()
	====================================*/
	function fn_modifyfarmital(){
		var farmNm = $('#farmNm').val();
		var farmHp = $('#farmHp').val();
		var farmAdr = $('#farmAdr').val();
		var payGb = $('#payGb').val();
		var payManagerNm = $('#payManagerNm').val();
		var payManagerHp = $('#payManagerHp').val();

		if(farmNm == null || farmNm == ''){
			alert('농장명은 필수입력입니다.');
			return;
		}

		if(farmHp == null || farmHp == ''){
			alert('핸드폰번호는 필수입력입니다.');
			return;
		}

		if(farmAdr == null || farmAdr == ''){
			alert('주소는 필수입력입니다.');
			return;
		}

		if(payGb == '월간정산'){
			if(payManagerNm == null || payManagerNm == ''){
				alert('정산담당자를 입력하세요');
				return;
			}

			if(payManagerHp == null || payManagerHp == ''){
				alert('정산담당자 연락처를 입력하세요');
				return;
			}
		}


		//$('#farmInfoForm').serialize();
		var params = new FormData($('#farmInfoForm')[0]);

		toastr.info('등록중입니다');

		$.ajax({
			url : 'modifyfarmCtrl',
			data : params,
			dataType : 'json',
			type : 'post',
			processData : false,
			contentType : false,
			success : function(data){
				if(data.result == 'succ'){
					alert('농장정보변경이 완료되었습니다.');
					location.href = 'farmList';
				}else{
					toastr.error('농장 정보변경에 실패하였습니다.');
				}
			}
		})

	}



</script>
</html>
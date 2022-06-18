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
						<h1><b>농장관리</b><code>&nbsp;(정보수정)</code></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>농장관리</b></li>
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
						<!-- 병원입력폼  -->
		                <form onsubmit="return false" id="farmInfoForm" encType="multipart/form-data">
			                <div class="farmitalDiv">
			                	<div class="row">
					                <div class="col-sm-6">
						                <div class="form-group">
						                  <label>농장명 *</label>
						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-building"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="farmNm" name="farmNm">
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>

					                <div class="col-sm-6">

					                </div>
				                </div>

				                <!-- phone mask -->
					            <div class="row">
					            	<div class="col-sm-6">
						                <div class="form-group">
						                  <label>휴대폰번호 *</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-calculator"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="farmHp" name="farmHp" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
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
						                    <input type="text" class="form-control farmInput" id="farmTel" name=""farmTel"" data-inputmask='"mask": "(999) 999-9999"' data-mask>
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>


				                </div>

				                <div class="row">
					            	<div class="col-sm-6">
						                <div class="form-group">
						                  <label>팩스</label>
						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="farmFax" name="farmFax" />
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>
					                <div class="col-sm-6">
						                <div class="form-group">
						                  <label>이메일(세금계산서용)</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-envelope"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="farmEmail" name="farmEmail" />
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>
				                </div>

				                <div class="row">
					            	<div class="col-sm-6">
						                <div class="form-group">
						                  <label>사업자등록번호</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-file"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="farmRn" name="farmRn" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>
					                <div class="col-sm-6">
						                <div class="form-group">
						                  <label>사업자등록증파일</label>

						                  <div class="input-group">
						                    <div class="custom-file">
						                      <input type="file" class="custom-file-input" name="farmRnFile" id="farmRnFile">
						                      <label class="custom-file-label" for="farmRnFile">사업자등록증 파일을 등록해주세요</label>
						                    </div>
						                  </div>
						                </div>
						                <!-- /.form group -->
					                </div>
					            </div>

				                <label for="farmAdr">주소 *<code>&nbsp;주소검색을 이용해주세요.</code></label>
				                <!-- <div class="input-group mb-3"> -->
				                <div class="row">
				                	<div class="input-group col-sm-4">
					                  <input type="text" class="form-control farmInput" id="farmZip" name="farmZip" >
					                  <span class="input-group-append">
					                    <button type="button" class="btn btn-success btn-flat" onclick="fn_searchAdr('farm')">주소검색</button><!--  -->
					                  </span>
					                  <input type="hidden" id="farmSidoNm" name="farmSidoNm"/>
					                  <input type="hidden" id="farmSigunguNm" name="farmSigunguNm"/>
					                </div>
					            </div><br/>
					            <div class="row">
				                	<div class="input-group col-sm-9">
					                  <span class="input-group-prepend">
					                    <button type="button" class="btn btn-default btn-flat" >기본주소</button>
					                  </span>
					                  <input type="text" class="form-control farmInput" id="farmAdr" name="farmAdr">
					                </div>
					            </div><br/>
					            <div class="row">
					            	<div class="input-group col-sm-9">
					            	  <div class="input-group-prepend">
					                    <button type="button" class="btn btn-default">상세주소</button>
					                  </div>
					                  <input type="text" class="form-control farmInput" name="farmDtlAdr" id="farmDtlAdr">
					            	</div>
				                </div> <!-- END input-group mb-3 -->

								<br/>
								<div class="row">
					            	<div class="col-sm-12">
						                <div class="form-group">
						                  <label>참고사항</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-memo"></i></span>
						                    </div>
						                    <input type="text" class="form-control hospInput" id="farmMemo" name="farmMemo" >
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>
					            </div>

				                <br/><br/>

								<div class="row">
					                <div class="col-sm-2">
						                <div class="form-group">
						                  <label>정산구분* </label>

										  <div class="input-group">
							                  <select class="form-control" name="payGb" id="payGb" style="width:100%;">
						                    	<option selected="selected" value="월간정산">월간정산</option>
						                    	<option value="건별정산">건별정산</option>
						                      </select>
						                  </div>
						                </div>
						                <!-- /.form group -->
					                </div>
					                <div class="col-sm-2">
						                <div class="form-group">
						                  <label>정산일 *</label>

						                  <div class="input-group">
						                    <div class="input-group">
												<select class="form-control" name="payDate" id="payDate" style="width:100%;">
													<option selected="selected" value="1">1</option>
													<option value="5">5</option>
													<option value="15">15</option>
													<option value="25">25</option>
													<option value="30">30</option>
												</select>
											</div>
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>
					                <div class="col-sm-4">
						                <div class="form-group">
						                  <label>정산담당자*</label>

										  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>
						                    </div>
						                    <input type="text" class="form-control hospInput" id="payManagerNm" name="payManagerNm" >
						                  </div>
						                </div>
						                <!-- /.form group -->
					                </div>
					                <div class="col-sm-4">
						                <div class="form-group">
						                  <label>담당자연락처*</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
						                    </div>
						                    <input type="text" class="form-control hospInput" id="payManagerHp" name="payManagerHp" >
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>

				                </div>
			                </div>
			            </form> <!-- 병원입력폼 END -->
		              </div>
		              <!-- /.card-body -->
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
	* 기관병원등 수정
	* 팝업 : fn_modifyHospital()
	====================================*/
	function fn_modifyHospital(){
		var hospNm = $('#hospNm').val();
		var hospHp = $('#hospHp').val();
		var hospAdr = $('#hospAdr').val();
		var payGb = $('#payGb').val();
		var payManagerNm = $('#payManagerNm').val();
		var payManagerHp = $('#payManagerHp').val();

		if(hospNm == null || hospNm == ''){
			alert('기관(병원)명은 필수입력입니다.');
			return;
		}

		if(hospHp == null || hospHp == ''){
			alert('핸드폰번호는 필수입력입니다.');
			return;
		}

		if(hospAdr == null || hospAdr == ''){
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


		//$('#hospInfoForm').serialize();
		var params = new FormData($('#hospInfoForm')[0]);

		toastr.info('등록중입니다');

		$.ajax({
			url : 'modifyHospCtrl',
			data : params,
			dataType : 'json',
			type : 'post',
			processData : false,
			contentType : false,
			success : function(data){
				if(data.result == 'succ'){
					alert('기관정보변경이 완료되었습니다.');
					location.href = 'hospList';
				}else{
					toastr.error('기관(병원) 정보변경에 실패하였습니다.');
				}
			}
		})

	}



</script>
</html>
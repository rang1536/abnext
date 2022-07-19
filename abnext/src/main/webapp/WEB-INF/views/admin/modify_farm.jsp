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
							<li class="breadcrumb-item active"><a href="farmList"><b>농장관리</b></a></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;">
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
						                    <input type="hidden" id="farmNo" name="farmNo" value="${farm.farmNo }"/>
						                    <input type="text" class="form-control farmInput" id="farmNm" name="farmNm" value="${farm.farmNm }"/>
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>

					                <div class="col-sm-6">
										<div class="form-group">
						                  <label>농장주</label>

						                  <div class="input-group">
						                  	  <div class="input-group-prepend">
							                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>
							                  </div>
							                  <input type="text" class="form-control farmInput" id="farmCeo" name="farmCeo" value="${farm.farmCeo }"/>
							              </div>
						                </div>
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
						                    <input type="text" class="form-control farmInput" id="farmHp" name="farmHp" value="${farm.farmHp }">
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
						                    <input type="text" class="form-control farmInput" id="farmTel" name="farmTel" value="${farm.farmTel }">
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
						                    <input type="text" class="form-control farmInput" id="farmFax" name="farmFax" value="${farm.farmFax }" />
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
						                    <input type="text" class="form-control farmInput" id="farmEmail" name="farmEmail" value="${farm.farmEmail }" />
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
						                    <input type="text" class="form-control farmInput" id="farmRn" name="farmRn" value="${farm.farmRn }">
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
						                      <input type="file" class="custom-file-input" name="farmRnFile" id="farmRnFile" value="">
						                      <label class="custom-file-label" for="farmRnFile">사업자등록증 파일을 등록해주세요</label>
						                    </div>
						                  </div>
						                </div>

						                <a href="resources/files/${farm.farmRnFilePathName }" download>${farm.farmRnFilePathName }</a>
						                <!-- /.form group -->
					                </div>
					            </div>

				                <label for="farmAdr">주소 *<code>&nbsp;주소검색을 이용해주세요.</code></label>
				                <!-- <div class="input-group mb-3"> -->
				                <div class="row">
				                	<div class="input-group col-sm-4">
					                  <input type="text" class="form-control farmInput" id="farmZip" name="farmZip"  value="${farm.farmZip }">
					                  <span class="input-group-append">
					                    <button type="button" class="btn btn-success btn-flat" onclick="fn_searchAdr('farmital')">주소검색</button><!--  -->
					                  </span>
					                  <input type="hidden" id="farmSidoNm" name="farmSidoNm" value="${farm.farmSidoNm }"/>
					                  <input type="hidden" id="farmSigunguNm" name="farmSigunguNm" value="${farm.farmSigunguNm }"/>
					                  <input type="hidden" id="farmSigunguCd" name="farmSigunguCd" value="${farm.farmSigunguCd }"/>
					                </div>
					            </div><br/>
					            <div class="row">
				                	<div class="input-group col-sm-9">
					                  <span class="input-group-prepend">
					                    <button type="button" class="btn btn-default btn-flat" >기본주소</button>
					                  </span>
					                  <input type="text" class="form-control farmInput" id="farmAdr" name="farmAdr" value="${farm.farmAdr }">
					                </div>
					            </div><br/>
					            <div class="row">
					            	<div class="input-group col-sm-9">
					            	  <div class="input-group-prepend">
					                    <button type="button" class="btn btn-default">상세주소</button>
					                  </div>
					                  <input type="text" class="form-control farmInput" name="farmDtlAdr" id="farmDtlAdr" value="${farm.farmDtlAdr }">
					            	</div>
				                </div> <!-- END input-group mb-3 -->

								<br/>
								<div class="row">
					            	<div class="col-sm-12">
						                <div class="form-group">
						                  <label>참고사항</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-plus"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="farmMemo" name="farmMemo"  placeholder="참고사항 자유롭게 기재.." value="${farm.farmMemo }">
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
						                    	<option <c:if test="${farm.payGb eq '즉시납부' }">selected="selected"</c:if> value="즉시납부">즉시납부</option>
						                    	<option <c:if test="${farm.payGb eq '월간정산' }">selected="selected"</c:if> value="월간정산">월간정산</option>
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
												<select class="form-control" name="payDate" id="payDate" style="width:100%;" <c:if test="${farm.payGb eq '즉시납부' }">disabled="disabled"</c:if> />
													<option <c:if test="${farm.payDate eq '1' }">selected="selected"</c:if> value="1">1</option>
													<option <c:if test="${farm.payDate eq '5' }">selected="selected"</c:if> value="5">5</option>
													<option <c:if test="${farm.payDate eq '15' }">selected="selected"</c:if> value="15">15</option>
													<option <c:if test="${farm.payDate eq '25' }">selected="selected"</c:if> value="25">25</option>
													<option <c:if test="${farm.payDate eq '30' }">selected="selected"</c:if> value="30">30</option>
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
						                    <input type="text" class="form-control farmInput" id="payManagerNm" name="payManagerNm" value="${farm.payManagerNm }"/>
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
						                    <input type="text" class="form-control farmInput" id="payManagerHp" name="payManagerHp" value="${farm.payManagerHp }" />
						                  </div>
						                  <!-- /.input group -->
						                </div>
						                <!-- /.form group -->
					                </div>
				                </div>

				                <div class="row">
					            	<div class="col-sm-12">
						                <div class="form-group">
						                  <label>메모</label>

						                  <div class="input-group">
						                    <div class="input-group-prepend">
						                      <span class="input-group-text"><i class="fas fa-plus"></i></span>
						                    </div>
						                    <input type="text" class="form-control farmInput" id="payMemo" name="payMemo"  value="${farm.payMemo }" placeholder="정산관련 참고사항..">
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

		              <div class="card-footer">
					  	<button type="button" onclick="fn_modifyfarmital();" class="btn btn-sm btn-primary btn-flat" style="float:right;">정보변경</button>
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

<script src="resources/js/common.js"></script>

<script>

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();


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
		var farmEmail = $('#farmEmail').val();

		if(farmNm == null || farmNm == ''){
			alert('농장명은 필수입력입니다.');
			return;
		}

		if(farmHp == null || farmHp == ''){
			alert('핸드폰번호는 필수입력입니다.');
			return;
		}else{
			if(!gfn_validation_hp(farmHp)){
				alert('올바른 휴대폰번호를 입력해주세요');
				return;
			}
		}

		if(farmAdr == null || farmAdr == ''){
			alert('주소는 필수입력입니다.');
			return;
		}

		if(farmEmail != null && farmEmail != ''){
			if(!gfn_validation_email(farmEmail)){
				alert('올바른 이메일주소를 입력해주세요');
				return;
			}
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>abnext | (주)아비넥스트</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
  
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
						<h1><b>회원가입</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active"><b>회원가입</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		 <!-- Main content -->
		 <section class="content">
 			<div class="container-fluid">
				<div class="row">
					<div class="col-md-8"> <!-- left column -->
						<div class="card card-primary"> <!-- general form elements -->
							<div class="card-header">
								<h3 class="card-title">회원정보입력<!-- User Information --></h3>
							</div> <!-- /.card-header -->
							
							<div class="card-body p-0">
								<div class="bs-stepper">
									<div class="bs-stepper-header" role="tablist">
										<!-- your steps here -->
										<div class="step" data-target="#logins-part">
											<button type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger">
												<span class="bs-stepper-circle">1</span>
												<span class="bs-stepper-label">계정설정</span>
											</button>
										</div>
										<div class="line"></div>
										<div class="step" data-target="#information-part">
											<button type="button" class="step-trigger" role="tab" aria-controls="information-part" id="information-part-trigger">
												<span class="bs-stepper-circle">2</span>
												<span class="bs-stepper-label">정보입력</span>
											</button>
										</div>
										<div class="line"></div>
										<div class="step" data-target="#ending-part">
											<button type="button" class="step-trigger" role="tab" aria-controls="#ending-part" id="#ending-part-trigger">
												<span class="bs-stepper-circle">3</span>
												<span class="bs-stepper-label">가입완료</span>
											</button>
										</div>
									</div>
                  
									<div class="bs-stepper-content">  <!-- your steps content here -->
                   
										<div id="logins-part" class="content" role="tabpanel" aria-labelledby="logins-part-trigger">
											<div class="row">
												<div class="col-sm-9">
													<p>아이디 <code>&nbsp;입력후 중복체크를 해주세요</code></p>
													<div class="input-group">
														<input type="text" class="form-control" id="userNm" name="userNm">
														<span class="input-group-append">
															<button type="button" class="btn btn-warning btn-flat" onclick="fn_idchk()">중복확인</button>
														</span>
													</div>
												</div>
												
											</div>
											<br/>
											<div class="row">
												<div class="col-sm-9">
													<p>비밀번호 <code>&nbsp;비밀번호를 입력하세요</code></p>
													<div class="input-group">
														<input type="password" class="form-control" id="userPass" name="userPass">
														<!-- <span class="input-group-append">
															<button type="button" class="btn btn-warning btn-flat" onclick="fn_idchk()">비번확인</button>
														</span> -->
													</div>
												</div>
											</div>
											<br/>
											<div class="row">
												<div class="col-sm-9">
													<p>비밀번호 확인<code>&nbsp;비밀번호를 다시 입력해주세요</code></p>
													<div class="input-group">
														<input type="password" class="form-control" id="userPass" name="userPass">
														<!-- <span class="input-group-append">
															<button type="button" class="btn btn-warning btn-flat" onclick="fn_idchk()">비번확인</button>
														</span> -->
													</div>
												</div>
											</div>
											<br/><br/>
											<div class="row">
												<button class="btn btn-primary" onclick="stepper.next()">다음</button>
											</div>
										</div>
                    
										<div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">
											<div class="row">
							                  <div class="col-sm-6">
							                    <!-- select -->
							                    <div class="form-group">
							                      <label>회원등급</label>
							                      <select class="custom-select" name="userLev" id="userLev">
							                        <option>option 1</option>
							                        <option>option 2</option>
							                        <option>option 3</option>
							                        <option>option 4</option>
							                        <option>option 5</option>
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
								            
								            <!-- phone mask -->
								            <div class="row">   
								                <div class="col-sm-6">
									                <div class="form-group">
									                  <label>전화번호</label>
									
									                  <div class="input-group">
									                    <div class="input-group-prepend">
									                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
									                    </div>
									                    <input type="text" class="form-control" id="userTel" name="userTel" data-inputmask='"mask": "(999) 999-9999"' data-mask>
									                  </div>
									                  <!-- /.input group -->
									                </div>
									                <!-- /.form group -->
								                </div>
								                
								                <div class="col-sm-6">
									                <div class="form-group">
									                  <label>휴대폰번호</label>
									
									                  <div class="input-group">
									                    <div class="input-group-prepend">
									                      <span class="input-group-text"><i class="fas fa-calculator"></i></span>
									                    </div>
									                    <input type="text" class="form-control" id="userHp" name="userHp" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
									                  </div>
									                  <!-- /.input group -->
									                </div>
									                <!-- /.form group -->
								                </div>
							                </div>
							                
							                <!-- phone mask -->
								            <div class="row">   
								                <div class="col-sm-6">
									                <div class="form-group">
									                  <label>팩스</label>
									
									                  <div class="input-group">
									                    <div class="input-group-prepend">
									                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
									                    </div>
									                    <input type="text" class="form-control" id="userFax" name="userFax" data-inputmask='"mask": "(999) 999-9999"' data-mask>
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
									                    <input type="text" class="form-control" id="userHp" name="userHp" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
									                  </div>
									                  <!-- /.input group -->
									                </div>
									                <!-- /.form group -->
								                </div>
							                </div>
							                <label for="userNm">주소 <code>&nbsp;주소검색을 이용해주세요.</code></label>
							                
							                <div class="input-group mb-3">
							                	<div class="input-group">
								                  <input type="text" class="form-control" id="userAdr" name="userAdr" readonly>
								                  <span class="input-group-append">
								                    <button type="button" class="btn btn-success btn-flat" onclick="fn_searchAdr()" >주소검색</button>
								                  </span>
								                </div>
								            
								            	<div class="input-group">
								            	  <div class="input-group-prepend">
								                    <button type="button" class="btn btn-secondary">상세주소</button>
								                  </div>
								                  <input type="text" class="form-control">
								            	</div>
							                </div> <!-- END input-group mb-3 -->	
							                <br/>
							              	<button class="btn btn-warning" onclick="stepper.previous()">이전</button>
							              	<button class="btn btn-primary" onclick="stepper.next()">다음</button>
										</div> <!-- END information-part -->
										
										<div id="ending-part" class="content" role="tabpanel" aria-labelledby="ending-part-trigger">
											<br/><br/><br/>
											<div style="text-align:center;">
												<h2><b>회원가입이 완료되었습니다</b></h2>
											</div>
											<br/><br/><br/>
											<div class="row">
												<button class="btn btn-primary" onclick="stepper.previous()">이전</button>
											</div>
										</div>
										
                    				</div> <!-- bs-stepper-content -->
								</div> <!-- bs-stepper -->
 							</div> <!-- card-body p-0 -->
						</div>  <!-- card primary -->
          			</div> <!-- right md-8 End -->
          			
          			<!--/.col (left) -->
					<!-- right column -->
					<div class="col-md-4">
						<!-- Form Element sizes -->
						<div class="card card-success">
							<div class="card-header">
								<h3 class="card-title">병원검색</h3>
							</div>
							<div class="card-body">
								<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg">
								<br>
								<input class="form-control" type="text" placeholder="Default input">
								<br>
								<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm">
							</div> <!-- /.card-body -->
						</div><!-- /.card -->         
					</div>
				</div> <!-- /.row -->
			</div><!-- /.container-fluid -->
		</section> <!-- /.content -->
 	</div> 
 	
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 3.1.0
		</div>
		<strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->

	
</div> <!-- ./wrapper -->

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

<script>

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	function fn_searchAdr(){
		new daum.Postcode({
			oncomplete: function(data){
				$("#userAdr").val(data.jibunAddress);
				//$("#zipcode").val(data.zonecode);
			}
		}).open();
	}
</script>
</body>
</html>

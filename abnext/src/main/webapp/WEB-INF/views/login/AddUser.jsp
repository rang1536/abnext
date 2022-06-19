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
					<div class="col-md-12"> <!-- left column -->
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
												<span class="bs-stepper-label">계정등록</span>
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


										<!-- 유저정보입력 FORM -->
                   						<form onsubmit="return false" id="userInfoForm" method="post" encType="multipart/form-data">
											<div id="logins-part" class="content" role="tabpanel" aria-labelledby="logins-part-trigger">
												<div class="row">
													<div class="col-sm-6">
														<p>아이디 <code>&nbsp;입력후 중복체크를 해주세요</code></p>
														<div class="input-group">
															<input type="text" class="form-control" id="userId" name="userId">
															<span class="input-group-append">
																<button type="button" class="btn btn-warning btn-flat" onclick="fn_idchk()">중복확인</button>
															</span>
														</div>
														<p><code id="idChkResult"></code></p>
													</div>
												</div>
												<br/>
												<div class="row">
													<div class="col-sm-6">
														<p>비밀번호 <code>&nbsp;비밀번호를 입력하세요</code></p>
														<div class="input-group">
															<input type="password" class="form-control" id="userPass" name="userPass">
															<!-- <span class="input-group-append">
																<button type="button" class="btn btn-warning btn-flat" onclick="fn_idchk()">비번확인</button>
															</span> -->
														</div>
													</div>
												<!-- </div>
												<br/>
												<div class="row"> -->
													<div class="col-sm-6">
														<p>비밀번호 확인<code>&nbsp;비밀번호를 다시 입력해주세요</code></p>
														<div class="input-group">
															<input type="password" class="form-control" id="userRePass">
															<!-- <span class="input-group-append">
																<button type="button" class="btn btn-warning btn-flat" onclick="fn_idchk()">비번확인</button>
															</span> -->
														</div>
													</div>
												</div>
												<br/><br/>
												<div class="row">
													<button class="btn btn-primary" onclick="nextPage('1')">다음</button>
													<!-- <button class="btn btn-primary" onclick="stepper.next()">다음</button> -->
												</div>
											</div>

											<div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">
												<div class="row">
													<div class="line" style="background-color:#C90000;"></div>
													<div>&nbsp;&nbsp;<b>User Information</b>&nbsp;&nbsp;</div>
													<div class="line" style="background-color:#C90000;"></div>
												</div>

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

									            <div class="row">
									                <div class="col-sm-6">
										                <div class="form-group">
										                  <label>이름 *<code>&nbsp;(필수입력)</code></label>

										                  <div class="input-group">
										                    <div class="input-group-prepend">
										                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>
										                    </div>
										                    <input type="text" class="form-control" id="userNm" name="userNm" >
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
										                    <input type="text" class="form-control" id="userTel" name="userTel" data-inputmask='"mask": "(999) 999-9999"' data-mask>
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
										                  <label>휴대폰번호 *<code>&nbsp;(필수입력)</code></label>

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
								                </div>

								                <!-- phone mask -->
									            <div class="row">
									                <div class="col-sm-12">
										                <div class="form-group">
										                  <label>이메일</label>

										                  <div class="input-group">
										                    <div class="input-group-prepend">
										                      <span class="input-group-text"><i class="fas fa-envelope"></i></span>
										                    </div>
										                    <input type="text" class="form-control" id="userEmail" name="userEmail" />
										                  </div>
										                  <!-- /.input group -->
										                </div>
										                <!-- /.form group -->
									                </div>
									                <div class="col-sm-6">

									                </div>
								                </div>

								                <div class="row">
									                <div class="col-md-4">
										                <div class="form-group">
										                  <label>입금은행명 </label>

														  <div class="input-group">
											                  <select class="form-control select2" name="userBankNm" id="userBankNm" style="width:100%;">
										                    	<option selected="selected" value="0">::입금은행선택::</option>
										                    	<option value="">KB국민은행</option>
										                    	<option value="">기업은행</option>
										                    	<option value="">농협은행</option>
										                    	<option value="">산업은행</option>
										                    	<option value="">수협은행</option>
										                    	<option value="">신한은행</option>
										                    	<option value="">우리은행</option>
										                    	<option value="">우체국</option>
										                    	<option value="">하나은행</option>
										                    	<option value="">한국시티은행</option>
										                    	<option value="">SC제일은행</option>
										                    	<option value="">카카오뱅크</option>
										                    	<option value="">케이뱅크</option>
										                    	<option value="">토스뱅크</option>
										                    	<option value="">경남은행</option>
										                    	<option value="">광주은행</option>
										                    	<option value="">대구은행</option>
										                    	<option value="">부산은행</option>
										                    	<option value="">전북은행</option>
										                    	<option value="">제주은행</option>
										                    	<option value="">저축은행</option>
										                    	<option value="">산림조합</option>
										                    	<option value="">새마을금고</option>
										                    	<option value="">신협은행</option>
										                      </select>
										                  </div>
										                </div>
										                <!-- /.form group -->
									                </div>

									                <div class="col-sm-8">
										                <div class="form-group">
										                  <label>입금계좌번호</label>

										                  <div class="input-group">
										                    <div class="input-group-prepend">
										                      <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
										                    </div>
										                    <input type="text" class="form-control" id="userAccountNo" name="userAccountNo" >
										                  </div>
										                  <!-- /.input group -->
										                </div>
										                <!-- /.form group -->
									                </div>
								                </div>

								                <label for="userNm">주소  *<code>&nbsp;주소검색을 이용해주세요. (필수입력)</code></label>
								                <div class="row">
								                	<div class="input-group col-sm-4">
									                  <input type="text" class="form-control" id="userZip" name="userZip">
									                  <span class="input-group-append">
									                    <button type="button" class="btn btn-success btn-flat" onclick="fn_searchAdr('user')" >주소검색</button>
									                  </span>
									                </div>
									                <input type="hidden" id="sidoNm" name="sidoNm"/>
									                <input type="hidden" id="sigunguNm" name="sigunguNm"/>
									                <input type="hidden" id="sidoCd" name="sidoCd"/>
									                <input type="hidden" id="sigunguCd" name="sigunguCd"/>
									             </div><br/>
									             <div class="row">
								                	<div class="input-group col-sm-9">
									                  <span class="input-group-prepend">
									                    <button type="button" class="btn btn-default btn-flat" >기본주소</button>
									                  </span>
									                  <input type="text" class="form-control" id="userAdr" name="userAdr">
									                </div>
									            </div><br/>
									            <div class="row">
									            	<div class="input-group col-sm-9">
									            	  <div class="input-group-prepend">
									                    <button type="button" class="btn btn-default">상세주소</button>
									                  </div>
									                  <input type="text" class="form-control" id="userDtlAdr" name="userDtlAdr">
									            	</div>
								                </div> <br/><!-- END input-group mb-3 -->


								                <div class="row">
								                	<div class="col-sm-12">
														<!-- textarea -->
														<div class="form-group">
															<label>고객메모</label>
															<textarea class="form-control" rows="3" name="userMemo" id="userMemo"></textarea>
														</div>
													</div>
								                </div>

								                <!-- 기관, 농장등 소속 입력 혹은 검색선택시 적용 히든값 -->
								                <input type="hidden" id="hospNo" name="hospNo"/>
								                <input type="hidden" id="farmNo" name="farmNo"/>

							                </form><!-- userInfoForm END  -->

							                <br/>
							                <!-- 기관(병원정보) -->

							                <div class="row">
												<div class="line" style="background-color:#C90000;"></div>
												<div>&nbsp;&nbsp;<b>Company Information</b>&nbsp;&nbsp;</div>
												<div class="line" style="background-color:#C90000;"></div>
											</div>

							                <form onsubmit="return false;">
								                <div class="row">
								                	<div class="col-5">
						                                <div class="form-group clearfix">
									                      <div class="icheck-danger d-inline">
									                        <input type="radio" name="searchKey" id="searchKey1" value="hospital" onclick="fn_searchKeyChg('hospital')">
									                        <label for="searchKey1">
									                        	기관(병원)
									                        </label>
									                      </div>
									                      &nbsp;&nbsp;
									                      <div class="icheck-danger d-inline">
									                        <input type="radio" name="searchKey" id="searchKey2" value="farm" onclick="fn_searchKeyChg('farm')">
									                        <label for="searchKey2">
									                        	농장
									                        </label>
									                      </div>
									                    </div>
						                            </div>
						                            <div class="col-6">
									                	<div class="form-group">
									                		<div class="input-group">
								                                <input type="search" class="form-control" id="companyNm" placeholder="기관, 농장명검색" value="" onkeyup="fn_enterKey('addUser');">
								                                <div class="input-group-append">
								                                    <!-- <button type="button" class="btn btn-default" data-toggle="modal" data-target="#popCompany"> -->
								                                    <button type="button" class="btn btn-success" id="fn_searchCompany">
								                                    	검색&nbsp;<i class="fa fa-search"></i>
								                                    </button>
								                                </div>
								                            </div>
								                        </div>
							                        </div>
								                </div>
							                </form>
							                <!-- 병원입력폼  -->
							                <form onsubmit="return false" id="hospInfoForm" encType="multipart/form-data">
								                <div class="hospitalDiv">
								                	<div class="row">
										                <div class="col-sm-6">
											                <div class="form-group">
											                  <label>기관(병원)명</label>
											                  <div class="input-group">
											                    <div class="input-group-prepend">
											                      <span class="input-group-text"><i class="fas fa-building"></i></span>
											                    </div>
											                    <input type="text" class="form-control hospInput" id="hospNm" name="hospNm">
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
											                  <label>휴대폰번호</label>

											                  <div class="input-group">
											                    <div class="input-group-prepend">
											                      <span class="input-group-text"><i class="fas fa-calculator"></i></span>
											                    </div>
											                    <input type="text" class="form-control hospInput" id="hospHp" name="hospHp" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
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
											                    <input type="text" class="form-control hospInput" id="hospTel" name=""hospTel"" data-inputmask='"mask": "(999) 999-9999"' data-mask>
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
											                    <input type="text" class="form-control hospInput" id="hospFax" name="hospFax" />
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
											                    <input type="text" class="form-control hospInput" id="hospEmail" name="hospEmail" />
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
											                    <input type="text" class="form-control hospInput" id="hospRn" name="hospRn" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
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
											                      <input type="file" class="custom-file-input hospInput" id="hospRnFile">
											                      <label class="custom-file-label" for="hospRnFile">사업자등록증 파일을 등록해주세요</label>
											                    </div>
											                  </div>
											                </div>
											                <!-- /.form group -->
										                </div>
										            </div>

									                <label for="hospAdr">주소 <code>&nbsp;주소검색을 이용해주세요.</code></label>
									                <!-- <div class="input-group mb-3"> -->
									                <div class="row">
									                	<div class="input-group col-sm-4">
										                  <input type="text" class="form-control hospInput" id="hospZip" name="hospZip" >
										                  <span class="input-group-append">
										                    <button type="button" class="btn btn-success btn-flat" >주소검색</button><!-- onclick="fn_searchAdr('hospital')" -->
										                  </span>
										                  <input type="hidden" id="hospSidoNm" name="hospSidoNm"/>
										                  <input type="hidden" id="hospSigunguNm" name="hospSigunguNm"/>
										                </div>
										            </div><br/>
										            <div class="row">
									                	<div class="input-group col-sm-9">
										                  <span class="input-group-prepend">
										                    <button type="button" class="btn btn-default btn-flat" >기본주소</button>
										                  </span>
										                  <input type="text" class="form-control hospInput" id="hospAdr" name="hospAdr">
										                </div>
										            </div><br/>
										            <div class="row">
										            	<div class="input-group col-sm-9">
										            	  <div class="input-group-prepend">
										                    <button type="button" class="btn btn-default">상세주소</button>
										                  </div>
										                  <input type="text" class="form-control hospInput" name="hospDtlAdr" id="hospDtlAdr">
										            	</div>
									                </div> <!-- END input-group mb-3 -->
								                </div>
								            </form> <!-- 병원입력폼 END -->

								            <!-- 농장입력폼 ST -->
								            <form onsubmit="return false" id="farmInfoForm" encType="multipart/form-data">
								                <div class="farmDiv" style="display:none;">
								                	<div class="row">
										                <div class="col-sm-6">
											                <div class="form-group">
											                  <label>농장명</label>

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
											                  <label>휴대폰번호</label>

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
											                    <input type="text" class="form-control farmInput" id="farmTel" name="farmTel" data-inputmask='"mask": "(999) 999-9999"' data-mask>
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
											                      <input type="file" class="custom-file-input farmInput" id="farmRnFile">
											                      <label class="custom-file-label" for="farmRnFile">사업자등록증 파일을 등록해주세요</label>
											                    </div>
											                  </div>
											                </div>
											                <!-- /.form group -->
										                </div>
										            </div>

									                <label for="farmAdr">주소 <code>&nbsp;주소검색을 이용해주세요.</code></label>
									                <!-- <div class="input-group mb-3"> -->
									                <div class="row">
									                	<div class="input-group col-sm-4">
										                  <input type="text" class="form-control farmInput" id="farmZip" name="farmZip">
										                  <span class="input-group-append">
										                    <button type="button" class="btn btn-success btn-flat">주소검색</button> <!-- onclick="fn_searchAdr('farm')" -->
										                  </span>
										                </div>
										                <input type="hidden" id="farmSidoNm" name="farmSidoNm"/>
										                <input type="hidden" id="farmSigunguNm" name="farmSigunguNm"/>
										            </div>
										            <br/>
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
										                  <input type="text" class="form-control farmInput" id="farmDtlAdr" name="farmDtlAdr">
										            	</div>
									                </div> <br/> <!-- END input-group mb-3 -->
									            </div>
							                </form>   <!-- farmInfoForm END  -->

							                <br/><br/>
							              	<!-- <button class="btn btn-warning" onclick="stepper.previous()">이전</button> -->
							              	<button class="btn btn-primary" onclick="nextPage('2')">다음</button>
										</div> <!-- END information-part -->

										<div id="ending-part" class="content" role="tabpanel" aria-labelledby="ending-part-trigger">
											<div>

											</div>
											<div id="completeDiv">
												<br/><br/><br/>
												<div style="text-align:center;">
													<h2><b>회원가입이 완료되었습니다</b></h2>
												</div>
												<br/><br/><br/>
											</div>

											<!-- <button type="button" class="btn btn-primary" onclick="stepper.previous()">이전</button> -->
											<button type="button" onclick="fn_userListPage();" class="btn btn-success btn-flat" style="float:right;">회원목록 바로가기</button>


										</div>

                    				</div> <!-- bs-stepper-content -->

								</div> <!-- bs-stepper -->
 							</div> <!-- card-body p-0 -->

						</div>  <!-- card primary -->
          			</div> <!-- right md-8 End -->
          		</div> <!-- /.row -->
			</div><!-- /.container-fluid -->
		</section> <!-- /.content -->
 	</div>

	<c:import url="../layer/layout_footer.jsp"></c:import>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->

	<c:import url="../popup/pop_searchCompany.jsp"></c:import>
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
<!-- Select2 -->
<script src="resources/plugins/select2/js/select2.full.min.js"></script>
<!-- SweetAlert2 -->
<script src="resources/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>

<script>
	var Toast = '';

	//BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function () {
	  window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		localStorage.setItem('idChkResult', 'fail'); //새로 열때마다 id중복체크 초기화.

		Toast = Swal.mixin({
			toast: true,
			position: 'top-end',
			showConfirmButton: false,
			timer: 3000
		});

		$('.hospInput').prop('readonly', true);
		$('.farmInput').prop('readonly', true);

    });


	/*=====================================
	* 기관, 농장은 검색으로만 입력가능하도록 함
	=====================================*/
	$('.hospInput').on('click', function(){
		toastr.error('상단의 기관(병원)을 선택하시고 검색하여 등록된 기관(병원)을 선택해주세요.');
		$('#companyNm').focus();
	})

	$('.farmInput').on('click', function(){
		toastr.error('상단의 기관, 농장 구분을 선택하시고 검색하여 등록된 기관을 선택해주세요.');
		$('#companyNm').focus();
	})


	/*======================
	* 기관 병원찾기 팝업
	======================*/
	$(document).on('click', '#fn_searchCompany', function(){
		var companyGb = $('input[name=searchKey]:checked').val();
		var companyNm = $('#companyNm').val();

		console.log(companyGb, companyNm);

		if(companyGb == null || companyGb == ''){
			alert('기관(병원)인지 농장인지 좌측에 카테고리를 선택한 후 검색해주세요.');
			return;
		}

		if(companyGb == 'hospital'){
			$('#popComNm').empty();
			$('#popComNm').html('기관(병원)');
		}else if(companyGb == 'farm'){
			$('#popComNm').empty();
			$('#popComNm').html('농장');
		}

		if(companyNm != null && companyNm != ''){ //검색값이 있을경우 조회먼저 시행.
			$.ajax({
				url : 'searchCompany',
				data : {'companyGb':companyGb, 'companyNm': companyNm},
				dataType : 'json',
				type : 'post',
				success : function(data){
					if(companyGb == 'hospital'){
						var hospList = data.hospList;

						if(hospList.length == 1){
							var list = hospList[0];
							$('#hospNm').val(fn_ifNull(list.hospNm));
							$('#hospHp').val(fn_ifNull(list.hospHp));
							$('#hospTel').val(fn_ifNull(list.hospTel));
							$('#hospFax').val(fn_ifNull(list.hospFax));
							$('#hospEmail').val(fn_ifNull(list.hospEmail));
							$('#hospRn').val(fn_ifNull(list.hospRn));
							$('#hospRnFile').val(fn_ifNull(list.hospRnFile));
							$('#hospZip').val(fn_ifNull(list.hospZip));
							$('#hospAdr').val(fn_ifNull(list.hospAdr));
							$('#hospDtlAdr').val(fn_ifNull(list.hospDtlAdr));

							toastr.success(list.hospNm+' 이 검색되었습니다');

							$('#hospNo').val(list.hospNo);

						}else if(hospList.length == 0){
							toastr.error('등록된 기관(병원)이 없습니다.');
							$('#popCompany').modal();

						}else{
							var html = '';
							$.each(hospList, function(i, list){
								html += '<tr ondblclick="fn_setHospDataToForm('+list.hospNo+');">';
								html += '	<td>기관(병원)</td>';
								html += '	<td>'+fn_ifNull(list.hospNm)+'</td>';
								html += '	<td>'+fn_ifNull(list.hospCeo)+'</td>';
								html += '	<td>'+fn_ifNull(list.hospTel)+'</td>';
								html += '	<td>'+fn_ifNull(list.hospHp)+'</td>';
								html += '	<td>'+fn_ifNull(list.hospSigunguNm)+'</td>';
								html += '</tr>';
							})

							$('#comTbody').empty();
							$('#comTbody').html(html);
							$('#popCompany').modal();
						}
					}else if(companyGb == 'farm'){
						var farmList = data.farmList;

						if(farmList.length == 1){
							var list = farmList[0];
							$('#farmNm').val(fn_ifNull(list.farmNm));
							$('#farmHp').val(fn_ifNull(list.farmHp));
							$('#farmTel').val(fn_ifNull(list.farmTel));
							$('#farmFax').val(fn_ifNull(list.farmFax));
							$('#farmEmail').val(fn_ifNull(list.farmEmail));
							$('#farmRn').val(fn_ifNull(list.farmRn));
							$('#farmRnFile').val(fn_ifNull(list.farmRnFile));
							$('#farmZip').val(fn_ifNull(list.farmZip));
							$('#farmAdr').val(fn_ifNull(list.farmAdr));
							$('#farmDtlAdr').val(fn_ifNull(list.farmDtlAdr));

							toastr.success(list.farmNm+' 이 검색되었습니다');
							$('#farmNo').val(list.farmNo);

						}else if(farmList.length == 0){
							toastr.error('등록된 농장이 없습니다.');
							$('#popCompany').modal();

						}else{
							var html = '';
							$.each(farmList, function(i, list){
								html += '<tr ondblclick="fn_setfarmDataToForm('+list.farmNo+');">';
								html += '	<td>농장</td>';
								html += '	<td>'+fn_ifNull(list.farmNm)+'</td>';
								html += '	<td>'+fn_ifNull(list.farmCeo)+'</td>';
								html += '	<td>'+fn_ifNull(list.farmTel)+'</td>';
								html += '	<td>'+fn_ifNull(list.farmHp)+'</td>';
								html += '	<td>'+fn_ifNull(list.farmSigunguNm)+'</td>';
								html += '</tr>';
							})

							$('#comTbody').empty();
							$('#comTbody').html(html);
							$('#popCompany').modal();
						}
					}
				}
			})
		}else{
			toastr.error('검색된 정보가 없습니다');
			$('#popCompany').modal();
		}

	})


	/*======================
	* 기관,병원 세팅
	======================*/
	function fn_setHospDataToForm(hospNo){
		$.ajax({
			url : 'getHospInfo',
			dataType : 'json',
			type : 'post',
			data : {'hospNo':hospNo},
			success : function(data){
				var hospInfo = data.hospInfo;

				$('#hospNm').val(fn_ifNull(hospInfo.hospNm));
				$('#hospHp').val(fn_ifNull(hospInfo.hospHp));
				$('#hospTel').val(fn_ifNull(hospInfo.hospTel));
				$('#hospFax').val(fn_ifNull(hospInfo.hospFax));
				$('#hospEmail').val(fn_ifNull(hospInfo.hospEmail));
				$('#hospRn').val(fn_ifNull(hospInfo.hospRn));
				$('#hospRnFile').val(fn_ifNull(hospInfo.hospRnFile));
				$('#hospZip').val(fn_ifNull(hospInfo.hospZip));
				$('#hospAdr').val(fn_ifNull(hospInfo.hospAdr));
				$('#hospDtlAdr').val(fn_ifNull(hospInfo.hospDtlAdr));

				toastr.success(hospInfo.hospNm+' 이 선택되었습니다');

				$('#hospNo').val(hospInfo.hospNo);

				$('#modalCloseBtn').click();
			}
		})
	}


	/*======================
	* 농장 세팅
	======================*/
	function fn_setfarmDataToForm(farmNo){
		$.ajax({
			url : 'getFarmInfo',
			dataType : 'json',
			type : 'post',
			data : {'farmNo':farmNo},
			success : function(data){
				var farmInfo = data.farmInfo;

				$('#farmNm').val(fn_ifNull(farmInfo.farmNm));
				$('#farmHp').val(fn_ifNull(farmInfo.farmHp));
				$('#farmTel').val(fn_ifNull(farmInfo.farmTel));
				$('#farmFax').val(fn_ifNull(farmInfo.farmFax));
				$('#farmEmail').val(fn_ifNull(farmInfo.farmEmail));
				$('#farmRn').val(fn_ifNull(farmInfo.farmRn));
				$('#farmRnFile').val(fn_ifNull(farmInfo.farmRnFile));
				$('#farmZip').val(fn_ifNull(farmInfo.farmZip));
				$('#farmAdr').val(fn_ifNull(farmInfo.farmAdr));
				$('#farmDtlAdr').val(fn_ifNull(farmInfo.farmDtlAdr));

				toastr.success(farmInfo.farmNm+' 이 선택되었습니다');

				$('#farmNo').val(farmInfo.farmNo);

				$('#modalCloseBtn').click();
			}
		})
	}

	/*======================
	* 기관,병원 소속선택 폼 이벤트
	======================*/
	function fn_searchKeyChg(searchKey){
		console.log('기관병원 클릭');
		if(searchKey == 'hospital'){
			$('.hospitalDiv').css('display', '');
			$('.farmDiv').css('display', 'none');
		}else if(searchKey == 'farm'){
			$('.hospitalDiv').css('display', 'none');
			$('.farmDiv').css('display', '');
		}else{
			$('.hospitalDiv').css('display', '');
			$('.farmDiv').css('display', 'none');
		}
	}


	/*======================
	* 회원관리 페이지이동
	======================*/
	function fn_userListPage(){
		location.href = 'userList';
	}


	/*======================
	* 아이디 중복체크
	======================*/
	function fn_idchk(){
		var userId = $('#userId').val();

		if(userId == null || userId == ''){
			alert('아이디를 입력하고 중복체크를 해주세요');
			$('#userId').focus();
			return;
		}

		$.ajax({
			url : 'idChk',
			data : {'userId':userId},
			dataType : 'json',
			type : 'post',
			success : function(data){
				if(data.result == 'succ'){
					$('#idChkResult').text('사용가능한 아이디 입니다.');
					localStorage.setItem('idChkResult', 'succ');
				}else{
					$('#idChkResult').text('이미 존재하는 아이디입니다. 다른 아이디를 입력해주세요.');
					localStorage.setItem('idChkResult', 'fail');
				}
			}
		})
	}


	/*======================
	* 비밀번호 확인
	======================*/
	function fn_passChk(){
		var userPass = $('#userPass').val();
		var userRePass = $('#userRePass').val();

		if(userPass == userRePass){
			return true;
		}else{
			return false;
		}
	}


	/*======================
	* 다음버튼 유효성검사 이벤트
	======================*/
	$('#userLev').on('change', function(){
		console.log($(this).val());
		var userLev = $(this).val();
		var searchKey = 'hospital';

		//라디오 name="searchKey" id 기관 searchKey1 농장 searchKey2 // 값 hospital, farm 변화시 폼 이벤트 fn_searchKeyChg(searchKey)
		if(userLev == '2' || userLev == '3'){ //수의사, 병원
			$('#searchKey1').prop('checked', true);
			toastr.info('수의사 혹은 기관소속인 경우 아래 기관(병원)정보 입력이 필수입니다.');

		}else if(userLev == '4'){ //농장
			$('#searchKey2').prop('checked', true);
			searchKey = 'farm';

			toastr.info('농장소속인 경우 농장정보 입력이 필수입니다.');
		}else{ //1번 일반회원, 5번 관리자
			$('#searchKey1').prop('checked', false);
			$('#searchKey2').prop('checked', false);
		}

		fn_searchKeyChg(searchKey);
	})


	/*======================
	* 다음버튼 유효성검사 이벤트
	======================*/
	function nextPage(nowPage){
		if(nowPage == '1'){ //계정정보
			var idChk = localStorage.getItem('idChkResult');
			var passChk = fn_passChk();

			if(idChk == 'succ'){
				if(passChk){
					stepper.next();
				}else{
					alert('비밀번호가 다릅니다. 다시 확인해주세요');
					$('#userPass').val('');
					$('#userRePass').val('');

					$('#userPass').focus();
					return;
				}
			}else{
				alert('아이디를 입력 후 중복체크 후 사용가능합니다.');
				$('#userId').val('');
				$('#userId').focus();

				return;
			}
		}else if(nowPage == '2'){ //회원정보
			var userNm = $('#userNm').val();
			var userHp = $('#userHp').val();
			var userAdr = $('#userAdr').val();

			if(userNm == null || userNm == ''){
				alert('이름은 필수입력입니다.');
				return;
			}

			if(userHp == null || userHp == ''){
				alert('핸드폰번호는 필수입력입니다.');
				return;
			}

			if(userAdr == null || userAdr == ''){
				alert('주소는 필수입력입니다.');
				return;
			}

			//회원구분에 따라 회사정보입력이 필수.
			var userLev = $('#userLev option:selected').val();
			//console.log('userLev : '+userLev);

			if(userLev == '2'){ //수의사
				if($('#hospNo').val() == null || $('#hospNo').val() == ''){
					alert('수의사인 경우 소속병원을 선택하세요');
					$('#companyNm').focus();
					return;
				}

			}else if(userLev == '3'){ //기관(병원)
				if($('#hospNo').val() == null || $('#hospNo').val() == ''){
					alert('기관(병원)인 경우 소속기관(병원)을 선택하세요');
					$('#companyNm').focus();
					return;
				}

			}else if(userLev == '4'){ //농장
				if($('#farmNo').val() == null || $('#farmNo').val() == ''){
					alert('농장인 경우 소속농장을 선택하세요');
					$('#companyNm').focus();
					return;
				}
			}


			var params = $('#userInfoForm').serialize();
			//console.log('params : '+params);
			//고객정보저장
			$.ajax({
				url : 'addUserCtrl',
				data : params,
				dataType : 'json',
				type : 'post',
				success : function(data){
					if(data.result == 'succ'){
						toastr.success('회원등록이 완료되었습니다.');
						stepper.next();
					}else{
						toastr.error('회원등록에 실패하였습니다.');
					}
				}
			})


			//stepper.next();

		}
	}



</script>
</body>
</html>

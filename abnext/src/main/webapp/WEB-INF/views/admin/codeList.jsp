<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<style>
		.txtc{text-align:center;}
		.expandable-body{text-align:left;}
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
						<h1><b>코드관리</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active"><b>코드관리</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-4">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">코드</h3>
							</div>
							<!-- ./card-header -->
							<div class="card-body p-0">
								<table class="table table-hover">
									<tbody>
										<c:forEach var="item" items="${codeList }">
											<c:choose>
												<c:when test="${item.uppCodeId == null }">
													<c:if test="${item.childCnt != '0'}">
														<tr data-widget="expandable-table" aria-expanded="true">
															<td>${item.codeNm }<i class="expandable-table-caret fas fa-caret-right fa-fw"></i></td>
														</tr>

														<tr class="expandable-body">
															<td>
																<div class="p-0">
																	<table class="table table-hover">
																		<tbody>
																			<c:forEach var="item2" items="${codeList }" varStatus="k">
																				<c:if test="${item2.childCnt != '0' && item.codeId==item2.uppCodeId}">
																					<tr data-widget="expandable-table" aria-expanded="true">
																						<td>${item2.codeNm }<i class="expandable-table-caret fas fa-caret-right fa-fw"></i></td>
																					</tr>
																					
																					<tr class="expandable-body">
																						<td>
																							<div class="p-0">
																								<table class="table table-hover">
																									<tbody>
																										<c:forEach var="item3" items="${codeList }" varStatus="n">
																											<c:if test="${item3.childCnt != '0' && item2.codeId==item3.uppCodeId}">
																												<tr data-widget="expandable-table" aria-expanded="true">
																													<td>${item3.codeNm }<i class="expandable-table-caret fas fa-caret-right fa-fw"></i></td>
																												</tr>
																											</c:if>
																											<c:if test="${item3.childCnt == '0' && item2.codeId==item3.uppCodeId}">
																												<tr>
																													<td>${item3.codeNm }</td>
																												</tr>
																											</c:if>
																										</c:forEach>
																									</tbody>
																								</table>
																							</div>
																						</td>
																					</tr>
																				</c:if>
	
																				<c:if test="${item2.childCnt == '0' && item.codeId==item2.uppCodeId}">
																					<tr>
																						<td>${item2.codeNm }</td>
																					</tr>
																				</c:if>
																			</c:forEach>
																		</tbody>
																	</table>
																</div>
															</td>
														</tr>

													</c:if>
													<c:if test="${item.childCnt == '0'}">
														<tr>
															<td>${item.codeNm }</td>
														</tr>
													</c:if>
												</c:when>
												<c:otherwise>
													
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
				<!-- /.row -->
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	
	<c:import url="../layer/layout_footer.jsp"></c:import>
	
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
	</aside> <!-- /.control-sidebar -->
</div> <!-- End wrapper	-->
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

</html>
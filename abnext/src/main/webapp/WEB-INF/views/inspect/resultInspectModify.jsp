<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shotcut icon" href="resources/files/aviicon.png" />
	<title>avinext | (주)아비넥스트</title>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
	<!-- daterange picker -->
	<link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
	<!-- iCheck for checkboxes and radio inputs -->
	<link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Bootstrap Color Picker -->
	<link rel="stylesheet" href="resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet" href="resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	<!-- Bootstrap4 Duallistbox -->
	<link rel="stylesheet" href="resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
	<!-- BS Stepper -->
	<link rel="stylesheet" href="resources/plugins/bs-stepper/css/bs-stepper.min.css">
	<!-- dropzonejs -->
	<link rel="stylesheet" href="resources/plugins/dropzone/min/dropzone.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="resources/dist/css/adminlte.css">
	<!-- Toastr -->
	<link rel="stylesheet" href="resources//plugins/toastr/toastr.min.css">

	<style>
		.txtc {text-align:center;}
		.fileBox label {
			display: inline-block;
			padding: .5em .75em;
			color: #000000;
			font-size: inherit;
			line-height: normal;
			vertical-align: middle;
			background-color: #fdfdfd;
			cursor: pointer;
			border: 1px solid #ebebeb;
			border-bottom-color: #e2e2e2;
			border-radius: .25em;
		}

		.fileBox input[type="file"] {	/* 파일 필드 숨기기 */
			position: absolute;
			width: 1px;
			height: 1px;
			padding: 0;
			margin: -1px;
			overflow: hidden;
			clip:rect(0,0,0,0);
			border: 0;
		}

		table td {text-align:center}
		.w60 {width:60px}
		.w200 {width:200px}

		.tblPad{padding:0 3px 0 3px}
	</style>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

	<jsp:include page="../layer/layout.jsp"></jsp:include>
	<jsp:include page="../popup/pop_searchUser.jsp"></jsp:include>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>* 결과입력 대상</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">결과입력</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content" style="font-size:13px;">
			<div class="container-fluid">
				<!-- general form elements disabled -->
				<div class="row">
					<div class="col-12">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">신청정보</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body table-responsive">
								<table class="table table-bordered text-nowrap">
									<tbody>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰번호</td>
											<td style="width:30%;" class="txtc">${rceptInfo.pdlNo }</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">상태</td>
											<td style="width:30%;" class="txtc">${rceptInfo.procStatNm }</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">신청자(기관)</td>
											<td style="width:30%;" class="txtc">${rceptInfo.hospNm }</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">담당수의사</td>
											<td style="width:30%;" class="txtc">${rceptInfo.docNm }</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">품종</td>
											<td style="width:30%;" class="txtc">${rceptInfo.animFirstNm }/${rceptInfo.animSecondNm }/${rceptInfo.animThirdNm }</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">생년월일</td>
											<td style="width:30%;" class="txtc">${rceptInfo.animBirth }</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">성별</td>
											<td style="width:30%;" class="txtc">${rceptInfo.animSexNm}</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">신청일</td>
											<td style="width:30%;" class="txtc">${rceptInfo.rqstDt}</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">동물명(번호)</td>
											<td style="width:30%;" class="txtc">${rceptInfo.animNm }(${rceptInfo.animNo})</td>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">의뢰메모</td>
											<td style="width:30%;" class="txtc">${rceptInfo.rqstMemo }</td>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">시료정보</td>
											<th colspan="3" class="txtl">
												<div class="form-group" style="margin-bottom:-1px;">
													<div class="icheck-primary d-inline" style="vertical-align:bottom;">
														<input type="checkbox" id="chk01" class="chks" value="A002-01">
														<label for="chk01" style="width:80px">분변</label>
													</div>
													<div class="icheck-primary d-inline" style="vertical-align:bottom;">
														<input type="checkbox" id="chk02" class="chks" value="A002-02">
														<label for="chk02" style="width:80px">깃털</label>
													</div>
													<div class="icheck-primary d-inline" style="vertical-align:bottom;">
														<input type="checkbox" id="chk03" class="chks" value="A002-4">
														<label for="chk03" style="width:80px">혈액</label>
													</div>
													<div class="icheck-primary d-inline" style="vertical-align:bottom;">
														<input type="checkbox" id="chk04" class="chks" value="A002-3">
														<label for="chk04" style="width:125px">총배설강스왑</label>
													</div>
													<div class="icheck-primary d-inline" style="vertical-align:bottom;">
														<input type="checkbox" id="chk05" class="chks" value="A002-6">
														<label for="chk05">기타</label>
													</div>
													<input type="text" class="" id="chk06" style="display:none" disabled>
												</div>
											</th>
										</tr>
										<tr>
											<td style="width:20%;background-color:#F2F2F2" class="txtc">임상증상 및 병력내용</td>
											<th colspan="3" class="txtl">
												<div class="form-group clearfix" style="margin-bottom:-1px;">
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="chk11" class="chkh" value="ERR001-01">
														<label for="chk11">깃털이상</label>
													</div>
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="chk12" class="chkh" value="ERR001-02">
														<label for="chk12">호흡이상</label>
													</div>
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="chk13" class="chkh" value="ERR001-03">
														<label for="chk13">선위확장</label>
													</div>
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="chk14" class="chkh" value="ERR001-04">
														<label for="chk14">설사</label>
													</div>
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="chk15" class="chkh" value="ERR001-05">
														<label for="chk15">체중감소</label>
													</div>
													<div class="icheck-primary d-inline">
														<input type="checkbox" id="chk16" class="chkh" value="ERR001-06">
														<label for="chk16">기타</label>
													</div>
													<input type="text" class="" id="chk17" style="display:none" disabled>
												</div>
											</th>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
					<!-- /.card -->
					</div>
				</div>

				<div class="row">
					<div class="col-12">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">실험결과</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body table-responsive">
								<table class="table table-bordered table-hover text-nowrap">
									<thead>
										<tr>
											<td class="txtc" style="width:5%;background-color:#F2F2F2"></td>
											<td class="txtc" style="width:5%;background-color:#F2F2F2">No</td>
											<td class="txtc" style="width:17%;background-color:#F2F2F2">검사구분</td>
											<td class="txtc" style="width:17%;background-color:#F2F2F2">검사방법</td>
											<td class="txtc" style="width:*;background-color:#F2F2F2">검사항목</td>
											<td class="txtc" style="width:20%;background-color:#F2F2F2">시료</td>
										</tr>
									</thead>
									<tbody id="inspList">
										<c:forEach var="item" items="${inspList }" varStatus="status">
											<tr>
												<td>
													<div class="form-group clearfix" style="margin-left:9px;margin-bottom:-3px;">
														<div class="icheck-primary d-inline">
															<input type="checkbox" id="chk_${status.index+1 }">
															<label for="chk_${status.index+1 }">&nbsp;</label>
														</div>
													</div>
												</td>
												<td class="txtc">
													${status.index+1 }
													<input type="hidden" id="inspNo_${status.index+1 }" value="${item.inspNo}"/>
													<input type="hidden" id="inspResult_${status.index+1 }" value="${item.inspResult}"/>
													<input type="hidden" id="inspSecondCd_${status.index+1 }" value="${item.inspSecondCd}"/>
													<input type="hidden" id="inspThirdCd_${status.index+1 }" value="${item.inspThirdCd}"/>
												</td>
												<td class="txtc">${item.inspFirstNm }</td>
												<td class="txtc">${item.inspSecondNm }</td>
												<td class="txtc">${item.inspThirdNm }</td>
												<td class="txtc">${item.sampleName }</td>
												<%--
												<td class="txtc">
													<input type="text" id="inspResult_${status.index+1 }" class="form-control" placeholder="실험결과" value="${item.inspResult}">
												</td>
												 --%>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
				<%--
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">실험결과</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body table-responsive">
							<table class="table table-bordered table-hover text-nowrap">
								<thead>
									<tr>
										<td class="txtc" style="width:10%;background-color:#F2F2F2">No</td>
										<td class="txtc" style="width:20%;background-color:#F2F2F2">검사구분</td>
										<td class="txtc" style="width:20%;background-color:#F2F2F2">검사방법</td>
										<td class="txtc" style="width:20%;background-color:#F2F2F2">실험결과</td>
										<td class="txtc" style="width:20%;background-color:#F2F2F2">사진</td>
									</tr>
								</thead>
								<tbody id="inspList">
									<c:forEach var="item" items="${inspList }" varStatus="status">
										<form id="inspResultForm_${status.index+1 }" method="post" enctype="multipart/form-data">
											<tr>
												<td class="txtc" rowspan="2">
													${status.index+1 }
													<input type="hidden" id="inspNo_${status.index+1 }" value="${item.inspNo}"/>
												</td>
												<td class="txtc">${item.inspFirstNm }</td>
												<td class="txtc">${item.inspTypeNm }</td>
												<td class="txtc">
													<input type="text" id="inspResult_${status.index+1 }" class="form-control" placeholder="실험결과" value="${item.inspResult}">
												</td>
												<td>
													<div class="fileBox">
														<label for="inspResultFile_${status.index+1 }">결과사진추가</label>
														<input type="file" id="inspResultFile_${status.index+1 }" onchange="addFileSet(this, '${status.index+1 }');" multiple>
													</div>
												</td>
											</tr>
											<tr id="${status.index+1 }tr">
												<td colspan="4">
													<c:forEach var="file" items="${item.inspFileList }" varStatus="status">
														<b id="bFile_${file.fileNo }">
															[<a href="javascript:void(0)" onclick="imgView('${file.fileNewNm}')">${file.fileNewNm}</a>]
																	<a class="delete" onclick="deleteServerFile('${file.fileNo}');"><i class="far fa-minus-square"></i></a>
				 													&nbsp;&nbsp;
			 													</b>
													</c:forEach>
												</td>
											</tr>
										</form>
									</c:forEach>
								</tbody>
							</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
 --%>
				<div class="row inputType1 iptPop" style="display:none">
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult" name="inspResult"></textarea>
											</td>
										</tr>
										<tr>
											<td class="txtc">
												<button type="button" onclick="saveMemo(1)" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 검사메모저장</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사사진</h3>
							</div>
							<div class="card-body">
								<div class="fileBox">
									<label for="inspResultFile">결과사진추가</label>
									<input type="file" id="inspResultFile" onchange="addFileSet(this, '');">
								</div>

								<div>
									<form id="fileForm" method="post" enctype="multipart/form-data">
										<input type="hidden" id="inspNo" name="inspNo"/>
										<input type="hidden" id="rqstNo" name="rqstNo" value="${rceptInfo.rqstNo }"/>
										<div class="filter-container row previewList"></div>
									</form>
								</div>
								<div style="text-align:center">
									<button type="button" id="fileSave" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
	 			</div>
				<div class="row inputType2 iptPop" style="display:none">
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult" name="inspResult"></textarea>
											</td>
										</tr>
										<tr>
											<td class="txtc">
												<button type="button" onclick="saveMemo(2)" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div style="height:10px;">

							</div>
							<div class="card-header">
								<h3 class="card-title">사진</h3>
							</div>
							<div class="card-body">
								<div class="fileBox">
									<label for="inspResultFile2">결과사진추가</label>
									<input type="file" id="inspResultFile2" onchange="addFileSet2(this, '');">
								</div>

								<div>
									<form id="fileForm2" method="post" enctype="multipart/form-data">
										<input type="hidden" id="inspNo" name="inspNo"/>
										<input type="hidden" id="rqstNo" name="rqstNo" value="${rceptInfo.rqstNo }"/>
										<div class="filter-container row previewList2"></div>
									</form>
								</div>
								<div style="text-align:center">
									<button type="button" id="fileSave2" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">항생제 감수성 검사 기록지</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered text-nowrap">
										<thead>
											<tr>
												<td rowspan="2">번호</td>
												<td rowspan="2">항생제(㎍)</td>
												<td rowspan="2">약자</td>
												<td colspan="3">zone diameter (mm)</td>
												<td colspan="2">검사결과</td>
												<td rowspan="2" class="w200">비고</td>
											</tr>
											<tr>
												<td>R<br/>≤</td>
												<td>I</td>
												<td>S<br/>≥</td>
												<td class="w60">(mm)</td>
												<td class="w60">R.I.S.</td>
											</tr>
										</thead>
										<tbody id="antibiotic">
											<tr>
												<td>1</td>
												<td>Ampicilin (10)</td>
												<td>AM10</td>
												<td>13</td>
												<td>14-16</td>
												<td>17</td>
												<td style="padding: 0 3px 0 3px;" id="res1_1"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_1"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_1"></td>
											</tr>
											<tr>
												<td>2</td>
												<td>Ceftiofur(30)</td>
												<td>FUR30</td>
												<td>17</td>
												<td>18-20</td>
												<td>21</td>
												<td style="padding: 0 3px 0 3px;" id="res1_2"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_2"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_2"></td>
											</tr>
											<tr>
												<td>3</td>
												<td>Enrofloxacin(5)</td>
												<td>ENR5</td>
												<td>12</td>
												<td>13-15</td>
												<td>16</td>
												<td style="padding: 0 3px 0 3px;" id="res1_3"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_3"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_3"></td>
											</tr>
											<tr>
												<td>4</td>
												<td>Colistin(10)</td>
												<td>CT10</td>
												<td>8</td>
												<td>9-10</td>
												<td>11</td>
												<td style="padding: 0 3px 0 3px;" id="res1_4"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_4"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_4"></td>
											</tr>
											<tr>
												<td>5</td>
												<td>Gentamycin(10)</td>
												<td>GM10</td>
												<td>12</td>
												<td>13-14</td>
												<td>15</td>
												<td style="padding: 0 3px 0 3px;" id="res1_5"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_5"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_5"></td>
											</tr>
											<tr>
												<td>6</td>
												<td>Oxytetracycin</td>
												<td>T30</td>
												<td>14</td>
												<td>15-18</td>
												<td>19</td>
												<td style="padding: 0 3px 0 3px;" id="res1_6"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_6"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_6"></td>
											</tr>
											<tr>
												<td>7</td>
												<td>Trimethoprim +<br/>Sulfamethoxazole<br/>(1.25+23.75)</td>
												<td>SXT25</td>
												<td>10</td>
												<td>11-15</td>
												<td>16</td>
												<td style="padding: 0 3px 0 3px;" id="res1_7"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_7"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_7"></td>
											</tr>
											<tr>
												<td>8</td>
												<td>Tilmicosin(15)</td>
												<td>TIL15</td>
												<td>10</td>
												<td>11</td>
												<td>12</td>
												<td style="padding: 0 3px 0 3px;" id="res1_8"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_8"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_8"></td>
											</tr>
											<tr>
												<td>9</td>
												<td>Tylosin</td>
												<td>TY30</td>
												<td>10</td>
												<td>11-19</td>
												<td>20</td>
												<td style="padding: 0 3px 0 3px;" id="res1_9"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_9"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_9"></td>
											</tr>
											<tr>
												<td>10</td>
												<td>Florfenicol</td>
												<td>FFC30</td>
												<td>14</td>
												<td>15-18</td>
												<td>19</td>
												<td style="padding: 0 3px 0 3px;" id="res1_10"></td>
												<td style="padding: 0 3px 0 3px;" id="res2_10"></td>
												<td style="padding: 0 3px 0 3px;" id="resMemo_10"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div style="text-align:center">
									<button type="button" id="antiSave" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
	 			</div><!-- /.inputType2 -->

				<div class="row inputType3 iptPop" style="display:none">
					<div class="col-md-12">
						<div class="card card-primary">
							<div class="card-body">
								<div class="chart">
									<canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
								</div>
							</div>
						</div>
					</div>
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult" name="inspResult"></textarea>
											</td>
										</tr>
										<tr>
											<td class="txtc">
												<button type="button" onclick="saveMemo(3)" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered text-nowrap">
										<thead>
											<tr>
												<td style="width:50%;background-color:#F2F2F2">시료명</td>
												<td style="width:50%;background-color:#F2F2F2">데이터</td>
											</tr>
										</thead>
										<tbody id="serum">
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_1">No. 1</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_1"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_2">No. 2</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_2"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_3">No. 3</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_3"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_4">No. 4</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_4"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_5">No. 5</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_5"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_6">No. 6</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_6"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_7">No. 7</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_7"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_8">No. 8</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_8"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_9">No. 9</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_9"></td>
											</tr>
											<tr>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="nm_10">No.10</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="dt_10"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div style="text-align:center">
									<button type="button" id="serumSave" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
	 			</div><!-- /.inputType3 -->
				<div class="row inputType4 iptPop" style="display:none">
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult" name="inspResult"></textarea>
											</td>
										</tr>
										<tr>
											<td class="txtc">
												<button type="button" onclick="saveMemo(4)" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->

							<div style="height:10px;">

							</div>
							<div class="card-header">
								<h3 class="card-title">사진</h3>
							</div>
							<div class="card-body">
								<div class="fileBox">
									<label for="inspResultFile3">결과사진추가</label>
									<input type="file" id="inspResultFile3" onchange="addFileSet3(this, '');">
								</div>

								<div>
									<form id="fileForm3" method="post" enctype="multipart/form-data">
										<input type="hidden" id="inspNo" name="inspNo"/>
										<input type="hidden" id="rqstNo" name="rqstNo" value="${rceptInfo.rqstNo }"/>
										<div class="filter-container row previewList3"></div>
									</form>
								</div>
								<div style="text-align:center">
									<button type="button" id="fileSave3" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered text-nowrap">
										<thead>
											<tr>
												<td style="background-color:#F2F2F2;width:10%;">No.</td>
												<td style="background-color:#F2F2F2;width:*;">시료</td>
												<td style="background-color:#F2F2F2;width:10%;">시료량</td>
												<td style="background-color:#F2F2F2;width:10%;">결과</td>
												<td style="background-color:#F2F2F2;width:25%;">비고</td>
											</tr>
										</thead>
										<tbody id="pcr">
											<tr>
												<td>1</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_1"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_1"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_1"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_1"></td>
											</tr>
											<tr>
												<td>2</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_2"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_2"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_2"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_2"></td>
											</tr>
											<tr>
												<td>3</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_3"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_3"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_3"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_3"></td>
											</tr>
											<tr>
												<td>4</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_4"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_4"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_4"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_4"></td>
											</tr>
											<tr>
												<td>5</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_5"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_5"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_5"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_5"></td>
											</tr>
											<tr>
												<td>6</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_6"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_6"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_6"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_6"></td>
											</tr>
											<tr>
												<td>7</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_7"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_7"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_7"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_7"></td>
											</tr>
											<tr>
												<td>8</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_8"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_8"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_8"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_8"></td>
											</tr>
											<tr>
												<td>9</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_9"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_9"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_9"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_9"></td>
											</tr>
											<tr>
												<td>10</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_10"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_10"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_10"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_10"></td>
											</tr>
											<tr>
												<td>11</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_11"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_11"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_11"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_11"></td>
											</tr>
											<tr>
												<td>12</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_12"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_12"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_12"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_12"></td>
											</tr>
											<tr>
												<td>13</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_13"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_13"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_13"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_13"></td>
											</tr>
											<tr>
												<td>14</td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="sample_14"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="capacity_14"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="result_14"></td>
												<td style="height:34px; padding: 1px 3px 1px 3px;" id="rmk_14"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div style="text-align:center">
									<button type="button" id="pcrSave" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
	 			</div><!-- /.inputType4 -->
				<div class="row inputType5 iptPop" style="display:none">
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult" name="inspResult"></textarea>
											</td>
										</tr>
										<tr>
											<td class="txtc">
												<button type="button" onclick="saveMemo(5)" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered text-nowrap">
										<colgroup>
											<col style="width:50%"/>
											<col style="width:50%"/>
										</colgroup>

										<tbody id="bloodChem">

										</tbody>
									</table>
								</div>
								<div style="text-align:center">
									<button type="button" id="bcSave" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
	 			</div><!-- /.inputType5 -->

				<div class="row inputType6 iptPop" style="display:none">
	 				<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">검사메모</h3>
							</div>
							<div class="card-body">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<textarea class="form-control" rows="3" id="inspResult" name="inspResult"></textarea>
											</td>
										</tr>
										<tr>
											<td class="txtc">
												<button type="button" onclick="saveMemo(6)" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered text-nowrap">
										<colgroup>
											<col style="width:50%"/>
											<col style="width:50%"/>
										</colgroup>

										<tbody id="cbc">

										</tbody>
									</table>
								</div>
								<div style="text-align:center">
									<button type="button" id="cbcSave" style="width:161.2px" class="btn btn-primary btn-flat"><i class="fas fa-pencil-alt"></i> 저장</button>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
	 				</div>
	 			</div><!-- /.inputType6 -->

	 			<form id="inspOpinion">
	 				<input type="hidden" id="inspSickCd" name="inspSickCd"/>
	 			</form>
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>


	<jsp:include page="../layer/layout_footer.jsp"></jsp:include>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- date-range-picker -->
<script src="resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- bootstrap color picker -->
<script src="resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="resources/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="resources/plugins/dropzone/min/dropzone.min.js"></script>
<!-- Customizing Js -->
<script src="resources/js/common.js"></script>
<!-- Page specific script -->
<!-- Toastr -->
<script src="resources/plugins/toastr/toastr.min.js"></script>
<!-- ChartJS -->
<script src="resources/plugins/chart.js/Chart.min.js"></script>

<script>
var chartObj;
$(function () {

	$.gfn_getCode('B001-04-23',callBackBloodChem);
	$.gfn_getCode('B001-04-24',callBackCbc);

	$.ajax({
		url : "sampleList",
		data : {rqstNo : "${rceptInfo.rqstNo}"},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			$(".chks").each(function(){
				for(var i=0; i<data.length; i++){
					if($(this).val() == data[i].sampleCode){
						$(this).prop("checked", true);
						if($(this).val() == 'A002-6'){
							$("#chk06").val(data[i].sampleMemo);
							$("#chk06").show();
						}
					}
				}
			})
		}
	});

	$.ajax({
		url : "histList",
		data : {rqstNo : "${rceptInfo.rqstNo}"},
		type : "POST",
		dataType : "JSON",
		success : function(data){
			$(".chkh").each(function(){
				for(var i=0; i<data.length; i++){
					if($(this).val() == data[i].histCode){
						$(this).prop("checked", true);
						if($(this).val() == 'ERR001-06'){
							$("#chk17").val(data[i].histMemo);
							$("#chk17").show();
						}
					}
				}
			})
		}
	});

	$(".chks , .chkh").prop("disabled", true);

});

var fileNo = 0;
var filesArr = new Array();

/* 첨부파일 추가 */
function addFileSet(obj){

	var file = obj.files[0];
	// 첨부파일 검증
	if (validation(file)) {

		// 목록 추가
		var htmlData = '';
		htmlData += '<div class="filtr-item col-sm-3" id="previewImg'+fileNo+'">';
		htmlData += '	<a id="imgLoad'+fileNo+'">';
		htmlData += '		<img id="imgPreview'+fileNo+'" class="img-fluid mb-2" style="width:140px;height:140px"/>';
		htmlData += '	</a>';
		htmlData += '</div>';
		htmlData += '<div class="col-sm-9 preview" id="preview'+fileNo+'">';
		htmlData += '	<div class="row">';
		htmlData += '		<div class="col-8">';
		htmlData += '			<input type="text" class="form-control" id="title'+fileNo+'" placeholder="장기">';
		htmlData += '		</div>';
		htmlData += '		<div class="col-4" style="padding-top:-9px">';
		htmlData += '			<label for="chk1"></label>';
		htmlData += '			<div class="form-group clearfix" style="margin-left:9px;margin-top:-10px;">';
		htmlData += '				<div class="icheck-primary d-inline">';
		htmlData += '					<input type="checkbox" id="chk'+fileNo+'">';
		htmlData += '					<label for="chk'+fileNo+'">비공개</label>';
		htmlData += '				</div>';
		htmlData += '				<a class="delete" onclick="deleteFile('+fileNo+');"><i class="far fa-minus-square"></i></a>';
        htmlData += '				<input type="hidden" id="file'+fileNo+'" value="'+file.name+'">';
		htmlData += '			</div>';
		htmlData += '		</div>';
		htmlData += '	</div>';
		htmlData += '	<div class="row">';
		htmlData += '		<div class="col-12">';
		htmlData += '			<textarea class="form-control" rows="3" id="content'+fileNo+'" placeholder="메모"></textarea>';
		htmlData += '		</div>';
		htmlData += '	</div>';
		htmlData += '</div>';

		$(".previewList").append(htmlData);

		// 파일 배열에 담기
		var reader = new FileReader();
		reader.onload = function (e) {
			filesArr.push(file);
			var res = e.target.result;
			$('#imgPreview'+fileNo).attr("src", res);
			fileNo++;
		};
		reader.readAsDataURL(file);
	}

	// 초기화
	document.querySelector("input[type=file]").value = "";
}

/* 첨부파일 추가 */
function addFileSet2(obj){

	var file = obj.files[0];
	// 첨부파일 검증
	if (validation(file)) {

		// 목록 추가
		var htmlData = '';
		htmlData += '<div class="filtr-item" id="previewImg'+fileNo+'">';
		htmlData += '	<a id="imgLoad'+fileNo+'">';
		htmlData += '		<img id="imgPreview'+fileNo+'" class="img-fluid mb-2" style="width:140px;height:140px"/>';
		htmlData += '	</a>';
        htmlData += '	<input type="hidden" id="file'+fileNo+'" value="'+file.name+'">';
		htmlData += '</div>';

		$(".previewList2").append(htmlData);

		// 파일 배열에 담기
		var reader = new FileReader();
		reader.onload = function (e) {
			filesArr.push(file);
			var res = e.target.result;
			$('#imgPreview'+fileNo).attr("src", res);
			fileNo++;
		};
		reader.readAsDataURL(file);
	}

	// 초기화
	document.querySelector("input[type=file]").value = "";
}

/* 첨부파일 추가 */
function addFileSet3(obj){

	var file = obj.files[0];
	// 첨부파일 검증
	if (validation(file)) {

		// 목록 추가
		var htmlData = '';
		htmlData += '<div class="filter-item" id="previewImg'+fileNo+'">';
		htmlData += '	<a id="imgLoad'+fileNo+'">';
		htmlData += '		<img id="imgPreview'+fileNo+'" class="img-fluid mb-2" style="width:140px;height:140px"/>';
		htmlData += '	</a>';
        htmlData += '	<input type="hidden" id="file'+fileNo+'" value="'+file.name+'">';
		htmlData += '</div>';

		$(".previewList3").append(htmlData);

		// 파일 배열에 담기
		var reader = new FileReader();
		reader.onload = function (e) {
			filesArr.push(file);
			var res = e.target.result;
			$('#imgPreview'+fileNo).attr("src", res);
			fileNo++;
		};
		reader.readAsDataURL(file);
	}

	// 초기화
	document.querySelector("input[type=file]").value = "";
}


/* 첨부파일 검증 */
function validation(obj){
	const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
	if (obj.name.length > 100) {
		alert("파일명이 100자 이상인 파일은 제외되었습니다.");
		return false;
	} else if (obj.size > (100 * 1024 * 1024)) {
		alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
		return false;
	} else if (obj.name.lastIndexOf('.') == -1) {
		alert("확장자가 없는 파일은 제외되었습니다.");
		return false;
	} else if (!fileTypes.includes(obj.type)) {
		alert("첨부가 불가능한 파일은 제외되었습니다.");
		return false;
	} else {
		return true;
	}
}

/* 첨부파일 삭제 */
function deleteFile(num) {
	$("#previewImg"+num).remove();
	$("#preview"+num).remove();
	filesArr[num].is_delete = true;
}

/*서버파일삭제
 * 기존등록된 파일은 삭제할 경우 즉시 삭제
 */
function deleteServerFile(fileNo){
	if(confirm('삭제한 파일은 복구하실수 없습니다. 삭제하시겠습니까?')){
		$.ajax({
			url : 'removeFileByFileNo',
			data : {'fileNo':fileNo},
			dataType : 'json',
			type :'post',
			success:function(data){
				if(data.result == 'succ'){
					$("#previewImg"+fileNo).remove();
					$("#preview"+fileNo).remove();
					toastr.info('선택하신 파일이 삭제되었습니다.');
				}
			}
		})
	}
}

function imgView(name){
	//호스팅
	//var path = '/home/hosting_users/avinext/tomcat/webapps/files/';
	var path = '/abnext/resources/files/';
	$(".image").attr("src",path+name);
	$('#imgView').modal();
}


/*****************************************************************
 *                  검 사 클 릭 이 벤 트                                                                           *
 *****************************************************************/
$("#inspList").find("tr").click(function(){
	if($(this).find("input:checkbox[id^=chk]").is(":checked")){
		$(this).find("input:checkbox[id^=chk]").prop("checked", false);
		$("#inspNo").val("");
		$(".iptPop").hide();
	}else {
		filesArr = new Array();
		fileNo = 0;
		$("#inspList").find("tr").each(function(){
			$(this).find("input:checkbox[id^=chk]").prop("checked", false);
		});
		$(this).find("input:checkbox[id^=chk]").prop("checked", true);

		$("[name=inspNo]").val($(this).find("[id^=inspNo]").val());
		$("#inspSickCd").val($(this).find("[id^=inspThirdCd]").val());

		if($(this).find("[id^=inspSecondCd]").val() == 'B001-01-01'){
			fnPcr();
		}else if($(this).find("[id^=inspSecondCd]").val() == 'B001-01-14'){
			fnAnti();
		}else if($(this).find("[id^=inspSecondCd]").val() == 'B001-03-18'){
			fnSerum();
		}else if($(this).find("[id^=inspSecondCd]").val() == 'B001-04-23'){
			fnBloodChem();
		}else if($(this).find("[id^=inspSecondCd]").val() == 'B001-04-24'){
			fnCbc();
		}else {
			fnElse();
		}
	}

});



/*****************************************************************
 *                  검 사 메 모 저 장                                                                              *
 *****************************************************************/
function saveMemo(type){
	var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));
	var opinComment = $(".inputType"+type).find("#inspResult").val();

	var data = {
		inspNo : $("#inspNo").val(),
		inspSickCd : $("#inspSickCd").val(),
		insId : userInfo.userId,
		opinComment : opinComment
	}

	$.ajax({
		url : "modifyResult",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("저장하였습니다.");
		}
	});

}

/*****************************************************************
 *                  검 사 사 진 저 장                                                                              *
 *****************************************************************/
$("#fileSave").click(function(){

	var fileList = new Array();
	var formData = new FormData($('#fileForm')[0]);

	var fileNames = new Array();
	var fileTitles = new Array();
	var fileContents = new Array();
	var fileCloseYn = new Array();
	var chkYn;

	var fileInfoList = {};

	$('.preview').each(function(){
		fileNames.push($(this).find("[id^=file]").val());
		fileTitles.push($(this).find("[id^=title]").val());
		fileContents.push($(this).find("[id^=content]").val());
		if($(this).find("input:checkbox[id^=chk]").is(":checked")){
			chkYn = 'Y';
		}else {
			chkYn = 'N';
		}
		fileCloseYn.push(chkYn);
	});

	for (var i = 0; i < filesArr.length; i++) {
        if (!filesArr[i].is_delete) {
        	for (var j=0; j<fileNames.length; j++){
        		if(filesArr[i].name == fileNames[j].trim()){
        			formData.append('fileList',filesArr[i]);
        			formData.append('titleList',fileTitles[i]);
        			formData.append('contentList',fileContents[i]);
        			formData.append('closeYnList',fileCloseYn[i]);
        		}
        	}
        }
	}

	//로그인유저정보
	var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));
	formData.append('uptId', userInfo.userId);

	$.ajax({
		url : 'inspFileUpload',
		data : formData,
		dataType : 'json',
		type : 'post',
		processData : false,
		contentType : false,
		success : function(data){
			if(data.result == 'succ'){
				alert("사진등록하였습니다.");
			}
		}
	});
});


$("#fileSave2").click(function(){

	var fileList = new Array();
	var formData = new FormData($('#fileForm2')[0]);

	var fileNames = new Array();
	$('.previewList2').find(".filtr-item").each(function(){
		fileNames.push($(this).find("[id^=file]").val());
	});

	for (var i = 0; i < filesArr.length; i++) {
        if (!filesArr[i].is_delete) {
        	for (var j=0; j<fileNames.length; j++){
				if(filesArr[i].name == fileNames[j].trim()){
        			formData.append('fileList',filesArr[i]);
        		}
        	}
        }
	}

	//로그인유저정보
	var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));
	formData.append('uptId', userInfo.userId);

	$.ajax({
		url : 'inspFileUpload2',
		data : formData,
		dataType : 'json',
		type : 'post',
		processData : false,
		contentType : false,
		success : function(data){
			if(data.result == 'succ'){
				alert("사진등록하였습니다.");
			}
		}
	});
});


$("#fileSave3").click(function(){

	var fileList = new Array();
	var formData = new FormData($('#fileForm3')[0]);

	var fileNames = new Array();
	$('.previewList3').find(".filter-item").each(function(){
		fileNames.push($(this).find("[id^=file]").val());
	});

	for (var i = 0; i < filesArr.length; i++) {
        if (!filesArr[i].is_delete) {
        	for (var j=0; j<fileNames.length; j++){
				if(filesArr[i].name == fileNames[j].trim()){
        			formData.append('fileList',filesArr[i]);
        		}
        	}
        }
	}

	//로그인유저정보
	var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));
	formData.append('uptId', userInfo.userId);

	$.ajax({
		url : 'inspFileUpload2',
		data : formData,
		dataType : 'json',
		type : 'post',
		processData : false,
		contentType : false,
		success : function(data){
			if(data.result == 'succ'){
				alert("사진등록하였습니다.");
			}
		}
	});
});

/*****************************************************************
 *                        항 생 제                                                                             *
 *****************************************************************/
$("#antibiotic").find("tr").find("td:eq(6),td:eq(7),td:eq(8)").click(function(){
	var txt = $(this).text();
	var selId = $(this).attr("id");
	var html = '<input type="text" value="'+txt+'" id="target" onfocusout="makeTd(\''+selId+'\')" style="width:100%">';
	$(this).html(html);
	$("#target").focus();
})

function makeTd(target){
	var val = $("#"+target).find("[id=target]").val();
	$("#"+target).text(val);
}

$("#antiSave").click(function(){

	var antiList = [];
	$("#antibiotic").find("tr").each(function(idx){
		var res1 = $(this).find("td:eq(6)").text();
		var res2 = $(this).find("td:eq(7)").text();
		var antiMemo = $(this).find("td:eq(8)").text();
		var antiNo = idx+1;

		var anti = {
			antiNo : antiNo,
			res1 : res1,
			res2 : res2,
			antiMemo : antiMemo,
			insId : JSON.parse(sessionStorage.getItem("userInfo")).userId
		}

		antiList.push(anti);
	})

	var data = {
		inspNo : $("#inspNo").val(),
		insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
		antiList : antiList
	}

	$.ajax({
		url : "insertAntibiotic",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("등록되었습니다.");
		}
	});

})

function fnAnti(){
	$(".iptPop").hide();
	$(".inputType2").show();

	$.ajax({
		url : 'getAntiList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			$("[name=inspResult]").val(data[0].inspResult);
			for(var i=0; i<data.length; i++){
				var item = data[i];
				var no = item.antiNo;
				$("#res1_"+no).text(item.res1);
				$("#res2_"+no).text(item.res2);
				$("#resMemo_"+no).text(item.antiMemo);
			}
		}
	});

	$.ajax({
		url : 'getFileList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var htmlData = '';
			$(".previewList").empty();
			$(".previewList2").empty();
			$(".previewList3").empty();

			for(var i=0; i<data.length; i++){
				var item = data[i];
				htmlData += '<div id="previewImg'+item.fileNo+'">';
				htmlData += '	<a id="imgLoad'+item.fileNo+'">';
				htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+item.filePath+item.fileNewNm+'"/>';
				htmlData += '	</a>';
				htmlData += '</div>';
			}
			$(".previewList2").append(htmlData);
		}
	});
}


/*****************************************************************
 *                        혈 청                                                                                 *
 *****************************************************************/
$("#serum").find("tr").find("td:eq(0),td:eq(1)").click(function(){
	var txt = $(this).text();
	var selId = $(this).attr("id");
	var html = '<input type="text" value="'+txt+'" id="target" onfocusout="makeTd(\''+selId+'\')" style="width:100%">';
	$(this).html(html);
	$("#target").focus();
})

$("#serumSave").click(function(){

	var serumList = [];
	$("#serum").find("tr").each(function(idx){
		var serName = $(this).find("td:eq(0)").text();
		var serData = $(this).find("td:eq(1)").text();

		var serum = {
			serName : serName,
			serData : serData,
			insId : JSON.parse(sessionStorage.getItem("userInfo")).userId
		}

		serumList.push(serum);
	})

	var data = {
		inspNo : $("#inspNo").val(),
		insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
		serumList : serumList
	}

	$.ajax({
		url : "insertSerum",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("등록되었습니다.");
		}
	});

})

function setChartData(data){
	var areaChartData = '';
	// x축값 구하기
	var xArr = new Array();
	var maxData = 0;
	for(var i=0; i<data.length; i++){
		if(maxData < data[i].serData){
			maxData = data[i].serData;
		}
	}

	if(maxData < 10) maxData = 10;

	for(var i=0; i<=maxData; i++){
		xArr.push(i);
	}

	// y축값 구하기
	var yArr = new Array();

	for(var i=0; i<=maxData; i++){
		var flag = false;
		for(var j=0; j<data.length; j++){
			if(i == data[j].serData){
				yArr.push(Number(data[j].cnt));
				flag = true;
			}
		}
		if(!flag){
			yArr.push(0);
		}

	}

	var dataSet = '';
	var dataSets = new Array();
	dataSet = {
			label               : '혈청개수',
			backgroundColor     : 'rgba(60,141,188,0.9)',
			borderColor         : '#3b8bba',
			pointRadius          : false,
			pointColor          : 'rgba(60,141,188,1)',
			pointStrokeColor    : 'fff',
			pointHighlightFill  : '#fff',
			pointHighlightStroke: 'rgba(60,141,188,1)',
			data                : yArr
		}
	dataSets.push(dataSet);

	var areaChartData = {
		labels  :	xArr,
		datasets: dataSets
	}

    var barChartCanvas = $('#barChart').get(0).getContext('2d');
    var barChartData = $.extend(true, {}, areaChartData);
    var temp0 = areaChartData.datasets[0];
    barChartData.datasets[0] = temp0;


    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    chartObj = new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData,
      options: barChartOptions
    })
}

function fnSerum(){
	$(".iptPop").hide();
	$(".inputType3").show();

	$.ajax({
		url : 'getSerumList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data != ''){
				$("[name=inspResult]").val(data[0].inspResult);
				for(var i=0; i<data.length; i++){
					var item = data[i];
					var no = i+1;
					$("#nm_"+no).text(item.serName);
					$("#dt_"+no).text(item.serData);
				}
			}else {
				$("[name=inspResult]").val("");
				for(var i=0; i<10; i++){
					var item = data[i];
					var no = i+1;
					$("#nm_"+no).text("No."+no);
					$("#dt_"+no).text("");
				}
			}
		}
	});

	$.ajax({
		url : 'getSerumChart',
		dataType : 'json',
		type : 'post',
		data : {inspNo : $("#inspNo").val()},
		success:function(data){
			$("#barChart").empty();
			if(chartObj != null){
				chartObj.destroy();
			}
			setChartData(data);
		}
	})
}


/*****************************************************************
 *                        P C R                                  *
 *****************************************************************/
$("#pcr").find("tr").find("td:eq(1),td:eq(2),td:eq(3),td:eq(4)").click(function(){
	var txt = $(this).text();
	var selId = $(this).attr("id");
	var html = '<input type="text" value="'+txt+'" id="target" onfocusout="makeTd(\''+selId+'\')" style="width:100%">';
	$(this).html(html);
	$("#target").focus();
})

$("#pcrSave").click(function(){

	var pcrList = [];
	$("#pcr").find("tr").each(function(idx){
		var smplName = $(this).find("td:eq(1)").text();
		var capacity = $(this).find("td:eq(2)").text();
		var result = $(this).find("td:eq(3)").text();
		var rmk = $(this).find("td:eq(4)").text();


		var pcr = {
			smplName : smplName,
			capacity : capacity,
			result : result,
			rmk : rmk,
			insId : JSON.parse(sessionStorage.getItem("userInfo")).userId
		}
		if(smplName != '') {
			pcrList.push(pcr);
		}
	})

	var data = {
		inspNo : $("#inspNo").val(),
		insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
		pcrList : pcrList
	}

	$.ajax({
		url : "insertPcr",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("등록되었습니다.");
		}
	});

})

function fnPcr(){
	$(".iptPop").hide();
	$(".inputType4").show();

	$.ajax({
		url : 'getPcrList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			$("[name=inspResult]").val(data[0].inspResult);
			for(var i=0; i<data.length; i++){
				var item = data[i];
				var no = i+1;
				$("#sample_"+no).text(item.smplName);
				$("#capacity_"+no).text(item.capacity);
				$("#result_"+no).text(item.result);
				$("#rmk_"+no).text(item.rmk);
			}
		}
	});

	$.ajax({
		url : 'getFileList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var htmlData = '';
			$(".previewList").empty();
			$(".previewList2").empty();
			$(".previewList3").empty();

			for(var i=0; i<data.length; i++){
				var item = data[i];
				htmlData += '<div id="previewImg'+item.fileNo+'">';
				htmlData += '	<a id="imgLoad'+item.fileNo+'">';
				htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+item.filePath+item.fileNewNm+'"/>';
				htmlData += '	</a>';
				htmlData += '</div>';
			}
			$(".previewList3").append(htmlData);
		}
	});
}


/*****************************************************************
 *                        기 타                                                                                 *
 *****************************************************************/
function fnElse(){
	$(".iptPop").hide();
	$(".inputType1").show();
	$.ajax({
		url : 'getFileList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var htmlData = '';
			$(".previewList").empty();
			$("[name=inspResult]").val(data[0].inspResult);

			for(var i=0; i<data.length; i++){
				var item = data[i];
				var len = i+1;
				var checked = '';
				if(item.closeYn == 'Y'){
					checked = 'checked';
				}
				htmlData += '<div class="filtr-item col-sm-3" id="previewImg'+item.fileNo+'">';
				htmlData += '	<a id="imgLoad'+item.fileNo+'">';
				htmlData += '		<img class="img-fluid mb-2" style="width:140px;height:140px" src="'+item.filePath+item.fileNewNm+'"/>';
				htmlData += '	</a>';
				htmlData += '</div>';
				htmlData += '<div class="col-sm-9" id="preview'+item.fileNo+'">';
				htmlData += '	<div class="row">';
				htmlData += '		<div class="col-8">';
				htmlData += '			<input type="text" class="form-control" id="title'+item.fileNo+'" placeholder="장기" value="'+item.title+'" disabled>';
				htmlData += '		</div>';
				htmlData += '		<div class="col-4" style="padding-top:-9px">';
				htmlData += '			<label for="chk1"></label>';
				htmlData += '			<div class="form-group clearfix" style="margin-left:9px;margin-top:-10px;">';
				htmlData += '				<div class="icheck-primary d-inline">';
				htmlData += '					<input type="checkbox" id="chk'+item.fileNo+'" '+checked+' disabled>';
				htmlData += '					<label for="chk'+item.fileNo+'">비공개</label>';
				htmlData += '				</div>';
				htmlData += '				<a class="delete" onclick="deleteServerFile('+item.fileNo+');"><i class="far fa-minus-square"></i></a>';
		        htmlData += '				<input type="hidden" id="file'+item.fileNo+'" value="'+item.fileNewNm+'">';
				htmlData += '			</div>';
				htmlData += '		</div>';
				htmlData += '	</div>';
				htmlData += '	<div class="row">';
				htmlData += '		<div class="col-12">';
				htmlData += '			<textarea class="form-control" rows="3" id="content'+item.fileNo+'" placeholder="메모" disabled>'+item.content+'</textarea>';
				htmlData += '		</div>';
				htmlData += '	</div>';
				htmlData += '</div>';
			}
			$(".previewList").append(htmlData);
		}
	});
}



/*****************************************************************
 *                       혈 액 화 학 검 사                                                                   *
 *****************************************************************/
function fnBloodChem(){
	$(".iptPop").hide();
	$(".inputType5").show();

	$.ajax({
		url : 'getBcList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			$("[name=inspResult]").val(data[0].inspResult);
			for(var i=0; i<data.length; i++){
				var item = data[i];
				$("#bloodChem").find("tr").each(function(){
					if($(this).find("td:eq(0)").text() == item.itemName){
						$(this).find("td:eq(1)").text(item.val);
					}
				})
			}
		}
	});
}

$("#bcSave").click(function(){

	var bcList = [];
	$("#bloodChem").find("tr").each(function(idx){
		var itemName = $(this).find("td:eq(0)").text();
		var val = $(this).find("td:eq(1)").text();

		if(val != ''){
			var bloodChem = {
				itemName : itemName,
				val : val,
				insId : JSON.parse(sessionStorage.getItem("userInfo")).userId
			}
			bcList.push(bloodChem);
		}
	})

	var data = {
		inspNo : $("#inspNo").val(),
		insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
		bcList : bcList
	}

	$.ajax({
		url : "insertBloodChem",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("등록되었습니다.");
		}
	});

})

function callBackBloodChem(data){
	console.log(data);
	var html = '';
	$("#bloodChem").empty();
	for(var i=0; i<data.length; i++){
		html += '<tr>';
		html += '	<td id="bcnm_'+(i+1)+'">'+data[i].codeNm+'</td>';
		html += '	<td style="height:34px; padding: 1px 3px 1px 3px;" id="bcvl_'+(i+1)+'"></td>';
		html += '</tr>';
	}
	$("#bloodChem").html(html);

	$("#bloodChem").find("tr").find("td:eq(1)").click(function(){
		var txt = $(this).text();
		var selId = $(this).attr("id");
		var html = '<input type="text" value="'+txt+'" id="target" onfocusout="makeTd(\''+selId+'\')" style="width:100%">';
		$(this).html(html);
		$("#target").focus();

	})
}


/*****************************************************************
 *                       혈 구 검 사                                                                           *
 *****************************************************************/
  $("#cbcSave").click(function(){

	var bcList = [];
	$("#cbc").find("tr").each(function(idx){
		var itemName = $(this).find("td:eq(0)").text();
		var val = $(this).find("td:eq(1)").text();

		if(val != ''){
			var cbc = {
				itemName : itemName,
				val : val,
				insId : JSON.parse(sessionStorage.getItem("userInfo")).userId
			}
			bcList.push(cbc);
		}
	})

	var data = {
		inspNo : $("#inspNo").val(),
		insId : JSON.parse(sessionStorage.getItem("userInfo")).userId,
		bcList : bcList
	}

	$.ajax({
		url : "insertCbc",
		data : data,
		type : "POST",
		dataType : "JSON",
		success : function(data){
			alert("등록되었습니다.");
		}
	});

})

function fnCbc(){
	$(".iptPop").hide();
	$(".inputType6").show();

	$.ajax({
		url : 'getCbcList',
		data : {inspNo : $("#inspNo").val()},
		dataType : 'json',
		type : 'post',
		success : function(data){
			$("[name=inspResult]").val(data[0].inspResult);
			for(var i=0; i<data.length; i++){
				var item = data[i];
				$("#cbc").find("tr").each(function(){
					if($(this).find("td:eq(0)").text() == item.itemName){
						$(this).find("td:eq(1)").text(item.val);
					}
				})
			}
		}
	});

}

function callBackCbc(data){
	var html = '';
	$("#cbc").empty();
	for(var i=0; i<data.length; i++){
		html += '<tr>';
		html += '	<td id="cbcnm_'+(i+1)+'">'+data[i].codeNm+'</td>';
		html += '	<td style="height:34px; padding: 1px 3px 1px 3px;" id="cbcvl_'+(i+1)+'"></td>';
		html += '</tr>';
	}
	$("#cbc").html(html);

	$("#cbc").find("tr").find("td:eq(1)").click(function(){
		var txt = $(this).text();
		var selId = $(this).attr("id");
		var html = '<input type="text" value="'+txt+'" id="target" onfocusout="makeTd(\''+selId+'\')" style="width:100%">';
		$(this).html(html);
		$("#target").focus();
	})
}

</script>
<jsp:include page="../popup/pop_fileView.jsp"></jsp:include>
</body>
</html>


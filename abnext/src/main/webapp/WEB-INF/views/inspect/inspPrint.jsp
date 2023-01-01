<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%

pageContext.setAttribute("CR", "\r");

pageContext.setAttribute("LF", "\n");

%>
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
	<!-- summernote -->
	<link rel="stylesheet" href="resources/plugins/summernote/summernote-bs4.min.css">
	<style>
		.txtc {text-align:center;}
		.txtl {text-align:left;}
		td {text-align:center}


		html, body {
		    width: 100%;
		    height: 100%;
		    margin: 0;
		    padding: 0;
		    background-color: #ddd;

		}

		* {
		    box-sizing: border-box;
		    -moz-box-sizing: border-box;
		}

		.paper {
		    width: 210mm;
		    min-height: 297mm;
		    padding: 10mm;
		    margin: 5mm auto;
		    border-radius: 5px;
		    background: #fff;
		    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
		}

		.paperContent {
		    padding: 0;
		    height: 257mm;
		}

		@page {
		    size: A4;
		    margin: 0;
		}

		@media print {
		    #printDiv {
		        width: 210mm;
		        height: 297mm;
		        background: #fff;
		    }
		    .paper {
		        margin: 0;
		        border-radius: initial;
		        width: initial;
		        min-height: initial;
		        box-shadow: initial;
		        background: initial;
		        page-break-after: always;
		    }
		}


	</style>

</head>
<body>
<div class="wrapper">

	<div id="printDiv" style="">

	</div>

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
<!-- Summernote -->
<script src="resources/plugins/summernote/summernote-bs4.min.js"></script>
<script>

var resultCnt = 1;

$(function () {


});

window.onload = function(){
	pp();
}





function pp(){

	$("#printDiv").empty();

	var html = '';
	var animSex = '${rceptInfo.animSex }';
	var animSexNm = '';
	if(animSex == 'M'){
		animSexNm = '수컷';
	}else if(animSex == 'F'){
		animSexNm = '암컷';
	}else {
		animSexNm = '모름';
	}

	var curDt = new Date();
	var birthArr = '${rceptInfo.animBirth}'.split(".");
	var setYear = curDt.getFullYear()-birthArr[0];
	var setMonth = curDt.getMonth()+1-birthArr[1];
	var setDate = curDt.getDate()-birthArr[2];
	var month = setYear*12;
	if(setDate >= 0){
		month += setMonth+1;
	}else {
		month += setMonth;
	}

	html +=	'		<div class="card-body table-responsive pdfStyle" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">반려조류 검사결과서</span><br/><br/>';
	html +=	'			<table class="table table-bordered text-nowrap">';
	html +=	'				<tbody>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#929292;font-weight:bold;" class="txtc" colspan="2">${rceptInfo.animNm}</td>';
	//html +=	'						<td style="width:30%;background-color:#929292"" class="txtc"></td>';
	html +=	'						<td style="width:20%;background-color:#929292;font-weight:bold;" class="txtc" colspan="2">${rceptInfo.pdlNo }</td>';
	//html +=	'						<td style="width:30%;background-color:#929292"" class="txtc"></td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">보호자</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.animButler }</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">신청자(기관)</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.hospNm }</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">종</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.jong }</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">담당수의사</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.docNm }</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">품종</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.animFirstNm } ${rceptInfo.animSecondNm } ${rceptInfo.animThirdNm }</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">시료수령일</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.rqstDt}</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">성별</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">'+animSexNm+'</td>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">검사일</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">${rceptInfo.finishDt }</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;" class="txtc">나이</td>';
	html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc">'+month+'M</td>';
	html +=	'						<td style="background-color:#F2F2F2" class="txtc" colspan="2"></td>';
	//html +=	'						<td style="width:30%;background-color:#F2F2F2" class="txtc"></td>';
	html +=	'					</tr>';
	html +=	'				</tbody>';
	html +=	'			</table>';
	html +=	'			<div style="height:50px;"></div>';
	html +=	'			<table class="table table-bordered text-nowrap">';
	html +=	'				<tbody>';
	html +=	'					<tr>';
	html +=	'						<td style="width:70%;background-color:#929292;font-weight:bold;" class="txtc">검사항목</td>';
	html +=	'						<td style="width:30%;background-color:#929292;font-weight:bold;" class="txtc">결과</td>';
	html +=	'					</tr>';

	html +=	'					<c:forEach var="item" items="${inspList }" varStatus="status">';
	html +=	'						<tr>';
	html +=	'							<td style="width:70%;background-color:#F2F2F2" class="txtl">';
	if('${item.inspSecondCd }' == 'B001-04-23' || '${item.inspSecondCd }' == 'B001-04-24'){
		html += '							${item.inspSecondNm }';
	}else{
		html += '							${item.inspThirdNm }';
	}
	html += '							</td>';
	html +=	'							<c:set var="inspRes" value="${fn:replace(fn:replace(item.inspResult, LF, \''), CR, \'')}" />';
	html +=	'							<td style="width:30%;background-color:#F2F2F2" class="txtc">${inspRes}</td>';
	html +=	'						</tr>';
	html +=	'						<c:set var="len" value="${status.index}"/>';
	html +=	'					</c:forEach>';

	var inspLen = parseInt('${len}');
	var addTr = 0;
	if(inspLen < 9){
		addTr = 9-inspLen;
	}
	for(var i=0; i<addTr; i++){
		html +=	'						<tr>';
		html +=	'							<td style="width:70%;height:36.39px;background-color:#F2F2F2" class="txtl"></td>';
		html +=	'							<td style="width:30%;height:36.39px;background-color:#F2F2F2" class="txtc"></td>';
		html +=	'						</tr>';
	}

	html +=	'				</tbody>';
	html +=	'			</table>';

	html +=	'			<div style="height:50px;"></div>';
	html +=	'			<table class="table table-bordered text-nowrap">';
	html +=	'				<tbody>';
	html +=	'					<tr>';
	html +=	'						<td style="background-color:#929292;font-weight:bold;font-size:17px;" class="txtc">종합소견</td>';
	html +=	'					</tr>';
	html +=	'					<tr>';
	html +=	'						<td style="width:70%;background-color:#F2F2F2;:" class="txtl"><div style="min-height:8em;">${rceptInfo.finalMemo }</div></td>';
	html +=	'					</tr>';
	html +=	'				</tbody>';
	html +=	'			</table>';

	html +=	'			<div style="height:50px;"></div>';
	html += '			<div style="width:100%;text-align:right;padding-right:10%;">';
	html += '				<span style="font-weight:bold;font-size:20px;">(주)아비넥스트 대표 모인필</span>';
	html += '			</div>';

	html +=	'			<div style="height:50px;"></div>';
	html += '			<span style="font-weight:bold;">검사신청 및 문의<br/>avinext@avinext.co.kr T. 043-292-9998 F. 043-292-9980<br/>http://avinextlab.com/<br/>충청북도 청주시 상당구 남일면 쌍암동길 30-7</span>';


	html +=	'		</div>';

	var shtml = makePdf(1,html);
	$("#printDiv").append(shtml);

	//var shtml2 = makePdfView(1,html);
	//$("#viewDiv").append(shtml2);

	'<c:forEach var="item" items="${inspList }" varStatus="status">';
		if('${item.inspSecondCd}' == 'B001-01-01' || '${item.inspSecondCd}' == 'B001-02-01' || '${item.inspSecondCd}' == 'B001-02-16' || '${item.inspSecondCd}' == 'B001-01-02' || '${item.inspSecondCd}' == 'B001-02-02'){
			fnPcrPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-01-14' || '${item.inspSecondCd}' == 'B001-02-14'){
			fnAntiPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-03-18'){
			fnSerumPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-04-23'){
			fnBloodChemPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else if('${item.inspSecondCd}' == 'B001-04-24'){
			fnCbcPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}else {
			drawImgPdf('${status.index+2 }','${item.inspNo}','${item.inspSecondNm}','${item.inspThirdNm}');
		}
	'</c:forEach>';

	/*setTimeout(function(){
		fn_print('printDiv');
	}, 1000)
	*/
}

function fnPcrPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getPcrList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data.length>0){
				var html = '';
				html += '<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">PCR</span><br/><br/>';
				html += '	<div class="row">';
				html += '		<div class="table-responsive">';
				html += '			<table class="table table-bordered text-nowrap">';
				html += '				<thead>';
				html += '					<tr>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">검사방법</td>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">시료</td>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">검사항목</td>';
				html += '						<td style="background-color:#F2F2F2;width:*;font-weight:bold;">결과</td>';
				html += '					</tr>';
				html += '				</thead>';
				html += '				<tbody>';

				for(var i=0; i<data.length; i++){
					var item = data[i];

					html += '<tr>';
					html += '	<td>'+sec+'</td>';
					html += '	<td>'+item.smplName+'</td>';
					html += '	<td>'+thr+'</td>';
					html += '	<td>'+item.result+'</td>';
					html += '</tr>';
				}

				var addTr = 0;
				if(data.length < 17){
					addTr = 17-data.length;
				}
				for(var i=0; i<addTr; i++){
					html +=	'						<tr style="height:33.39px;">';
					html +=	'							<td class="txtl"></td>';
					html +=	'							<td class="txtl"></td>';
					html +=	'							<td class="txtl"></td>';
					html +=	'							<td class="txtc"></td>';
					html +=	'						</tr>';
				}

				html += '				</tbody>';
				html += '			</table>';

				html += '			<div style="height:60px;"></div>';
				html += '			<table class="table table-bordered text-nowrap">';
				html += '				<thead>';
				html += '					<tr style="height:100px;">';
				html += '						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				html += '						<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				html += '					</tr>';
				html += '				</thead>';
				html += '			</table>';
				html += '		</div>';
				html += '	</div>';
				html += '</div>';

				var shtml = makePdf(idx,html);
				$("#printDiv").append(shtml);

			}
		}
	});


}

function fnAntiPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getAntiList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '			<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">항생제감수성 검사</span><br/><br/>';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">번호</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">항생제</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">용량</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">약자</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">기준직경(mm)</td>';
			html += '								<td colspan="3" style="background-color:#F2F2F2;font-weight:bold;">결과<br/>직경<br/>(mm)</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">판독</td>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">R<br/>≤</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">I</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">S<br/>≥</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="antibiotic">';
			for(var i=0; i<data.length; i++){
				var item = data[i];
				html += '<tr>';
				html += '<td>'+item.antiNo+'</td>';
				html += '<td>'+item.antiName+'</td>';
				html += '<td>'+item.capacity+'</td>';
				html += '<td>'+item.nickName+'</td>';
				html += '<td>'+item.mini+'</td>';
				html += '<td>'+item.scope+'</td>';
				html += '<td>'+item.maxi+'</td>';
				html += '<td>'+item.res1+'</td>';
				html += '<td>'+item.res2+'</td>';
				html += '<td>'+item.antiMemo+'</td>';
				html += '</tr>';
			}

			var addTr = 0;
			if(data.length < 15){
				addTr = 15-data.length;
			}
			for(var i=0; i<addTr; i++){
				html +=	'						<tr style="height:33.39px;">';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'						</tr>';
			}

			html += '						</tbody>';
			html += '					</table>';

			html += '			<div style="height:60px;"></div>';
			html += '			<table class="table table-bordered text-nowrap">';
			html += '				<thead>';
			html += '					<tr style="height:100px;">';
			html += '						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '						<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '					</tr>';
			html += '				</thead>';
			html += '			</table>';

			html += '				</div>';
			html += '			</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);
		}
	});


}

var chartIdArr =new Array();
function fnSerumPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getSerumList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = '';
			html += '		<div class="card-body"  style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">'+sec+'</span><br/><br/>';
			html += '			<br/><br/>';
			html += '			<div class="chart">';
			html += '				<canvas id="barChartPdf'+idx+'" style="min-height: 350px; height: 350px; max-height: 350px; max-width: 100%;"></canvas>';
			html += '			</div>';
			html += '			<div class="chartImg">';
			html += '				<img id="chartImgTag'+idx+'"/>';
			html += '			</div>';
			html += '			<div style="height:350px;"></div>';
			html += '			<table class="table table-bordered text-nowrap">';
			html += '				<thead>';
			html += '					<tr style="height:100px;">';
			html += '						<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '						<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '					</tr>';
			html += '				</thead>';
			html += '			</table>';
			html += '		</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);

			$.ajax({
				url : 'getSerumChart',
				dataType : 'json',
				type : 'post',
				data : {inspNo : inspNo},
				success:function(data){
					setChartDataPdf(data,sec,idx);
					chartIdArr.push(idx);
				}
			})

		}
	});
}

function setChartDataPdf(data,title,idx){
	var areaChartData = '';
	// x축값 구하기
	var xArr = new Array();
	var maxData = 0;

	if(title == 'ELISA') maxData = 22;
	else maxData = 13;

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

    var barChartCanvas = $('#barChartPdf'+idx).get(0).getContext('2d');
    var barChartData = $.extend(true, {}, areaChartData);
    var temp0 = areaChartData.datasets[0];
    barChartData.datasets[0] = temp0;


    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData,
      options: barChartOptions
    })
}

function fnCbcPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getCbcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = "";
			html += '			<div class="card-body" style="width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">혈구검사</span><br/><br/>';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:20%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:*"/>';
			html += '						</colgroup>';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">항목명</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">결과</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">참조값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;" rowspan="2">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">단위</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최저</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최대</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="cbc">';

			for(var i=0; i<data.length; i++){

				var item = data[i].itemName;
				switch(item) {
					case 'WBC' : td2 = '10³/㎕'; td3 = '3'; td4 = '11'; break;
					case 'RBC' : td2 = '10^6/㎕'; td3 = '2.4'; td4 = '4.2'; break;
					case 'Hct' : td2 = '%'; td3 = '39'; td4 = '49'; break;
					case 'Hets' : td2 = '%'; td3 = '50'; td4 = '80'; break;
					case 'Eos' : td2 = '%'; td3 = '0'; td4 = '2'; break;
					case 'Baso' : td2 = '%'; td3 = '0'; td4 = '1'; break;
					case 'Monos' : td2 = '%'; td3 = '0'; td4 = '3'; break;
					case 'Lymphos' : td2 = '%'; td3 = '20'; td4 = '45'; break;
					default : td2 = '-'; td3 = '-'; td4 = '-'; break;
				}

				html += '<tr>';
				html += '	<td>'+data[i].itemName+'</td>';
				html += '	<td>'+data[i].val+'</td>';
				html += '	<td>'+td2+'</td>';
				html += '	<td>'+td3+'</td>';
				html += '	<td>'+td4+'</td>';
				html += '	<td>'+$.gfn_nvl(data[i].rmk)+'</td>';

				html += '</tr>';
			}

			var addTr = 0;
			if(data.length < 17){
				addTr = 17-data.length;
			}
			for(var i=0; i<addTr; i++){
				html +=	'						<tr style="height:33.39px;">';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'						</tr>';
			}

			html += '						</tbody>';
			html += '					</table>';

			html += '					</table>';
			html += '					<div style="height:60px;"></div>';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr style="height:100px;">';
			html += '								<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '								<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);


		}
	});
}

function fnBloodChemPdf(idx,inspNo,sec,thr,res){
	$.ajax({
		url : 'getBcList',
		data : {inspNo : inspNo},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var html = "";
			html += '			<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">혈액화학검사</span><br/><br/>';
			html += '				<div class="table-responsive">';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<colgroup>';
			html += '							<col style="width:20%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:15%"/>';
			html += '							<col style="width:*"/>';
			html += '						</colgroup>';
			html += '						<thead>';
			html += '							<tr>';
			html += '								<td rowspan="2" style="background-color:#F2F2F2;font-weight:bold;">항목명</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">결과</td>';
			html += '								<td colspan="2" style="background-color:#F2F2F2;font-weight:bold;">참조값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;" rowspan="2">비고</td>';
			html += '							</tr>';
			html += '							<tr>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">값</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">단위</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최저</td>';
			html += '								<td style="background-color:#F2F2F2;font-weight:bold;">최대</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '						<tbody id="bloodChem">';

			for(var i=0; i<data.length; i++){
				var item = data[i].itemName;
				switch(item) {
					case 'TP' : td2 = 'g/dL'; td3 = '5.4'; td4 = '8.2'; break;
					case 'Alb' : td2 = 'g/dL'; td3 = '2.2'; td4 = '4.4'; break;
					case 'Glob' : td2 = 'g/dL'; td3 = '1.5'; td4 = '5.7'; break;
					case 'A/G ratio' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'GLU' : td2 = 'mg/dL'; td3 = '70'; td4 = '150'; break;
					case 'AST' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'CK' : td2 = ''; td3 = ''; td4 = ''; break;
					case 'CA' : td2 = 'mg/dL'; td3 = '8.0'; td4 = '11.8'; break;
					case 'PHOS' : td2 = 'mg/dL'; td3 = '3.4'; td4 = '8.5'; break;
					case 'Na' : td2 = 'mmol/L'; td3 = '142'; td4 = '164'; break;
					case 'K' : td2 = 'mmol/L'; td3 = '3.7'; td4 = '5.8'; break;
					case 'Na/K ratio' : td2 = ''; td3 = ''; td4 = ''; break;
					default : td2 = ''; td3 = ''; td4 = ''; break;
				}

				html += '<tr>';
				html += '	<td>'+data[i].itemName+'</td>';
				html += '	<td>'+data[i].val+'</td>';
				html += '	<td>'+td2+'</td>';
				html += '	<td>'+td3+'</td>';
				html += '	<td>'+td4+'</td>';
				html += '	<td>'+data[i].rmk+'</td>';
				html += '</tr>';
			}

			var addTr = 0;
			if(data.length < 17){
				addTr = 17-data.length;
			}
			for(var i=0; i<addTr; i++){
				html +=	'						<tr style="height:33.39px;">';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'							<td class="txtl"></td>';
				html +=	'						</tr>';
			}

			html += '					</table>';
			html += '					<div style="height:60px;"></div>';
			html += '					<table class="table table-bordered text-nowrap">';
			html += '						<thead>';
			html += '							<tr style="height:100px;">';
			html += '								<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
			html += '								<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
			html += '							</tr>';
			html += '						</thead>';
			html += '					</table>';
			html += '				</div>';
			html += '			</div>';

			var shtml = makePdf(idx,html);
			$("#printDiv").append(shtml);
		}

	});
}

function drawImgPdf(idx,inspNo,sec,thr,res){
	var closeYn = 'N';
	$.ajax({
		url : 'getFileList',
		data : {inspNo : inspNo, fileGb : 'F001-05', closeYn : closeYn},
		dataType : 'json',
		type : 'post',
		success : function(data){
			var htmlData = '';
			var inputType1 = '';

			inputType1 += '<div class="card-body" style="font-size:12px;width:100%;text-align:center;"><span style="font-size:30px;font-weight:bold;">'+sec+'</span><br/><br/>';
			inputType1 += '		<div>';
			inputType1 += '			<div class="filter-container row previewList'+idx+'">';
			//이미지
			inputType1 += '				<table class="table table-bordered text-nowrap">';

			var rowSize = 0;
			var lastIndex = 0;

			for(var i=0; i<data.length; i++){
				var item = data[i];
				var checked = '';

				if(rowSize <= 3){
					if(lastIndex == i && lastIndex < (data.length-2)){
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+2].title+'</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+2].fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+item.content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+2].content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';

						lastIndex = i+3;
						rowSize++;
					}else if(lastIndex == i && lastIndex == (data.length-2)){
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+item.content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						rowSize++;
					}else if(lastIndex == i && lastIndex == (data.length-1) && lastIndex % 3 > 0){
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
						inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						inputType1 += '	<tr>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+item.content+'</textarea>';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '		<td style="width:33%;text-align:center;">';
						inputType1 += '		</td>';
						inputType1 += '	</tr>';
						rowSize++;
					}
				}
			}


				inputType1 += '</table>';
				inputType1 += 					'</div>';
				inputType1 += '				</div>';

			if(data.length > 3 && data.length <= 6){
				inputType1 += '				<div style="height:150px;"></div>';
				inputType1 += '				<table class="table table-bordered text-nowrap">';
				inputType1 += '					<thead>';
				inputType1 += '						<tr style="height:100px;">';
				inputType1 += '							<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				inputType1 += '							<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</thead>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';
			}else if(data.length <= 3){
				inputType1 += '				<div style="height:450px;"></div>';
				inputType1 += '				<table class="table table-bordered text-nowrap">';
				inputType1 += '					<thead>';
				inputType1 += '						<tr style="height:100px;">';
				inputType1 += '							<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				inputType1 += '							<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</thead>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';
			}else {
				inputType1 += '				<div style="height:10px;"></div>';
			}

			var shtml = makePdf(idx,inputType1);
			//$("#printDiv").append('',shtml);
			$("#printDiv").append(shtml);

			if(data.length > 0 && data.length > 9){ //2페이지 세팅
				inputType1 = '';
				inputType1 += '<div class="card-body">';
				inputType1 += '		<div>';
				inputType1 += '			<div class="filter-container row previewList'+idx+'">';
				//이미지
				inputType1 += '				<table class="table table-bordered text-nowrap">';

				var rowSize = 0;

				for(var i=9; i<data.length; i++){
					var item = data[i];
					var checked = '';

					if(rowSize <= 3){
						if(lastIndex == i && lastIndex < (data.length-2)){
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+2].title+'</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+2].fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i].content+'</textarea>';
							inputType1 += '		</td>';

							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
							inputType1 += '		</td>';

							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+2].content+'</textarea>';
							inputType1 += '		</td>';

							inputType1 += '	</tr>';

							lastIndex = i+3;
							rowSize++;
						}else if(lastIndex == i && lastIndex == (data.length-2)){
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+data[i+1].title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+data[i+1].fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '		</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i].content+'</textarea>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i+1].content+'</textarea>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;"></td>';
							inputType1 += '	</tr>';
							rowSize++;
						}else if(lastIndex == i && lastIndex == (data.length-1)){
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;">'+item.title+'</td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
							inputType1 += '		<td style="width:33%;text-align:center;background-color:#F2F2F2;"></td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<img class="img-fluid mb-2" style="width:100%;height:250px" src="'+imgDomain+item.fileNewNm+'"/>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '		</td>';
							inputType1 += '	</tr>';
							inputType1 += '	<tr>';
							inputType1 += '		<td style="width:33%;text-align:center;">';
							inputType1 += '			<textarea style="width:100%;border:0px;resize:none;" rows="2" readonly>'+data[i].content+'</textarea>';
							inputType1 += '		</td>';
							inputType1 += '		<td style="width:33%;text-align:center;"></td>';
							inputType1 += '		<td style="width:33%;text-align:center;"></td>';
							inputType1 += '	</tr>';
							rowSize++;
						}
					}
				}

				inputType1 += '</table>';
				inputType1 += 					'</div>';
				inputType1 += '				</div>';

				inputType1 += '				<div style="height:50px;"></div>';
				inputType1 += '				<table class="table table-bordered text-nowrap">';
				inputType1 += '					<thead>';
				inputType1 += '						<tr style="height:100px;">';
				inputType1 += '							<td style="width:20%;background-color:#F2F2F2;font-weight:bold;">검사메모</td>';
				inputType1 += '							<td style="width:*;">'+$.gfn_nvl(data[0].inspResult)+'</td>';
				inputType1 += '						</tr>';
				inputType1 += '					</thead>';
				inputType1 += '				</table>';
				inputType1 += '			</div>';

				shtml = makePdf((idx+1),inputType1);
				$("#printDiv").append(shtml);

			}
		}
	})
}

</script>
<jsp:include page="../popup/pop_fileView.jsp"></jsp:include>
</body>
</html>


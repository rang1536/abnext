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

  <!-- summernote -->
  <link rel="stylesheet" href="resources/plugins/summernote/summernote-bs4.min.css">

  <!-- SimpleMDE -->
  <link rel="stylesheet" href="resources/plugins/simplemde/simplemde.min.css">
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
						<h1><b>공지사항</b></h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="index">Home</a></li>
							<li class="breadcrumb-item active"><b>공지사항</b></li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		 <section class="content" style="font-size:13px;font-weight:bold;">
 			<div class="container-fluid">
 				<div class="row">
		          <div class="col-12">
		            <div class="card">
		              <div class="card-header" style="background-color:#002266;">
		                <h3 class="card-title"></h3>

		              </div>
		              <!-- /.card-header 본문-->
		              <div class="card-body">
						<!-- 공지입력폼  -->
		                <form onsubmit="return false" id="boardInfoForm" encType="multipart/form-data">
			                <div class="row">
				            	<div class="col-sm-6">
					                <div class="form-group">
					                  <label>작성자 *</label>

					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-user"></i></span>
					                    </div>
					                    <input type="text" class="form-control" id="userNm" value="${board.userNm }" readonly/>
					                    <input type="hidden" name="userNo" id="userNo" value="${board.userNo }"/>
					                    <input type="hidden" name="userId" id="userId" value=""/>
					                    <input type="hidden" name="boardNo" id="boardNo" value="${board.boardNo}"/>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
				                <div class="col-sm-6">
					                <div class="form-group">
					                  <label>작성일</label>

					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-calendar"></i></span>
					                    </div>
					                    <input type="date" class="form-control" id="uptDt" value="${board.uptDt }" readonly>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>

							<div class="row">
				                <div class="col-sm-12">
					                <div class="form-group">
					                  <label>제목 *</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-clipboard"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="subject" name="subject" value="${board.subject }"/>
					                    <input type="hidden" name="boardNo" id="boardNo" value="${board.boardNo }"/>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
				                </div>
			                </div>

			                <div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>본문 *</label>
										<textarea id="content" name="content">
											${board.content }
										</textarea>
									</div>
								</div> <!-- /.col-->
							</div> <!-- ./row -->

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
					                  <label>태그 *</label>
					                  <div class="input-group">
					                    <div class="input-group-prepend">
					                      <span class="input-group-text"><i class="fas fa-star"></i></span>
					                    </div>
					                    <input type="text" class="form-control hospInput" id="tag" name="tag" value="${board.tag }" placeholder="#애완조류  #검사의뢰"/>
					                  </div>
					                  <!-- /.input group -->
					                </div>
					                <!-- /.form group -->
								</div> <!-- /.col-->
							</div> <!-- ./row -->
			            </form> <!-- 공지입력폼 END -->
		              </div>
		              <!-- /.card-body -->

		              <div class="card-footer">
		                <button type="button" onclick="fn_boardList();" class="btn btn-sm btn-warning btn-flat" style="float:left;">목록가기</button>
					  	<button type="button" onclick="fn_modifyBoard();" class="btn btn-sm btn-primary btn-flat" style="float:right;">수정하기</button>
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

<!-- Summernote -->
<script src="resources/plugins/summernote/summernote-bs4.min.js"></script>

<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>

<script>

	$(function () {
		$('.select2').select2();
		bsCustomFileInput.init();

		$('#content').summernote({
			height:500
		});

		var userInfo = JSON.parse(sessionStorage.getItem("userInfo"));

		$('#userNm').val(userInfo.userNm);
		$('#userNo').val(userInfo.userNo);
		$('#userId').val(userInfo.userId);

		$('#uptDt').val(getCurrDate);

		$('#subject').focus();
    });

	/*현재날짜 구하기 YYYY-MM-DD*/
	function getCurrDate(){
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth()+1;
		var day = date.getDate();

		if(month < 10) month = "0"+month;
		if(day < 10) day = "0"+day;

		console.log(year+"-"+month+"-"+day);
		return year+"-"+month+"-"+day

	}

	/*목록 돌아가기*/
	function fn_boardList(){
		location.href = 'boardList';
	}


	function fn_modifyBoard(){
		var subject = $('#subject').val();
		var content = $('#content').val();

		if(subject == null || subject == ''){
			alert('제목을 입력하세요');
			return;
		}

		if(content == null || content == ''){
			alert('내용을 입력하세요');
			return;
		}

		var formData ={
				'subject' : subject,
				'content' : content,
				'userNo'  : $('#userNo').val(),
				'userId'  : $('#userId').val(),
				'tag'	  : $('#tag').val(),
				'boardNo' : parseInt($('#boardNo').val())
		}

		console.log(formData);

		$.ajax({
			url : 'modifyBoardCtrl',
			type : 'post',
			dataType : 'json',
			data : formData,
			success : function(data){
				if(data.result == 'succ'){
					alert('수정되었습니다');
					location.href = 'boardList';
				}else{
					alert('수정에 실패하였습니다');
					return;
				}
			}
		})
	}



</script>
</html>
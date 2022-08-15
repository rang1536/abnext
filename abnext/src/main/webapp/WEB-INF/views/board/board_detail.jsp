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
					<div class="col-md-12">
			          <div class="card card-primary card-outline">
			            <div class="card-header">
			              <h3 class="card-title">공지사항보기</h3>
			            </div>

			            <!-- /.card-header -->
			            <div class="card-body p-0" id="printCard">
			              <div class="mailbox-read-info">
			                <h5>${board.subject }</h5><br/>
			                <h6>작성자 - ${board.userNm }
			                  <span class="mailbox-read-time float-right">${board.uptDt }</span></h6>
			              </div>
			              <!-- /.mailbox-read-info -->
			              <div class="mailbox-controls with-border text-center">
			                <div class="btn-group">
			                  <button type="button" onclick="fn_boardList();" class="btn btn-default btn-sm" data-container="body" title="목록가기">
			                    <i class="fas fa-reply"></i>
			                  </button>
			                  <button type="button" onclick="javascript:toastr.info('준비중입니다');return;" class="btn btn-default btn-sm" data-container="body" title="공유하기">
			                    <i class="fas fa-share"></i>
			                  </button>
			                </div>
			                <!-- /.btn-group -->
			                <button type="button" class="btn btn-default btn-sm" title="Print" onclick="fn_print('printCard')">
			                  <i class="fas fa-print"></i>
			                </button>
			              </div>
			              <!-- /.mailbox-controls -->
			              <div class="mailbox-read-message" style="min-height:400px;">
							${board.content }
			              </div>

			              <div class="mailbox-read-info">
			              	${board.tag }
			              </div>
			              <!-- /.mailbox-read-message -->
			            </div>
			            <!-- /.card-body -->
			            <div class="card-footer bg-white">
							<div class="float-right">
								<button type="button" onclick="fn_boardList();" class="btn btn-primary btn-sm"><i class="fas fa-reply"></i> 목록돌아가기</button>
							</div>
			            </div>
			            <!-- /.card-footer -->

			          </div>
			          <!-- /.card -->
			        </div>
			        <!-- /.col -->

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

<script src="resources/js/common.js"></script>
<script>

	$(function () {

    });


	/*목록 돌아가기*/
	function fn_boardList(){
		location.href = 'boardList';
	}




</script>
</html>
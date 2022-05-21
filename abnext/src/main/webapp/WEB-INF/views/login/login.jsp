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
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.min.css"> 
</head>

<body class="hold-transition login-page">

<div class="login-box">
	<!-- /.login-logo -->
	<div class="card card-outline card-primary">
	  <div class="card-header text-center">
	    <a href="index" class="h1"><b>Abnext</b><!-- &nbsp;LOGIN --></a>
	  </div>
	  <div class="card-body">
	    <p class="login-box-msg">LOGIN</p> 
	
	    <form id="loginForm" method="post">
	      <div class="input-group mb-3">
	        <input type="email" class="form-control" placeholder="아이디">
	        <div class="input-group-append">
	          <div class="input-group-text">
	            <span class="fas fa-envelope"></span>
	          </div>
	        </div>
	      </div>
	      <div class="input-group mb-3">
	        <input type="password" class="form-control" placeholder="비밀번호">
	        <div class="input-group-append">
	          <div class="input-group-text">
	            <span class="fas fa-lock"></span>
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-8">
	          <div class="icheck-primary">
	            <input type="checkbox" id="idSave">
	            <label for="idSave">
	              	아이디 저장
	            </label>
	          </div>
	        </div>
	        <!-- /.col -->
	        <div class="col-4">
	          <button class="btn btn-primary btn-block" id="loginBtn">로그인</button>
	        </div>
	        <!-- /.col -->
	      </div>
	    </form>
	
	    <div class="social-auth-links text-center mt-2 mb-3">
	      <a href="#" class="btn btn-block btn-primary">
	        <i class="fab fa-facebook mr-2"></i> Facebook 계정으로 로그인
	      </a>
	      <a href="#" class="btn btn-block btn-danger">
	        <i class="fab fa-google-plus mr-2"></i> Google계정으로 로그인
	      </a>
	    </div>
	    <!-- /.social-auth-links -->
	
	    <p class="mb-1">
	      <a href="forgot-password.html">비밀번호찾기</a>
	    </p>
	    <p class="mb-0">
	      <a href="addUserPage" class="text-center">회원가입하기</a>
	    </p>
	  </div>
	  <!-- /.card-body -->
	</div>
	<!-- /.card -->
	</div>
<!-- /.login-box -->
</div>

<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
</body>
</html>


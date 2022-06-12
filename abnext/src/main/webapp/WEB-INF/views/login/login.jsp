<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>avinext | (주)아비넥스트</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.css">
</head>

<body class="hold-transition login-page">

<div class="login-box">
	<!-- /.login-logo -->
	<div class="card card-outline card-primary">
	  <div class="card-header text-center">
	    <a href="index" class="h1"><b>Avinext</b><!-- &nbsp;LOGIN --></a>
	  </div>
	  <div class="card-body">
	    <p class="login-box-msg">LOGIN</p>

	    <form id="loginForm" method="post">
	      <div class="input-group mb-3">
	        <input type="email" class="form-control" placeholder="아이디" id="userId" name="userId">
	        <div class="input-group-append">
	          <div class="input-group-text">
	            <span class="fas fa-envelope"></span>
	          </div>
	        </div>
	      </div>
	      <div class="input-group mb-3">
	        <input type="password" class="form-control" placeholder="비밀번호" id="userPass" name="userPass">
	        <div class="input-group-append">
	          <div class="input-group-text">
	            <span class="fas fa-lock"></span>
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-8">
	          <div class="icheck-primary">
	            <input type="checkbox" id="idSave" checked>
	            <label for="idSave">
	              	아이디 저장
	            </label>
	          </div>
	        </div>
	        <!-- /.col -->
	        <div class="col-4">

	        </div>
	        <!-- /.col -->
	      </div>
	    </form>

	    <div class="social-auth-links text-center mt-2 mb-3">

	      <a href="#" class="btn btn-block btn-primary" onclick="fn_login();">
	        <i class="fab fa-google-plus mr-2"></i> 로그인
	      </a>
	    </div>
	    <!-- /.social-auth-links -->
		<br/>
	    <p class="mb-1">
	      <a href="#" class="btn btn-sm btn-info">비밀번호찾기</a>
	      <a href="addUserPage" class="btn btn-sm btn-warning" style="float:right;">회원가입하기</a>
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

<script>
	/*기본 세팅*/
	$(document).ready(function(){
		//저장된 아이디가 있다면 미리 세팅함.
		var userId = localStorage.getItem('userId');
		var userPass = locaStorage.getItem('userPass');

		if(userId != null && userId != ''){
			$('#userId').val(userId);
		}

		if(userPass != null && userPass != ''){
			$('#userPass').val(userPass);
		}
	})

	/*로그인*/
	function fn_login(){
		var idSave = $('#idSave').is(':checked');
		var userId = $('#userId').val();
		var userPass = $('#userPass').val();

		if(userId == null || userId == ''){
			alert('아이디를 입력하세요');
			$('#userId').focus();
			return;
		}

		if(userPass == null || userPass == ''){
			alert('비밀번호를 입력하세요');
			$('#userPass').focus();
			return;
		}

		$.ajax({
			url : 'userLogin',
			data : {'userId'	:userId,
					'userPass'	:userPass},
			dataType : 'json',
			type : 'post',
			success:function(data){
				var result = data.result;

				if(result == 'noUser'){
					alert('회원정보가 없습니다 \r\n 아이디와 비밀번호를 다시 입력해주세요.');
					$('#userId').val('');
					$('#userPass').val('');

					$('#userId').focus();
					return;
				}else if(result == 'succ'){
					var userInfo = data.userInfo;
					if(idSave){
						localStorage.setItem('userId', userId);
						localStorage.setItem('userPass', userPass);
					}

					localStorage.setItem('userInfo', JSON.stringify(userInfo));
					alert(userInfo.userNm+' 님 반갑습니다!!');
					location.href = 'index';
				}
			}
		})
	}
</script>
</html>


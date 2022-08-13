<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>

<body class="hold-transition lockscreen">
	<!-- Automatic element centering -->
	<div class="lockscreen-wrapper">
		<div class="lockscreen-logo">
			<!-- <a href="#"><img src="resources/files/avilogo.png" alt="Avinext Logo" style="width:85%;"></a> -->
			<b>ERROR PAGE</b>
		</div>

		<!-- /.lockscreen-item -->
		<div class="help-block text-center">
			사용에 불편을 드려 죄송합니다.
		</div>
		<div class="help-block text-center">
			에러관련 문의는 본사로 연락바랍니다
		</div>
		<br/>
		<div class="text-center">
			<a href="loginPage">또는 로그인 시간 만료의 경우 다시 로그인해주세요.</a>
		</div>

		<br/><br/>
		<!-- User name
		<div class="lockscreen-name">John Doe</div>-->

		<!-- START LOCK SCREEN ITEM -->
		<div class="lockscreen-item">
			<!-- lockscreen image -->
			<div class="lockscreen-image">
				<img src="resources/files/aviicon.png" alt="User Image">
			</div>
			<!-- /.lockscreen-image -->

			<!-- lockscreen credentials (contains the form) -->
			<form class="lockscreen-credentials">
				<div class="input-group">
					<input type="password" class="form-control" placeholder="password" id="rePass">

					<div class="input-group-append">
						<button type="button" class="btn" onclick="fn_reLogin()">
							<i class="fas fa-arrow-right text-muted"></i>
						</button>
					</div>
				</div>
			</form>
			<!-- /.lockscreen credentials -->

  		</div>

		<br/><br/>
		<div class="lockscreen-footer text-center">
			Copyright &copy; 2010-2022 <b><a href="https://adminlte.io" class="text-black">(주)아비넥스트</a></b><br>
			All rights reserved
		</div>
	</div>
	<!-- /.center -->

	<!-- jQuery -->
	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

<script>
	/*기본 세팅*/
	$(document).ready(function(){

	})

	function fn_reLogin(){
		var userInfo = JSON.parse(sessionStorage.getItem('userInfo'));

		if(userInfo != null){
			var inputPass = $('#rePass').val();
			var loginPass = userInfo.userPass;

			console.log(inputPass, loginPass);
			if(inputPass == loginPass){
				$.ajax({
					url : 'userLogin',
					data : {'userId'	:userInfo.userId,
							'userPass'	:loginPass},
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
						}else if(result == 'noAllowed'){
							alert('승인되지 않은 계정입니다. 관리자에게 문의바랍니다.');
							return;

						}else if(result == 'succ'){
							var userInfo = data.userInfo;

							sessionStorage.setItem('userInfo', JSON.stringify(userInfo));
							location.href = 'index';
						}else if(result == 'stopId'){
							alert('사용정지된 계정입니다. 관리자에게 문의바랍니다');
							return;
						}
					}
				})
			}else{
				alert('비밀번호가 다릅니다. 다시 확인 후 입력해주세요.');
				return;
			}
		}else{
			alert('로그인 시간 만료가 아닙니다. 에러관련 문의는 아비넥스트 본사로 연락바랍니다.');
			return;
		}
	}

</script>
</html>


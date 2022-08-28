<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shotcut icon" href="resources/files/aviicon.png" />

<title>avinext | (주)아비넥스트</title>
<!-- 주소찾기 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav" style="font-weight:bold;color:#000000;" id="headNavUl" >

		</ul>

		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Navbar Search
			<li class="nav-item">
				<a class="nav-link" data-widget="navbar-search" href="#" role="button">
					<i class="fas fa-search"></i>
				</a>
				<div class="navbar-search-block">
					<form class="form-inline">
						<div class="input-group input-group-sm">
							<input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-navbar" type="submit">
									<i class="fas fa-search"></i>
								</button>
								<button class="btn btn-navbar" type="button" data-widget="navbar-search">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</li>
			-->

			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown" id="bellLi">

			</li>
			<!-- <li class="nav-item">
				<a class="nav-link" data-widget="fullscreen" href="#" role="button">
					<i class="fas fa-expand-arrows-alt"></i>
				</a>
			</li> -->

			<!-- <li class="nav-item">
				<a class="nav-link" href="#" role="button" onclick="fn_login_out()">
					<i class="fas fa-address-book"></i>
				</a>
			</li> -->

			<li class="nav-item addUserNav">
				<a class="nav-link" href="#" role="button" onclick="fn_addUserPage()">
					<b>회원가입</b>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link" href="#" role="button" onclick="fn_login_out()">
					<b id="loginOutB"></b>
				</a>
			</li>

			<!--
			<li class="nav-item">
				<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
					<i class="fas fa-th-large"></i>
				</a>
			</li>
			 -->
		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-light-primary elevation-4">
		<!-- Brand Logo -->
		<a href="index" class="brand-link" style="text-align:center;">
			<img src="resources/files/avilogo.png" alt="Avinext Logo" style="width:85%;">
			<!-- <span class="brand-text font-weight-light">Avinext</span> -->
		</a>

		<!-- Sidebar -->
		<div class="sidebar" style="font-size:13px;">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 mb-3 d-flex" style="background-color:#002266;">

				<div class="info userInfoIntro" style="font-weight:bold;color:#ffffff;display:none;">

				</div>

			</div>
			<div style="text-align:right;display:none;" id="userBtnGroup">
				<button class="btn btn-default" onclick="fn_loginPage();">로그인</button>
				<button class="btn btn-default" onclick="fn_addUserPage();">회원가입</button>
			</div>

			<div style="text-align:right;display:none;font-size:13px;" id="logOutDiv">
				<a href="#" onclick="fn_logOut();">로그아웃</a>
			</div>

			<div style="border-bottom:1px solid #ddd;margin-top:10px;"></div>

			<!-- SidebarSearch Form -->
			<!--
			<div class="form-inline">
				<div class="input-group" data-widget="sidebar-search">
					<input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-sidebar">
							<i class="fas fa-search fa-fw"></i>
						</button>
					</div>
				</div>
			</div>-->

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false" id="menuUl">
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
	<!-- jQuery -->
	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<script>
		$(function () {
			//userInfoIntro
			var userInfo = JSON.parse(sessionStorage.getItem('userInfo'));
			$('#loginOutB').text('');

			if(userInfo != null){
				var html = '';

				html += '<b onclick="fn_modifyUser('+userInfo.userNo+')">';
				html += userInfo.userNm+' 님';
				if(userInfo.hospNm != null && userInfo.hospNm != ''){
					html += '<b style="color:#A6A6A6;font-size:13px;">&nbsp;&nbsp;';
					html += ' ['
					html += userInfo.hospNm;
					html += ' ]';
					html += '</b>'
				}else if(userInfo.farmNm != null && userInfo.farmNm != ''){
					html += '<b style="color:#A6A6A6;font-size:13px;">&nbsp;&nbsp;';
					html += ' ['
					html += userInfo.farmNm;
					html += ' ]';
					html += '</b>'
				}
				html += '</b>';

				$('.userInfoIntro').empty();
				$('.userInfoIntro').html(html);
				$('.userInfoIntro').css('display', '');
				$('#userBtnGroup').css('display', 'none');
				$('#logOutDiv').css('display', '');

				if(userInfo.userLev == '4'){
					setBellMsg();
				}

				$('#loginOutB').text('Logout');
				$('.addUserNav').css('display', 'none');
				setMenuList(userInfo.userLev);

			}else{
				$('#userBtnGroup').css('display', '');
				//alert('로그인 후 사용하실수 있습니다 ');
				//location.href = 'loginPage';
				setMenuList('1');

				$('#loginOutB').text('Login');
				$('.addUserNav').css('display', '');
			}

			var path = $(location).attr('pathname');

			setTimeout(function(){

				$("#leftMenu").removeClass("active");
				$("#leftMenuSub").removeClass("active");
				if(path.indexOf('myFarm') != -1){
					$(".leftMenu").eq(0).addClass("active");
				}else if(path.indexOf('introInspect') > -1){
					$(".leftMenu").eq(1).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");
				}else if(path.indexOf('request') > -1 || path.indexOf('register') > -1 || path.indexOf('modifyInspect') > -1){
					$(".leftMenuSub").eq(0).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");
				}else if(path.indexOf('setting') > -1){
					$(".leftMenuSub").eq(1).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");
				}else if(path.indexOf('result') > -1){
					$(".leftMenuSub").eq(2).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");

				}else if(path.indexOf('final') > -1){
					$(".leftMenuSub").eq(3).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");
				}else if(path.indexOf('all') > -1 || path.indexOf('view') > -1){
					$(".leftMenuSub").eq(4).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");
				}else if(path.indexOf('customer') > -1){
					$(".leftMenuSub").eq(0).addClass("active");
					$(".inspect").addClass("menu-is-opening menu-open");
				}else if(path.indexOf('payList') > -1){
					$(".leftMenu").eq(3).addClass("menu-is-opening menu-open");
					$(".leftMenu").eq(3).addClass("active");
				}
			}, 500)

		});

		function setMenuList(menuLev){
			var levOne 	= 'N';
			var levTwo 	= 'N';
			var levThree= 'N';
			var levFour = 'Y'
			if(menuLev == '1') levOne 	= 'Y';
			if(menuLev == '2') levTwo 	= 'Y';
			if(menuLev == '3') levThree = 'Y';
			if(menuLev == '4') levFour 	= 'Y';

			$.ajax({
				url :'getMenuList',
				dataType :'json',
				type :'post',
				data : {'levOne' : levOne
						, 'levTwo' : levTwo
						, 'levThree' : levThree
						, 'levFour' : levFour
				},
				success:function(data){

					var html = '';
					var html2 ='';

					html2 += '<li class="nav-item">';
					html2 += '	<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>';
					html2 += '</li>';

					$.each(data, function(i, list){
						if(list.uppMenuNo == 0){
							//상단
							html2 += '<li class="nav-item d-none d-sm-inline-block">';
							if(list.menuUrl == '#'){
								if(list.menuNm == '공지사항'){
									html2 += '	<a href="boardList" class="nav-link">'+list.menuNm+'</a>';
								}else if(list.menuNm == '통계'){
									html2 += '	<a href="basicChart" class="nav-link">'+list.menuNm+'</a>';
								}else if(list.menuNm == '설정및관리'){
									html2 += '	<a href="userList" class="nav-link">'+list.menuNm+'</a>';
								}
							}else{
								html2 += '	<a href="#" onclick="movePageChk(\''+list.menuUrl+'\',\''+list.menuNm+'\')" class="nav-link">'+list.menuNm+'</a>';
							}

							html2 += '</li>';


							var menuNm = list.menuNm;
							if(menuNm == '진단검사'){
								html += '<li class="nav-item inspect">';
							}else {
								html += '<li class="nav-item">';
							}

							html += '	<a href="'+list.menuUrl+'" class="nav-link leftMenu">';

							if(menuNm == 'MyPage'){
								html += '		<i class="nav-icon fas fa-tachometer-alt"></i>';
								html += '		<p onclick="movePageChk(\''+list.menuUrl+'\',\''+list.menuNm+'\')">'+list.menuNm+'</p>';
								html += '	</a>';
							}else if(menuNm == '회사소개'){
								html += '		<i class="nav-icon fas fa-building"></i>';
								html += '		<p onclick="movePageChk(\''+list.menuUrl+'\',\''+list.menuNm+'\')">'+list.menuNm;
								html += '		</p>';
								html += '	</a>';
							}else if(menuNm == '진단검사'){
								html += '		<i class="nav-icon fas fa-copy"></i>';
								//html += '		<p onclick="movePageChk(\''+list.menuUrl+'\',\''+list.menuNm+'\')">'+list.menuNm;
								html += '		<p>'+list.menuNm;
								html += '			<i class="fas fa-angle-left right"></i>';
								html += '		</p>';
								html += '	</a>';
							}else if(menuNm == '공지사항'){
								html += '		<i class="nav-icon fas fa-book"></i>';
								html += '		<p>'+list.menuNm;
								html += '			<i class="fas fa-angle-left right"></i>';
								//html += '			<span class="badge badge-info right">1</span>';
								html += '		</p>';
								html += '	</a>';
							}else if(menuNm == '수납관리'){
								html += '		<i class="nav-icon fas fa-box"></i>';
								html += '		<p onclick="movePageChk(\''+list.menuUrl+'\',\''+list.menuNm+'\')">'+list.menuNm+'</p>';
								html += '	</a>';
							}else if(menuNm == '통계'){
								html += '		<i class="nav-icon fas fa-chart-pie"></i>';
								html += '		<p>'+list.menuNm;
								html += '			<i class="fas fa-angle-left right"></i>';
								//html += '			<span class="badge badge-info right">8</span>';
								html += '		</p>';
								html += '	</a>';
							}else if(menuNm == '설정및관리'){
								html += '		<i class="nav-icon fas fa-th"></i>';
								html += '		<p>'+list.menuNm;
								html += '			<i class="fas fa-angle-left right"></i>';
								//html += '			<span class="badge badge-info right">5</span>';
								html += '		</p>';
								html += '	</a>';
							}

							html += '	<ul class="nav nav-treeview">';

							$.each(data, function(j, secondList){
								//사용자 전용메뉴
								if(JSON.parse(sessionStorage.getItem('userInfo')) != null){
									if(secondList.menuNo == '27' && JSON.parse(sessionStorage.getItem('userInfo')).userLev != "1") {
										return;
									}
								}


								if(secondList.uppMenuNo == list.menuNo){
									var cls = '';
									if(secondList.uppMenuNo == '3'){
										cls = 'inspect';
									}
									html += '<li class="nav-item '+cls+'">';
									html += '	<a href="'+secondList.menuUrl+'" class="nav-link leftMenuSub">';
									html += '		<i class="far fa-circle nav-icon"></i>';
									html += '		<p>'+secondList.menuNm+'</p>';
									html += '	</a>';
									html += '</li>';
								}
							})

							html += '	</ul>';
							html += '</li>';
						}
					})

					$('#menuUl').empty();
					$('#menuUl').html(html);

					$('#headNavUl').empty();
					$('#headNavUl').html(html2);
				}
			})
		}

		/*페이지이동전 로그인 체크*/
		function movePageChk(menuUrl, menuNm){
			var userInfo = JSON.parse(sessionStorage.getItem('userInfo'));

			if(menuNm == '진단검사' || menuNm == 'MyPage'){
				if(userInfo == null){
					if(confirm('로그인후 사용가능한 메뉴입니다. \n로그인페이지로 이동하시겠습니까?')){
						fn_loginPage();
					}
				}else{
					location.href = menuUrl;
				}
			}else{
				console.log(menuNm);
				location.href = menuUrl;
			}
		}

		/*알림세팅*/
		function setBellMsg(){
			$.ajax({
				url : 'searchUserCtrl',
				dataType : 'json',
				type :'post',
				data:{'userStat':'F002-01'},
				success : function(data){
					var list = data.list;
					var html = '';

					html = '<a class="nav-link" data-toggle="dropdown" href="#">';
					html += '	<i class="far fa-bell"></i>';
					html += '	<span class="badge badge-warning navbar-badge">1</span>';
					html += '</a>';
					html += '<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="font-size:12px;">';
					html += '	<span class="dropdown-item dropdown-header">1개의 알림이 있습니다</span>';
					html += '	<div class="dropdown-divider"></div>';
					html += '	<a href="userList" class="dropdown-item">';
					html += '		<i class="fas fa-envelope mr-2"></i> '+list.length+'명의 승인대기회원';
					html += '		<span class="float-right text-muted text-sm">lastest</span>';
					html += '	</a>';
					/*html += '	<div class="dropdown-divider"></div>'
					html += '	<a href="#" class="dropdown-item">'
					html += '		<i class="fas fa-file mr-2"></i> 3 건의 진단신청 있음'
					html += '		<span class="float-right text-muted text-sm">lastest</span>'
					html += '	</a>'
					html += '	<div class="dropdown-divider"></div>'*/
					html += '</div>';

					$('#bellLi').empty();
					$('#bellLi').html(html);

				}

			})
		}

		function fn_logOut(){
			sessionStorage.clear();
			location.href = 'loginPage';
		}


		/*로그인*/
		function fn_loginPage(){
			location.href = 'loginPage';
		}

		/*회원가입*/
		function fn_addUserPage(){
			location.href = 'addUserPage';
		}


		/*======================
		* 주소찾기
		======================*/
		function fn_searchAdr(type){
			new daum.Postcode({
				oncomplete: function(data){
					console.log(data.sido);
					if(type == 'user'){
						$("#userAdr").val(data.roadAddress);
						$("#userZip").val(data.zonecode);
						$('#sidoNm').val(data.sido);
						$('#sigunguNm').val(data.sigungu);
						$('#sigunguCd').val(data.sigunguCode);

						$('#userDtlAdr').focus();
					}else if(type == 'hospital'){
						$("#hospAdr").val(data.roadAddress);
						$("#hospZip").val(data.zonecode);
						$('#hospSidoNm').val(data.sido);
						$('#hospSigunguNm').val(data.sigungu);
						$('#hospSigunguCd').val(data.sigunguCode);

						$('#hospDtlAdr').focus();
					}else if(type == 'farm'){
						$("#farmAdr").val(data.roadAddress);
						$("#farmZip").val(data.zonecode);
						$('#farmSidoNm').val(data.sido);
						$('#farmSigunguNm').val(data.sigungu);
						$('#farmSigunguCd').val(data.sigunguCode);

						$('#farmDtlAdr').focus();
					}else if(type == 'butler'){
						$('#butlerSido').val(data.sido);
						$('#butlerSigungu').val(data.sigungu);
						$('#butlerSigunguCd').val(data.sigunguCode);

					}else if(type == 'addFarm'){
						$("#addFarmAdr").val(data.roadAddress);
						$("#addFarmZip").val(data.zonecode);
						$('#addFarmSidoNm').val(data.sido);
						$('#addFarmSigunguNm').val(data.sigungu);
						$('#addFarmSigunguCd').val(data.sigunguCode);

						$('#addFarmDtlAdr').focus();
					}
					else if(type == 'addHospital'){
						$("#addHospAdr").val(data.roadAddress);
						$("#addHospZip").val(data.zonecode);
						$('#addHospSidoNm').val(data.sido);
						$('#addHospSigunguNm').val(data.sigungu);
						$('#addHospSigunguCd').val(data.sigunguCode);

						$('#addHospDtlAdr').focus();
					}
				}
			}).open();
		}


		/*====================================
		* 기관병원등 (팝업)
		* 팝업 : pop_addHospital
		* 팝업오픈 : $('#popAddHosp').modal();
		====================================*/
		function fn_addHospital(){
			var hospNm = $('#hospNm').val();
			var hospHp = $('#hospHp').val();
			var hospAdr = $('#hospAdr').val();
			var payManagerNm = $('#payManagerNm').val();
			var payManagerHp = $('#payManagerHp').val();
			var hospEmail = $('#hospEmail').val();

			if(hospNm == null || hospNm == ''){
				alert('기관(병원)명은 필수입력입니다.');
				return;
			}

			if(hospHp == null || hospHp == ''){
				alert('핸드폰번호는 필수입력입니다.');
				return;
			}else{
				if(!gfn_validation_hp(hospHp)){
					alert('올바른 휴대폰번호를 입력해주세요');
					return;
				}
			}

			if(hospAdr == null || hospAdr == ''){
				alert('주소는 필수입력입니다.');
				return;
			}

			if(hospEmail != null && hospEmail != ''){
				if(!gfn_validation_email(hospEmail)){
					alert('올바른 이메일주소를 입력해주세요');
					return;
				}
			}

			if(payManagerNm == null || payManagerNm == ''){
				alert('정산담당자를 입력하세요');
				return;
			}

			if(payManagerHp == null || payManagerHp == ''){
				alert('정산담당자 연락처를 입력하세요');
				return;
			}

			//$('#hospInfoForm').serialize();
			var params = new FormData($('#hospInfoForm')[0]);

			toastr.info('등록중입니다');

			$.ajax({
				url : 'addHospCtrl',
				data : params,
				dataType : 'json',
				type : 'post',
				processData : false,
				contentType : false,
				success : function(data){
					if(data.result == 'succ'){
						toastr.success('기관(병원)등록이 완료되었습니다.');
						$('#modalCloseBtn').click();

						window.location.reload(true);
					}else{
						toastr.error('기관(병원)등록에 실패하였습니다.');
					}
				}
			})

		}

		$(document).on('change', '#payGb', function(){
			if($(this).val() == '월간정산'){
				$('#payDate').prop('disabled', false);
			}else{
				$('#payDate').prop('disabled', true);
			}
		})

		/*회원등록 에서 기관등록 팝업(병원)*/
		function fn_addHospital2(){
			var addHospNm = $('#addHospNm').val();
			var addHospHp = $('#addHospHp').val();
			var addHospAdr = $('#addHospAdr').val();
			var payManagerNm = $('#addPayManagerNm').val();
			var payManagerHp = $('#addPayManagerHp').val();
			var addHospEmail = $('#addHospEmail').val();

			if(addHospNm == null || addHospNm == ''){
				alert('기관(병원)명은 필수입력입니다.');
				return;
			}

			if(addHospHp == null || addHospHp == ''){
				alert('핸드폰번호는 필수입력입니다.');
				return;
			}else{
				if(!gfn_validation_hp(addHospHp)){
					alert('올바른 휴대폰번호를 입력해주세요');
					return;
				}
			}

			if(addHospAdr == null || addHospAdr == ''){
				alert('주소는 필수입력입니다.');
				return;
			}

			if(addHospEmail != null && addHospEmail != ''){
				if(!gfn_validation_email(addHospEmail)){
					alert('올바른 이메일주소를 입력해주세요');
					return;
				}
			}

			if(payManagerNm == null || payManagerNm == ''){
				alert('정산담당자를 입력하세요');
				return;
			}

			if(payManagerHp == null || payManagerHp == ''){
				alert('정산담당자 연락처를 입력하세요');
				return;
			}

			//$('#addHospInfoForm').serialize();
			var params = new FormData($('#addHospInfoForm')[0]);

			toastr.info('등록중입니다');

			$.ajax({
				url : 'addHospCtrl2',
				data : params,
				dataType : 'json',
				type : 'post',
				processData : false,
				contentType : false,
				success : function(data){
					if(data.result == 'succ'){
						toastr.success('기관(병원)등록이 완료되었습니다.');
						$('#addHospModalCloseBtn').click();

						//window.location.reload(true);
					}else{
						toastr.error('기관(병원)등록에 실패하였습니다.');
					}
				}
			})
		}

		$(document).on('change', '#addPayGb', function(){
			if($(this).val() == '월간정산'){
				$('#addPayDate').prop('disabled', false);
			}else{
				$('#addPayDate').prop('disabled', true);
			}
		})


		/*====================================
		* 농장등록 (팝업)
		* 팝업 : pop_addFarm
		* 팝업오픈 : $('#popAddFarm').modal();
		====================================*/
		function fn_addFarm(){
			var farmNm = $('#farmNm').val();
			var farmHp = $('#farmHp').val();
			var farmAdr = $('#farmAdr').val();

			if(farmNm == null || farmNm == ''){
				alert('농장명은 필수입력입니다.');
				return;
			}

			if(farmHp == null || farmHp == ''){
				alert('핸드폰번호는 필수입력입니다.');
				return;
			}else{
				if(!gfn_validation_hp(farmHp)){
					alert('올바른 휴대폰번호를 입력해주세요');
					return;
				}
			}


			if(farmAdr == null || farmAdr == ''){
				alert('주소는 필수입력입니다.');
				return;
			}

			//$('#farmInfoForm').serialize();
			var params = new FormData($('#farmInfoForm')[0]);

			toastr.info('등록중입니다');

			$.ajax({
				url : 'addFarmCtrl',
				data : params,
				dataType : 'json',
				type : 'post',
				processData : false,
				contentType : false,
				success : function(data){
					if(data.result == 'succ'){
						toastr.success('농장등록이 완료되었습니다.');
						$('#modalCloseBtn').click();

						window.location.reload(true);
					}else{
						toastr.error('농장등록에 실패하였습니다.');
					}
				}
			})

		}

		function fn_addFarm2(){
			var addFarmNm = $('#addFarmNm').val();
			var addFarmHp = $('#addFarmHp').val();
			var addFarmAdr = $('#addFarmAdr').val();

			if(addFarmNm == null || addFarmNm == ''){
				alert('농장명은 필수입력입니다.');
				return;
			}

			if(addFarmHp == null || addFarmHp == ''){
				alert('핸드폰번호는 필수입력입니다.');
				return;
			}else{
				if(!gfn_validation_hp(addFarmHp)){
					alert('올바른 휴대폰번호를 입력해주세요');
					return;
				}
			}


			if(addFarmAdr == null || addFarmAdr == ''){
				alert('주소는 필수입력입니다.');
				return;
			}

			//$('#addFarmInfoForm').serialize();
			var params = new FormData($('#addFarmInfoForm')[0]);

			toastr.info('등록중입니다');

			$.ajax({
				url : 'addFarmCtrl2',
				data : params,
				dataType : 'json',
				type : 'post',
				processData : false,
				contentType : false,
				success : function(data){
					if(data.result == 'succ'){
						toastr.success('농장등록이 완료되었습니다.');
						$('#addFarmModalCloseBtn').click();

						//window.location.reload(true);
					}else{
						toastr.error('농장등록에 실패하였습니다.');
					}
				}
			})

		}


		/*======================
		* 조회값 null체크
		======================*/
		function fn_ifNull(str){
			if(str == null || str == 'null' || str == ''){
				str = '';
			}

			return str;
		}


		/*==================================
		* 앤터키 Event
		* onkeyup = "fn_enterKey(pgmId)"
		==================================*/
		function fn_enterKey(pgmId){
			if(window.event.keyCode == 13){
				if(pgmId == 'addUser'){
					$('#fn_searchCompany').click();
				}
			}
		}


		/*==================================
		* 기관, 농장검색 팝업
		* onclick="popSearch();"
		==================================*/
		function popSearch(){
			var popSearchNm = $('#popSearchNm').val();

			if(popSearchNm == null || popSearchNm == ''){
				toastr.info('상호입력을 하지 않은 경우 전체 등록된 데이터를 조회합니다.');
			}

			$.ajax({
				url : 'allCompanySearch',
				data : {'popSearchNm':popSearchNm},
				dataType : 'json',
				type : 'post',
				success : function(data){
					var list = data.list;

					var html = '';
					$.each(list, function(i, list){
						html += '<tr onclick="fn_setHospDataToForm('+list.hospNo+', \''+list.gubun+'\');">';
						html += '	<td>'
						if(list.gubun == 'hospital') html += '기관(병원)';
						else if(list.gubun == 'farm') html += '농장';
						html += '	</td>';
						html += '	<td>'+fn_ifNull(list.hospNm)+'</td>';
						html += '	<td>'+fn_ifNull(list.hospCeo)+'</td>';
						html += '	<td>'+fn_ifNull(list.hospTel)+'</td>';
						html += '	<td>'+fn_ifNull(list.hospHp)+'</td>';
						html += '	<td>'+fn_ifNull(list.hospSigunguNm)+'</td>';
						html += '</tr>';
					})

					$('#comTbody').empty();
					$('#comTbody').html(html);
				}
			})

		}


		/*===================================
		* 회원검색 팝업
		* onclick="popOpenUser(objId);"
		=====================================*/
		function popOpenUser(objId){
			$('#popUser').modal();

			if(objId != null && objId != ''){
				$('#objId').val(objId);
			}

			popSearchUser();
		}

		/*===================================
		* 회원목록검색 (팝업)
		* onclick="popSearchUser();"
		=====================================*/
		function popSearchUser(){
			var popSearchUserNm = $('#popSearchUserNm').val();

			if(popSearchUserNm == null || popSearchUserNm == ''){
				toastr.info('전체 회원을 데이터를 조회합니다.');
			}

			$.ajax({
				url : 'searchUserCtrl',
				data : {'userNm':popSearchUserNm},
				dataType : 'json',
				type : 'post',
				success : function(data){
					var list = data.list;

					var html = '';
					$.each(list, function(i, list){
						html += '<tr onclick="fn_setUserDataToForm('+list.userNo+', '+list.userNm+');">';
						html += '	<td>'
						if(list.userLev == '1') html += '일반회원';
						else if(list.userLev == '2') html += '수의사';
						else if(list.userLev == '3') html += '기관(병원)';
						else if(list.userLev == '4') html += '농장';
						else if(list.userLev == '5') html += '관리자';
						html += '	</td>';

						html += '	<td>'+fn_ifNull(list.userWorkGbNm)+'</td>';
						html += '	<td>'+fn_ifNull(list.userNm)+'</td>';
						html += '	<td>'+fn_ifNull(list.userHp)+'</td>';
						html += '	<td>'+fn_ifNull(list.sigunguNm)+'</td>';
						html += '	<td>'+fn_ifNull(list.hospNm)+fn_ifNull(list.farmNm)+'</td>';
						html += '</tr>';
					})

					$('#userTbody').empty();
					$('#userTbody').html(html);
				}
			})
		}

		function fn_setUserDataToForm(userNo, userNm){
			var objId = $('#objId').val();

			if(objId != null && objId != ''){
				$('#'+objId+'Id').val(userNo);
				$('#'+objId+'Nm').val(userNm);
			}else{
				console.log('h2 ^^');
			}
		}

		function fn_login_out(){
			var userInfo = JSON.parse(sessionStorage.getItem('userInfo'));

			if(userInfo != null){
				if(confirm(userInfo.userNm+' 님 로그아웃 하시겠습니까?')){
					sessionStorage.clear();

				}
			}else{
				toastr.info('로그인페이지로 이동합니다.');
			}

			location.href = 'loginPage';
		}

		function popPolicyOpen(){
			console.log('h2')
			$('#popPolicy').modal();
		}


		function fn_modifyUser(userNo){
			//console.log('userNo : '+userNo);
			location.href = "modifyUserForUser?modifyUserNo="+userNo;
		}


	</script>

</body>
</html>
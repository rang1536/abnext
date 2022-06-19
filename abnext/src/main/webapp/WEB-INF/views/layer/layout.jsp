<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>avinext | (주)아비넥스트</title>
<!-- 주소찾기 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
			</li>
			<li class="nav-item d-none d-sm-inline-block">
				<a href="index3.html" class="nav-link">Home</a>
			</li>
			<li class="nav-item d-none d-sm-inline-block">
				<a href="#" class="nav-link">Contact</a>
			</li>
		</ul>

		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Navbar Search -->
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

			<!-- Messages Dropdown Menu -->
			<li class="nav-item dropdown">
				<a class="nav-link" data-toggle="dropdown" href="#">
					<i class="far fa-comments"></i>
					<span class="badge badge-danger navbar-badge">3</span>
				</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<a href="#" class="dropdown-item">
						<!-- Message Start -->
						<div class="media">
							<img src="resources/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									Brad Diesel
									<span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">Call me whenever you can...</p>
								<p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
							</div>
						</div>
						<!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<!-- Message Start -->
						<div class="media">
							<img src="resources/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									John Pierce
									<span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">I got your message bro</p>
								<p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
							</div>
						</div>
						<!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<!-- Message Start -->
						<div class="media">
							<img src="resources/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									Nora Silvester
									<span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">The subject goes here</p>
								<p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
							</div>
						</div>
						<!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
				</div>
			</li>
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown">
				<a class="nav-link" data-toggle="dropdown" href="#">
					<i class="far fa-bell"></i>
					<span class="badge badge-warning navbar-badge">15</span>
				</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<i class="fas fa-envelope mr-2"></i> 4 new messages
						<span class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<i class="fas fa-users mr-2"></i> 8 friend requests
						<span class="float-right text-muted text-sm">12 hours</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<i class="fas fa-file mr-2"></i> 3 new reports
						<span class="float-right text-muted text-sm">2 days</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
				</div>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-widget="fullscreen" href="#" role="button">
					<i class="fas fa-expand-arrows-alt"></i>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
					<i class="fas fa-th-large"></i>
				</a>
			</li>
		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="myFarm" class="brand-link">
			<img src="resources/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
			<span class="brand-text font-weight-light">Avinext</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">

				<div class="image">
					<img src="resources/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
				</div>
				<div class="info">
					<a href="#" class="d-block">홍길동 님</a>
				</div>
				<br/>

			</div>
			<div style="text-align:right;">
				<button class="btn btn-warning" onclick="fn_loginPage();">로그인</button>
				<button class="btn btn-success" onclick="fn_addUserPage();">회원가입</button>
			</div>
			<br/>
			<!-- SidebarSearch Form -->
			<!-- -->
			<div class="form-inline">
				<div class="input-group" data-widget="sidebar-search">
					<input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-sidebar">
							<i class="fas fa-search fa-fw"></i>
						</button>
					</div>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
							 with font-awesome or any other icon font library -->
					<li class="nav-item">
						<a href="myFarm.do" class="nav-link leftMenu">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>My-Farm</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link leftMenu">
							<i class="nav-icon fas fa-copy"></i>
							<p>진단검사
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right">5</span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="introInspect.do" class="nav-link leftMenuSub">
									<i class="far fa-circle nav-icon"></i>
									<p>신청접수</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="settingInspectList.do" class="nav-link leftMenuSub">
									<i class="far fa-circle nav-icon"></i>
									<p>진단설정</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="resultInspectList.do" class="nav-link leftMenuSub">
									<i class="far fa-circle nav-icon"></i>
									<p>결과입력</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="finalInspectList.do" class="nav-link leftMenuSub">
									<i class="far fa-circle nav-icon"></i>
									<p>최종진단</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="allInspectList.do" class="nav-link leftMenuSub">
									<i class="far fa-circle nav-icon"></i>
									<p>전체목록</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
			            <a href="#" class="nav-link">
			              <i class="nav-icon fas fa-book"></i>
			              <p>
			              	게시판
			              	<i class="right fas fa-angle-left"></i>
			              	<span class="badge badge-info right">2</span>
			              </p>
			            </a>
			            <ul class="nav nav-treeview">
			              <li class="nav-item">
			                <a href="boardList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>공지사항</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="qnaList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>QnA</p>
			                </a>
			              </li>

			            </ul>
			        </li>

			        <!-- 수납관리 -->
			        <li class="nav-item">
			            <a href="#" class="nav-link">
			              <i class="nav-icon fas fa-box"></i>
			              <p>
			              	수납관리
			              	<i class="right fas fa-angle-left"></i>
			              	<span class="badge badge-info right">2</span>
			              </p>
			            </a>
			            <ul class="nav nav-treeview">
			              <li class="nav-item">
			                <a href="payList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>목록조회</p>
			                </a>
			              </li>
			            </ul>
			        </li>

			        <!-- 상품
			        <li class="nav-item">
			            <a href="#" class="nav-link">
			              <i class="nav-icon fas fa-box"></i>
			              <p>
			              	상품구매
			              	<i class="right fas fa-angle-left"></i>
			              	<span class="badge badge-info right">2</span>
			              </p>
			            </a>
			            <ul class="nav nav-treeview">
			              <li class="nav-item">
			                <a href="productList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>상품판매</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="productAdmin" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>판매관리</p>
			                </a>
			              </li>

			            </ul>
			        </li> -->

			        <!-- 통계 -->
			        <li class="nav-item">
			            <a href="#" class="nav-link">
			              <i class="nav-icon fas fa-chart-pie"></i>
			              <p>
			              	통계
			              	<i class="right fas fa-angle-left"></i>
			              	<span class="badge badge-info right">3</span>
			              </p>
			            </a>
			            <ul class="nav nav-treeview">
			              <li class="nav-item">
			                <a href="#" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>지역별통계</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="#" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>종류별통계</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="#" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>통합통계</p>
			                </a>
			              </li>
			            </ul>
			        </li>

					<li class="nav-item">
			            <a href="#" class="nav-link">
			              <i class="nav-icon fas fa-th"></i>
			              <p>
			              	설정및관리
			              	<i class="right fas fa-angle-left"></i>
			              	<span class="badge badge-info right">6</span>
			              </p>
			            </a>
			            <ul class="nav nav-treeview">
			              <li class="nav-item">
			                <a href="userList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>회원관리</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="hospList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>기관(병원)관리</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="farmList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>농장관리</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="codeList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>코드관리</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="levList" class="nav-link">
			                  <i class="far fa-circle nav-icon"></i>
			                  <p>권한관리</p>
			                </a>
			              </li>
			            </ul>
			        </li>
					<!--
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-chart-pie"></i>
							<p>
								Charts
								<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/charts/chartjs.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>ChartJS</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/charts/flot.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Flot</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/charts/inline.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Inline</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/charts/uplot.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>uPlot</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-tree"></i>
							<p>
								UI Elements
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/UI/general.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>General</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/icons.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Icons</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/buttons.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Buttons</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/sliders.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Sliders</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/modals.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Modals & Alerts</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/navbar.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Navbar & Tabs</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/timeline.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Timeline</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/UI/ribbons.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Ribbons</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-edit"></i>
							<p>
								Forms
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/forms/general.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>General Elements</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/forms/advanced.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Advanced Elements</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/forms/editors.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Editors</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/forms/validation.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Validation</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-table"></i>
							<p>
								Tables
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/tables/simple.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Simple Tables</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/tables/data.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>DataTables</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/tables/jsgrid.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>jsGrid</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-header">EXAMPLES</li>
					<li class="nav-item">
						<a href="pages/calendar.html" class="nav-link">
							<i class="nav-icon far fa-calendar-alt"></i>
							<p>
								Calendar
								<span class="badge badge-info right">2</span>
							</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="pages/gallery.html" class="nav-link">
							<i class="nav-icon far fa-image"></i>
							<p>
								Gallery
							</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="pages/kanban.html" class="nav-link">
							<i class="nav-icon fas fa-columns"></i>
							<p>
								Kanban Board
							</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon far fa-envelope"></i>
							<p>
								Mailbox
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/mailbox/mailbox.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Inbox</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/mailbox/compose.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Compose</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/mailbox/read-mail.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Read</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-book"></i>
							<p>
								Pages
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/examples/invoice.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Invoice</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/profile.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Profile</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/e-commerce.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>E-commerce</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/projects.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Projects</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/project-add.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Project Add</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/project-edit.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Project Edit</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/project-detail.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Project Detail</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/contacts.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Contacts</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/faq.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>FAQ</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/contact-us.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Contact us</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon far fa-plus-square"></i>
							<p>
								Extras
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>
										Login & Register v1
										<i class="fas fa-angle-left right"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item">
										<a href="pages/examples/login.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Login v1</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="pages/examples/register.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Register v1</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="pages/examples/forgot-password.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Forgot Password v1</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="pages/examples/recover-password.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Recover Password v1</p>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>
										Login & Register v2
										<i class="fas fa-angle-left right"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item">
										<a href="pages/examples/login-v2.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Login v2</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="pages/examples/register-v2.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Register v2</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="pages/examples/forgot-password-v2.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Forgot Password v2</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="pages/examples/recover-password-v2.html" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Recover Password v2</p>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="pages/examples/lockscreen.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Lockscreen</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/legacy-user-menu.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Legacy User Menu</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/language-menu.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Language Menu</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/404.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Error 404</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/500.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Error 500</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/pace.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Pace</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/examples/blank.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Blank Page</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="starter.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Starter Page</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-search"></i>
							<p>
								Search
								<i class="fas fa-angle-left right"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="pages/search/simple.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Simple Search</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="pages/search/enhanced.html" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Enhanced</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-header">MISCELLANEOUS</li>
					<li class="nav-item">
						<a href="iframe.html" class="nav-link">
							<i class="nav-icon fas fa-ellipsis-h"></i>
							<p>Tabbed IFrame Plugin</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="https://adminlte.io/docs/3.1/" class="nav-link">
							<i class="nav-icon fas fa-file"></i>
							<p>Documentation</p>
						</a>
					</li>
					<li class="nav-header">MULTI LEVEL EXAMPLE</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="fas fa-circle nav-icon"></i>
							<p>Level 1</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-circle"></i>
							<p>
								Level 1
								<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Level 2</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>
										Level 2
										<i class="right fas fa-angle-left"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item">
										<a href="#" class="nav-link">
											<i class="far fa-dot-circle nav-icon"></i>
											<p>Level 3</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="#" class="nav-link">
											<i class="far fa-dot-circle nav-icon"></i>
											<p>Level 3</p>
										</a>
									</li>
									<li class="nav-item">
										<a href="#" class="nav-link">
											<i class="far fa-dot-circle nav-icon"></i>
											<p>Level 3</p>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Level 2</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="fas fa-circle nav-icon"></i>
							<p>Level 1</p>
						</a>
					</li>
					<li class="nav-header">LABELS</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon far fa-circle text-danger"></i>
							<p class="text">Important</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon far fa-circle text-warning"></i>
							<p>Warning</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon far fa-circle text-info"></i>
							<p>Informational</p>
						</a>
					</li>
				</ul> -->
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
	<!-- jQuery -->
	<script src="resources/plugins/jquery/jquery.min.js"></script>
	<script>
		$(function () {
			var path = $(location).attr('pathname');
			$("#leftMenu").removeClass("active");
			$("#leftMenuSub").removeClass("active");
			if(path.indexOf('myFarm') != -1){
				$(".leftMenu").eq(0).addClass("active");
			}else if(path.indexOf('Inspect') > -1){
				$(".leftMenu").eq(1).addClass("active");
				$(".leftMenu").eq(1).closest(".nav-item").addClass("menu-is-opening menu-open");
				if(path.indexOf('request') > -1 || path.indexOf('register') > -1){
					$(".leftMenuSub").eq(0).addClass("active");
				}else if(path.indexOf('setting') > -1){
					$(".leftMenuSub").eq(1).addClass("active");
				}else if(path.indexOf('result') > -1){
					$(".leftMenuSub").eq(2).addClass("active");
				}
			}
		});

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
					if(type == 'user'){
						$("#userAdr").val(data.jibunAddress);
						$("#userZip").val(data.zonecode);
						$('#sidoNm').val(data.sido);
						$('#sigunguNm').val(data.sigungu);
						$('#sigunguCd').val(data.sigunguCode);

						$('#userDtlAdr').focus();
					}else if(type == 'hospital'){
						$("#hospAdr").val(data.jibunAddress);
						$("#hospZip").val(data.zonecode);
						$('#hospSidoNm').val(data.sido);
						$('#hospSigunguNm').val(data.sigungu);
						$('#hospSigunguCd').val(data.sigunguCode);

						$('#hospDtlAdr').focus();
					}else if(type == 'farm'){
						$("#farmAdr").val(data.jibunAddress);
						$("#farmZip").val(data.zonecode);
						$('#farmSidoNm').val(data.sido);
						$('#farmSigunguNm').val(data.sigungu);
						$('#farmSigunguCd').val(data.sigunguCode);

						$('#farmDtlAdr').focus();
					}else if(type == 'butler'){
						$('#butlerSido').val(data.sido);
						$('#butlerSigungu').val(data.sigungu);
						$('#butlerSigunguCd').val(data.sigunguCode);

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

			if(hospNm == null || hospNm == ''){
				alert('기관(병원)명은 필수입력입니다.');
				return;
			}

			if(hospHp == null || hospHp == ''){
				alert('핸드폰번호는 필수입력입니다.');
				return;
			}

			if(hospAdr == null || hospAdr == ''){
				alert('주소는 필수입력입니다.');
				return;
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
						html += '<tr ondblclick="fn_setHospDataToForm('+list.hospNo+');">';
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
						html += '<tr ondblclick="fn_setUserDataToForm('+list.userNo+', '+list.userNm+');">';
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

	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ABNext</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/abnext/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/abnext/resources/dist/css/adminlte.min.css">
  
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
            <h1>진단검사</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">신청접수</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="card-header">
         <div class="card-tools">
           <div class="input-group input-group-sm">
             <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
             <div class="input-group-append">
               <div class="btn btn-primary">
                 <i class="fas fa-search" style="margin-top:3px;"></i>
               </div>
             </div>
           </div>
         </div>
      </div>

	  <!-- Main content -->
      <div class="invoice p-3 mb-3">
        <!-- Table row -->
        <div class="row">
          <div class="col-12 table-responsive">
            <table class="table table-striped">
              <thead>
              <tr>
                <th>의뢰번호</th>
                <th>신청일</th>
                <th>상태</th>
                <th>동물명</th>
                <th>신청자(기관)</th>
                <th>담당수의사</th>
                <th>비용</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>ABC2203010002</td>
                <td>2022.02.22</td>
                <td>신청</td>
                <td>망고</td>
                <td>ㅇㅇ병원</td>
                <td>나수의</td>
                <td>30,000</td>
              </tr>              <tr>
                <td>ABC2203010002</td>
                <td>2022.02.22</td>
                <td>신청</td>
                <td>망고</td>
                <td>ㅇㅇ병원</td>
                <td>나수의</td>
                <td>30,000</td>
              </tr>              <tr>
                <td>ABC2203010002</td>
                <td>2022.02.22</td>
                <td>신청</td>
                <td>망고</td>
                <td>ㅇㅇ병원</td>
                <td>나수의</td>
                <td>30,000</td>
              </tr>
              </tbody>
            </table>
          </div>
          <!-- /.col -->
        </div>
         <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>

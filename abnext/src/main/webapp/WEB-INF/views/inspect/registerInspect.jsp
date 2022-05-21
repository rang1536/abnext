<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | General Form Elements</title>

  
    <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/abnext/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="/abnext/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="/abnext/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="/abnext/resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="/abnext/resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="/abnext/resources/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="/abnext/resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="/abnext/resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="/abnext/resources/plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="/abnext/resources/plugins/dropzone/min/dropzone.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/abnext/resources/dist/css/adminlte.min.css">
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
            <h1>* 진단검사 신청서</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">직접접수</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- general form elements disabled -->
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">신청정보</h3>
          </div>
            <!-- /.card-header -->
            <div class="card-body">
              <form>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*의뢰번호</label>
                      <input type="text" class="form-control" placeholder="의뢰번호" readonly>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*신청일</label>
                      <input type="text" class="form-control" placeholder="신청일" readonly>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*신청자(기관)</label>
                      <input type="text" class="form-control" placeholder="ㅇㅇ병원" readonly>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*담당수의사</label>
                      <input type="text" class="form-control" placeholder="나수의" readonly>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12">
                    <label>*종</label>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <select class="form-control" readonly>
                        <option>앵무</option>
                        <option>option 2</option>
                        <option>option 3</option>
                        <option>option 4</option>
                        <option>option 5</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <select class="form-control" readonly>
                        <option>앵무</option>
                        <option>option 2</option>
                        <option>option 3</option>
                        <option>option 4</option>
                        <option>option 5</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <select class="form-control" readonly>
                        <option>앵무</option>
                        <option>option 2</option>
                        <option>option 3</option>
                        <option>option 4</option>
                        <option>option 5</option>
                      </select>
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*동물명</label>
                      <input type="text" class="form-control" placeholder="동물명" readonly>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*생년월일</label>
                      <div class="input-group date" id="reservationdate" data-target-input="nearest">
                        <!-- <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" data-toggle="datetimepicker" placeholder="생년월일"> -->
                        <!-- <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker"> -->
                        <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" placeholder="생년월일">
                        <div class="input-group-append" data-target="#reservationdate">
                          <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*성별</label>
                        <select class="form-control" readonly>
                          <option>암컷</option>
                          <option>option 2</option>
                        </select>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label><font color="red">등록번호(인식번호)</font></label>
                      <input type="text" class="form-control" placeholder="등록번호(인식번호)" readonly>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>*보호자명</label>
                      <input type="text" class="form-control" placeholder="보호자명" readonly>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label><font color="red">의뢰참고</font></label>
                      <textarea class="form-control" rows="3" placeholder="특이사항... 참고할 만한 사항 작성"></textarea>
                    </div>
                  </div>
                </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- general form elements disabled -->
          </div>

          <div class="card card-success">
            <div class="card-header">
              <h3 class="card-title">검사정보</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <form>
                <div class="row">
                  <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>번호</th>
                    <th>시료정보</th>
                    <th>시료번호</th>
                    <th>검사항목구분</th>
                    <th>검사항복세부</th>
                    <th>검사비</th>
                    <th>삭제</th>
                  </tr>
                  </thead>
                  <tbody>
                    <tr>
		              <td>1</td>
		              <td>분변</td>
		              <td>0001</td>
		              <td>바이러스</td>
		              <td>PDD</td>
		              <td>30,000원</td>
		              <td>삭제</td>
		            </tr>
		            <tr>
		              <td>2</td>
		              <td>분변</td>
		              <td>0001</td>
		              <td>세균</td>
		              <td>살모넬라</td>
		              <td>40,000원</td>
		              <td>삭제</td>
		            </tr>
                  </tbody>
                  <tfoot>
                    <tr>
		              <td colspan="5" align="center">검시비용 계</td>
		              <th>70,000원</th>
		              <th></th>
		            </tr>
		            <tr>
		              <td colspan="7" align="center">
		                <button type="button" class="btn btn-primary"><i class="fas fa-pencil-alt"></i> 접수확인</button>
		              </td>
		            </tr>
                  </tfoot>
                </table>
                </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- general form elements disabled -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <jsp:include page="../layer/layout_footer.jsp"></jsp:include>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/abnext/resources/plugins/jquery/jquery.min.js"></script>
<!-- date-range-picker -->
<script src="/abnext/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Bootstrap 4 -->
<script src="/abnext/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="/abnext/resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="/abnext/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/abnext/resources/dist/js/demo.js"></script>
<!-- Select2 -->
<script src="/abnext/resources/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="/abnext/resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="/abnext/resources/plugins/moment/moment.min.js"></script>
<script src="/abnext/resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- bootstrap color picker -->
<script src="/abnext/resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/abnext/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Select2 -->
<script src="/abnext/resources/plugins/select2/js/select2.full.min.js"></script>
<!-- dropzonejs -->

<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();
  
  //Initialize Select2 Elements
  $('.select2').select2()

  //Initialize Select2 Elements
  $('.select2bs4').select2({
    theme: 'bootstrap4'
  })

  //Date picker
  $('#reservationdate').datetimepicker({
      format: 'YYYY.MM.DD'
  });
});
</script>
</body>
</html>

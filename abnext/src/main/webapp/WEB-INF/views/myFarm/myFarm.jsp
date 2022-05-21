<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
  <!-- Mobiscroll JS and CSS Includes -->
  <link rel="stylesheet" href="resources/scheduler/css/mobiscroll.javascript.min.css">
  <script src="resources/scheduler/js/mobiscroll.javascript.min.js"></script>

  <style type="text/css">
	  body {
	      margin: 0;
	      padding: 0;
	  }
	
	  body,
	  html {
	      height: 100%;
	  }
	
	  .demo-mobile-month-view {
	      height: 100%;
	  }

  </style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="resources/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <jsp:include page="../layer/layout.jsp"></jsp:include>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">My-Farm</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">My-Farm</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
	<div mbsc-page class="demo-mobile-month-view">
	  <div style="height:100%">
	      <div id="demo-mobile-month-view"></div>
	  </div>
	</div>
	
	<script>
	    mobiscroll.setOptions({
	        theme: 'ios',
	        locale: mobiscroll.localeEn
	    });
	
	    var inst = mobiscroll.eventcalendar('#demo-mobile-month-view', {
	        locale: mobiscroll.localeEn,            // Specify language like: locale: mobiscroll.localePl or omit setting to use default
	        theme: 'ios',                           // Specify theme like: theme: 'ios' or omit setting to use default
	        themeVariant: 'light',                  // More info about themeVariant: https://docs.mobiscroll.com/5-16-1/javascript/eventcalendar#opt-themeVariant
	        view: {                                 // More info about view: https://docs.mobiscroll.com/5-16-1/javascript/eventcalendar#opt-view
	            calendar: { type: 'month' },
	            agenda: { type: 'month' }
	        },
	        onEventClick: function (event, inst) {  // More info about onEventClick: https://docs.mobiscroll.com/5-16-1/javascript/eventcalendar#event-onEventClick
	            mobiscroll.toast({ 
	                
	                message: event.event.title
	            });
	        }
	    });
	    
	    mobiscroll.util.http.getJson('events.js', function (events) {
	        inst.setEvents(events);
	    }, 'jsonp');
	</script>
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
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="resources/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="resources/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="resources/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="resources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="resources/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="resources/plugins/moment/moment.min.js"></script>
<script src="resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="resources/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="resources/dist/js/pages/dashboard.js"></script>
</body>
</html>

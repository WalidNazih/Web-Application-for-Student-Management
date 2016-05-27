<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Dashboard |</title>

<!-- Bootstrap core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/maps/jquery-jvectormap-2.0.3.css" />
<link href="css/icheck/flat/green.css" rel="stylesheet" />
<link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

<script src="js/jquery.min.js"></script>
<script src="js/nprogress.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
          
        
        

</head>


<body class="nav-md">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="dashboard.jsp" class="site_title"><i
							class="fa fa-cog"></i> <span>Dashboard</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu prile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<br> <span>Welcome,</span>
							<h2>Simour Houssein</h2>
						</div>
					</div>
					<!-- /menu prile quick info -->

					<br />
					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a href="http://localhost:8070/Simour/SimLogPan"><i class="fa fa-home"></i>
										Home</a></li>
								<li><a href="http://localhost:8070/Simour/GalleryBack"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li><a href="research.jsp"><i class="fa fa-book"></i>
										Research </a></li>
								<li><a href="pedagogy.jsp"><i
										class="fa fa-graduation-cap"></i> Pedagogy</a></li>
								<li><a href="calendar.jsp"><i class="fa fa-calendar"></i>
										Calendar</a></li>
								<li><a href="about.jsp"><i class="fa fa-edit"></i>
										About </a></li>
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img src="images/img.jpg" alt="">Simour
								Houssein <span class=" fa fa-angle-down"></span>
						</a>
							<ul
								class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
								<li><a href="IndexServlet"> See Changes</a></li>
								<li><a href="http://localhost:8070/Simour/LogOut"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a></li>
							</ul></li>
					</ul>

					</nav>
				</div>

			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">

				<div class="page-title"></div>
				<div class="clearfix"></div>

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="dashboard_graph">

							<div class="row x_title">
								<div class="col-md-6">
									<h3>Calendar</h3>
								</div>
								<div class="col-md-6">
									<div id="reportrange" class="pull-right"
										style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
										<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span>December
											30, 2014 - January 28, 2015</span> <b class="caret"></b>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<br />

				<div class="row">


					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="x_panel tile fixed_height_320">
							<div class="x_title">
								<h2>Messages</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br>
								<br> <a href="http://localhost:8070/Simour/Messages"><center>
										<img src="images/messageicon.png" width="140" height="140" /><br>Display
										messages
									</center></a>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="x_panel tile fixed_height_320 overflow_hidden">
							<div class="x_title">
								<h2>General Settings</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
							<center>
										<img src="img/settings.png" width="40px" height="40px" />
										<br><br>
									</center>
							<form action="UpdateSettings" method="POST" id="sett">
								Absence Marks Off Student By : <br>
								<input type="text" size="12" name="mark"><br>
								<input type="submit" value="update" name="markUpdate" class="btn btn-primary btn-sm" style="margin-top:10px">
								<br>News : <br>
								<textarea rows="1" " name="news" for="sett"></textarea>
								<input type="submit" value="update" name="newsUpdate" class="btn btn-primary btn-sm" style="margin-top:10px">
							</form>	
							</div>
						</div>
					</div>


					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="x_panel tile fixed_height_320">
							<div class="x_title">
								<h2>Slides Management</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form id="uploadPic" action="Upload" method="POST"
									enctype="multipart/form-data" >
									<center>
										<label id="filelbl" for="myfile"> <img
											src="img/imgupload.png" width="60px" height="60px" id="blah" /><br>
											<input type="file" name="myfile" id="myfile" size="60"
											style="opacity: 0"> Upload
										</label>
										<br>
									<input type="submit" value="Add" name="slideAdd" class="btn btn-primary btn-sm">
									</center>
								</form><br>
								<form action="DeleteServlet" method="POST">
									<div id="itemsDiv"><select name="item" id="item" style="width:100%">
											<c:forEach var="image" items="${slideL}">
												<option value="${image.id }">Slide ${image.id }</option>
											</c:forEach>	
										</select></div>
										<br>
									
									<input type="submit" value="Remove" name="slideBtn" class="btn btn-primary btn-sm">
								</form>
							</div>
						</div>
					</div>

				</div>


				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Recent Activities
								</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="dashboard-widget-content">
									 <h4>Pictures</h4>
									<ul class="list-unstyled timeline widget">
									<c:forEach var="im" items="${lastImgLike }">
										<li>
											<div class="block">
												<div class="block_content">
													<h2 class="title">
														<a>${im.visitor } liked ${im.image }</a>
													</h2>
												</div>	
											</div>
										</li>
									</c:forEach>
										
										
									</ul>
									<h4>Videos</h4>
									<ul class="list-unstyled timeline widget">
									<c:forEach var="im" items="${lastVidLike }">
										<li>
											<div class="block">
												<div class="block_content">
													<h2 class="title">
														<a>${im.visitor } liked ${im.video }</a>
													</h2>
												</div>	
											</div>
										</li>
									</c:forEach>
										
										
									</ul>
								</div>
							</div>
							
							
						</div><br>
						<div class="x_panel">
									<div class="x_title">
										<h2>Weather</h2>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<div
											id="cont_MzYwNDF8NXwyfDV8MnxGRkZGRkZ8MXw1YWJkYmR8Q3wxfGttcGg-">
											<div
												id="spa_MzYwNDF8NXwyfDV8MnxGRkZGRkZ8MXw1YWJkYmR8Q3wxfGttcGg-">
												<a
													id="a_MzYwNDF8NXwyfDV8MnxGRkZGRkZ8MXw1YWJkYmR8Q3wxfGttcGg-"
													rel="nofollow"
													href="http://www.weather-wherever.co.uk/morocco/casablanca_v36041/"
													target="_blank" style="color: #333; text-decoration: none;">Casablanca
													Weather forecast</a> © <a
													href="http://www.weather-wherever.co.uk">weather-wherever.co.uk</a>
											</div>
											<script type="text/javascript"
												src="http://widget.weather-wherever.co.uk/js/MzYwNDF8NXwyfDV8MnxGRkZGRkZ8MXw1YWJkYmR8Q3wxfGttcGg-"></script>
										</div>
									</div>
								</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
								
							</div>


					<div class="col-md-8 col-sm-8 col-xs-12">



						<div class="row">

							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>Google Map</h2>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<div id="map" style="width:100%;height:600px"></div>
										
										<script>
											function initMap() {
												var mapDiv = document
														.getElementById('map');
												var map = new google.maps.Map(
														mapDiv, {
															center : {
																lat : 33.540,
																lng : -7.65
															},
															zoom : 13
														});
											}
										</script>
										<script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>
									</div>
								</div>
							</div>

						</div>
						<div class="row">
							<div id="CalenderModalNew" class="modal fade" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">

										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">x</button>
											<h4 class="modal-title" id="myModalLabel">New TODO Item</h4>
										</div>
										<div class="modal-body">
											<div id="testmodal" style="padding: 5px 20px;">
												<form id="antoform" class="form-horizontal calender"
													role="form" action="" method="POST">
													<div class="form-group">
														<label class="col-sm-3 control-label">Title</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="title"
																name="title">
														</div>
													</div>
												</form>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default antoclose"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-default" form="antoform">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

	<script src="js/bootstrap.min.js"></script>

	<script src="js/custom.js"></script>
	<script>
		NProgress.done();
	</script>
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<script type="text/javascript" src="js/moment/moment.min.js"></script>
	<script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var cb = function(start, end, label) {
								console.log(start.toISOString(), end
										.toISOString(), label);
								$('#reportrange span').html(
										start.format('MMMM D, YYYY') + ' - '
												+ end.format('MMMM D, YYYY'));
								//alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
							}

							var optionSet1 = {
								startDate : moment().subtract(29, 'days'),
								endDate : moment(),
								minDate : '01/01/2012',
								maxDate : '12/31/2015',
								dateLimit : {
									days : 60
								},
								showDropdowns : true,
								showWeekNumbers : true,
								timePicker : false,
								timePickerIncrement : 1,
								timePicker12Hour : true,
								ranges : {
									'Today' : [ moment(), moment() ],
									'Yesterday' : [
											moment().subtract(1, 'days'),
											moment().subtract(1, 'days') ],
									'Last 7 Days' : [
											moment().subtract(6, 'days'),
											moment() ],
									'Last 30 Days' : [
											moment().subtract(29, 'days'),
											moment() ],
									'This Month' : [ moment().startOf('month'),
											moment().endOf('month') ],
									'Last Month' : [
											moment().subtract(1, 'month')
													.startOf('month'),
											moment().subtract(1, 'month')
													.endOf('month') ]
								},
								opens : 'left',
								buttonClasses : [ 'btn btn-default' ],
								applyClass : 'btn-small btn-primary',
								cancelClass : 'btn-small',
								format : 'MM/DD/YYYY',
								separator : ' to ',
								locale : {
									applyLabel : 'Submit',
									cancelLabel : 'Clear',
									fromLabel : 'From',
									toLabel : 'To',
									customRangeLabel : 'Custom',
									daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We',
											'Th', 'Fr', 'Sa' ],
									monthNames : [ 'January', 'February',
											'March', 'April', 'May', 'June',
											'July', 'August', 'September',
											'October', 'November', 'December' ],
									firstDay : 1
								}
							};
							$('#reportrange span').html(
									moment().subtract(29, 'days').format(
											'MMMM D, YYYY')
											+ ' - '
											+ moment().format('MMMM D, YYYY'));
							$('#reportrange').daterangepicker(optionSet1, cb);
							$('#reportrange').on('show.daterangepicker',
									function() {
										console.log("show event fired");
									});
							$('#reportrange').on('hide.daterangepicker',
									function() {
										console.log("hide event fired");
									});
							$('#reportrange')
									.on(
											'apply.daterangepicker',
											function(ev, picker) {
												console
														.log("apply event fired, start/end dates are "
																+ picker.startDate
																		.format('MMMM D, YYYY')
																+ " to "
																+ picker.endDate
																		.format('MMMM D, YYYY'));
											});
							$('#reportrange').on('cancel.daterangepicker',
									function(ev, picker) {
										console.log("cancel event fired");
									});
							$('#options1').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').setOptions(
												optionSet1, cb);
									});
							$('#options2').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').setOptions(
												optionSet2, cb);
									});
							$('#destroy').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').remove();
									});
						});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			var toggled = true;
			var liSize = $(".left_col").width();
			$(".principale").width(liSize);
			$("#menu_toggle").click(function() {
				$("#logosmall").toggle();
				$("#logobig").toggle();
				if (toggled) {
					$(".principale").width(65);
				} else {
					$(".principale").width(liSize);
				}
				toggled = !toggled;
			});

			$(".principale").click(function() {
				if (!toggled) {
					$(this).width(70);
				}
			});

		});
	</script>
	
</body>

</html>
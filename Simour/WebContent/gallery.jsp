
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gallery Settings |</title>

<!-- Bootstrap core CSS -->
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/maps/jquery-jvectormap-2.0.3.css" />
<link href="css/icheck/flat/green.css" rel="stylesheet" />
<link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

<!-- Include jQuery form & jQuery script file. -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<script src="js/fileUploadScript.js"></script>
<!-- Include css styles here -->
<link href="css/style.css" rel="stylesheet" type="text/css" />

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
						<a href="index.html" class="site_title"><i class="fa fa-cog"></i>
							<span>Dashboard</span></a>
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
								<li><a href="dashboard.jsp"><i class="fa fa-home"></i>
										Home</a></li>
								<li><a href="gallery.jsp"><i class="fa fa-camera-retro"></i>
										Gallery</a></li>
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
								<li><a href="index.jsp"> See Changes</a></li>
								<li><a href="javascript:;"> <span
										class="badge bg-red pull-right">50%</span> <span>Settings</span>
								</a></li>
								<li><a href="javascript:;">Help</a></li>
								<li><a href="login.html"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a></li>
							</ul></li>
					</nav>
				</div>

			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">

				<!-- top tiles -->
				<div class="row tile_count"></div>

				<br />

				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="x_panel tile fixed_height_400">
							<div class="x_title">
								<h2>Add Picture</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<form id="uploadPic" action="Upload" method="POST"
									enctype="multipart/form-data">
									<center>
										<label id="filelbl" for="myfile"> <img
											src="images/uploadlogo.png" width="40px" height="40px"
											id="blah" /><br> <input type="file" name="myfile"
											id="myfile" size="60" style="opacity: 0"> Upload
										</label>

									</center>
									<div id="fields">
										Title :<br> <input type="text" name="title" size="59"
											required="" /><br> Description:<br>
										<textarea style="width: 377px" name="desc" form="uploadPic"
											required=""> </textarea>
										<br> <input type="submit" value="Add"
											class="btn btn-primary" style="margin-top: 10px"
											onclick="shozModal()" />
									</div>
									<br>

								</form>

							</div>
						</div>
					</div>




				</div>
				<!-- /page content -->

			</div>

		</div>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function readURL(input) {

				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('#blah').attr('src', e.target.result);
						$('#blah').width("150px");
						$('#blah').height("150px");
						$('#blah').addClass("img-thumbnail");
					}

					reader.readAsDataURL(input.files[0]);
				}
			}

			$("#myfile").change(function() {
				readURL(this);
			});
		</script>
		<!-- /datepicker -->
		<!-- /footer content -->
</body>

</html>

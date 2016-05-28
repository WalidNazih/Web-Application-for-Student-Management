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

<title>Contact |</title>

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
<script language="javascript" type="text/javascript">
	function getCaptcha() {
		var chars = "0Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0Kk1Ll2Mm3Nn4Oo5Pp6Qq7Rr8Ss9Tt0Uu1Vv2Ww3Xx4Yy5Zz";
		var string_length = 5;
		var captchastring = '';
		for (var i = 0; i < string_length; i++) {
			var rnum = Math.floor(Math.random() * chars.length);
			captchastring += chars.substring(rnum, rnum + 1);
		}
		document.getElementById("randomfield").innerHTML = captchastring;
	}
</script>
<style>
#captcha {
	height: 38px;
	background-image: url(overlay1.png);
	background-repeat: no-repeat;
	font-size: 25px;
	position: relative;
}

#captcha_gen {
	left: 10px;
	top: 3px;
	position: absolute;
	Font-family: Monospace;
	font-weight: bold;
	text-align: justify;
}
</style>

</head>


<body class="nav-md" onload="getCaptcha();">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div>
						<a id="logobig" href="index.jsp"><img
							style="margin-bottom: -10px; width: 180px; height: 60px; margin-top: 20px; margin-left: 10px"
							src="images/logo.png"></a>
					</div>
					<div>
						<a id="logosmall" hidden="true" href="index.jsp"><img
							style="height: 30px; width: 35px; margin-top: 20px; margin-left: 17px"
							src="images/logosmall.png"></a>
					</div>
					<div class="clearfix"></div>


					<br />
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<ul class="nav side-menu">
								<li class="principale"><a href="IndexServlet"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a
									href="Images"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a><i class="fa fa-book"></i>
										Research <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="Books">Books</a></li>
										<li><a href="Articles">Articles</a></li>
										<li><a href="Chapters">Book Chapters</a></li>
									</ul></li>
								<li class="principale"><a><i
										class="fa fa-graduation-cap"></i> Pedagogy <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="Initiale">Formation Initiale</a></li>
										<li><a href="Continue">Formation Continue</a></li>
										<li><a href="">Encadrement</a></li>
									</ul></li>
								<li class="principale"><a href="contact.jsp"><i
										class="fa fa-envelope-o"></i> Contact</a></li>
								<li class="principale"><a href="about.jsp"><i
										class="fa fa-edit"></i> About </a></li>
							</ul>
						</div>
					</div>

					<!-- /menu footer buttons -->
					
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					</nav>
				</div>
				<div class="title_right">
					<div
						class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
						<div class="input-group"
							style="margin-top: -50px; width: 200px; float: right">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>

			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<div style="margin-top: 100px">

					<h2>Send me a message :</h2>
					<br>
					<form name="randform" action="Contact" methode="post" id="Cnt">
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="name">Full Name :<span class="required"><font
									color="red"> *</font></span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="name" class="form-control col-md-7 col-xs-12"
									name="sender" placeholder="e.g Safaa Askour"
									required="required" type="text">
							</div>
						</div>
						<br> <br> <br>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="email">Email :<span class="required"><font
									color="red"> *</font></span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="email" id="email" name="email" required="required"
									class="form-control col-md-7 col-xs-12"
									placeholder="e.g safaa.askour@gmail.com">
							</div>
						</div>
						<br> <br>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="subject">Subject :<span class="required"><font
									color="red"> *</font></span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="name" class="form-control col-md-7 col-xs-12"
									name="subject" placeholder="80 characters Max"
									required="required" type="text">
							</div>
						</div>
						<br> <br> <br>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="textarea">Message :<span class="required"><font
									color="red"> *</font></span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea id="textarea" required="required" name="message"
									class="form-control col-md-7 col-xs-12"
									placeholder="300 characters Max" form="Cnt"></textarea>
							</div>
							<br> <br> <br> <br>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="email">Verify Yourself :<span class="required"><font
										color="red"> *</font></span>
								</label>

								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="name" class="form-control col-md-7 col-xs-12"
										name="code" placeholder="Enter Verification code" type="text"
										required=""> <br>
									<br>
									<div id="captcha">
										<div id="captcha_gen">
											<label align="center" id="randomfield"></label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="item form-group">
							<div class="col-md-6 col-md-offset-3" style="margin-top: 20px">
								<button type="submit" id="Refresh" class="btn btn-success"
									onClick="getCaptcha();" form="Cnt">Refresh</button>
								<button id="send" type="submit" class="btn btn-success"
									onclick="fnsubmit()">Send</button>
							</div>
						</div>
						<br> <br> <br> <br> <br>
						<h5 style="margin-left: 10px">
							<font color="red"> *</font> : Required field.
						</h5>
					</form>

				</div>
			</div>
			<!-- /page content -->

		</div>

	</div>

	<div id="custom_notifications" class="custom-notifications dsp_none">
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>

	<script src="js/bootstrap.min.js"></script>
	<!-- bootstrap progress js -->
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>

	<script src="js/custom.js"></script>
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
	<script>
		NProgress.done();
	</script>
</body>

</html>
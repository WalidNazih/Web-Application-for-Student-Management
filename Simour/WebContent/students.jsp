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

<title>Students Area |</title>

<!-- Bootstrap core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
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

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Indie+Flower'
	rel='stylesheet' type='text/css'>

</head>


<body class="nav-md">
	<div class="container body">
		<div class="main_container">


	

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div>
						<a id="logobig" href="IndexServlet"><img
							style="margin-bottom: -10px; width: 180px; height: 60px; margin-top: 20px; margin-left: 10px"
							src="images/logo.png"></a>
					</div>
					<div>
						<a id="logosmall" hidden="true" href="IndexServlet"><img
							style="height: 30px; width: 35px; margin-top: 20px; margin-left: 17px"
							src="images/logosmall.png"></a>
					</div>
					<div class="clearfix"></div>

					<br />
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<ul class="nav side-menu">
								<li class="principale"><a
									href="IndexServlet"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a
									href="Images"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a><i class="fa fa-book"></i>
										Research <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="Books">Books</a></li>
										<li><a href="Articles">Articles</a></li>
										<li><a href="Chapters">Book
												Chapters</a></li>
									</ul></li>
								<li class="principale notac"><a><i
										class="fa fa-graduation-cap"></i> Pedagogy <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="Initiale">Formation Initiale</a></li>
										<li><a href="Continue">Formation Continue</a></li>
										<li><a href="Continue">Encadrement</a></li>
									</ul></li>
								<li class="principale"><a href="students.jsp"><i
										class="fa fa-university"></i> Students Area</a></li>
								<li class="principale"><a href="contact.jsp"><i
										class="fa fa-envelope-o"></i> Contact</a></li>
								<li class="principale"><a href="about.jsp"><i
										class="fa fa-edit"></i> About </a></li>
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
					</nav>
				</div>

				<div class="title_right">
					<div
						class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
						<form action="Search" method="POST">
							<div class="input-group"
								style="margin-top: -50px; width: 250px; float: right">
								<input type="text" class="form-control" name="searchQuery"
									placeholder="Search for..."> <span
									class="input-group-btn"> <input class="btn btn-default"
									type="submit" value="GO">
								</span>
							</div>
						</form>
					</div>
				</div>

			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-title"></div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="x_panel">
						<div class="x_content">
						<div style="margin-top:200px; margin-bottom:200px">
							<center>
							<h1>Welcome to Students' Area</h1>
							<h2>Please type your CNE to display your info.</h2>
							<br><br>
								<div style="width:200px">
									<form action="Students" method="POST">
										<input type="text" name="cne" required=""/><br><br>
										<input type="submit" class="btn btn-primary" name="infostu" value="Submit"/>
									</form>
								</div>
								<br>
								<br>
								<c:if test="${not empty student.lastName}">
								<h4>Hello, ${student.lastName } ${student.firstName} </h4>
								<h4>You've skipped class ${student.absence } time(s). <br>
									Thus, you've been marked off by ${absenceMark } points, ${absenceDef } each time. <br>
									Your mark is ${student.note }</h4>
								</c:if>
								
							</center>
						</div>
						</div>
					</div>
					<div class="copyright-info">
					<p class="pull-right">
						Developed by:  Askour Safa&agrave & Nazih Walid | D&eacutepartement Informatique 
					</p>
				</div>
				</div>
			</div>
		</div>
	</div>

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
					$(".principale").width(liSize-5);
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
	
	<script src="js/custom.js"></script>
</body>

</html>

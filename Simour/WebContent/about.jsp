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

<title>Simour |</title>

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
<script type="text/javascript" src="js/jssor.slider.mini.js"></script>
<!-- use jssor.slider.debug.js instead for debug -->

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
									</ul></li>
								<li class="principale"><a href="students.jsp"><i
										class="fa fa-university"></i> Students' Space</a></li>
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
							<section id="about" style="margin-top:-120px;margin-bottom:20px">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="section-heading">About</h2>
								<h3 class="section-subheading text-muted">Lhoussain Simour<br>
																		Assistant Professor of english and Cultural Studies.<br>
																		University of Hassan II. Casablanca.</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<ul class="timeline">
									<li>
										<div class="timeline-image">
											<img class="img-circle img-responsive" src="img/BA.jpg" style="height:100%"
												alt="">
										</div>
										<div class="timeline-panel">
											<div class="timeline-heading">
												<h4>1987 - 1989</h4>
												<h4 class="subheading">BA in English Language and Literature</h4>
											</div>
											<div class="timeline-body">
												<p class="text-muted">Hassan II University Ain Chock, Casablanca.<br>
												Faculty of Humanities, Department of English.<br>
												BA research paper :  " Shakespearean Tragedy: Love and Death in Othello and Hamlet ",<br>
												supervised by Professor Rachid Aboussaouira.</p>
											</div>
										</div>
									</li>
									<li class="timeline-inverted">
										<div class="timeline-image">
											<img class="img-circle img-responsive" src="img/Postgrad.jpg" style="height:100%"
												alt="">
										</div>
										<div class="timeline-panel">
											<div class="timeline-heading">
												<h4>2001 - 2002</h4>
												<h4 class="subheading">Post graduate first certificate in English for Specific Objectives</h4>
											</div>
											<div class="timeline-body">
												<p class="text-muted">University Of Bordeaux 2, France.<br>
												Department of Langues Vivantes Pratiques.<br>
												(distance learning)
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="timeline-image">
											<img class="img-circle img-responsive" src="img/MA.jpg" style="height:100%"
												alt="">
										</div>
										<div class="timeline-panel">
											<div class="timeline-heading">
												<h4>2005 - 2007</h4>
												<h4 class="subheading">MA in Cultural Studies</h4>
											</div>
											<div class="timeline-body">
												<p class="text-muted">Sidi Mohammed Ben Abdullah University, FEZ.<br>
												Faculty of Humanities, Department of English.<br>
												Program : Cultural Studies; Culture and Identity in Morocco.<br>
												Master's Dissertation : " The Native Travels: America through the eyes of Moroccan Travellers"<br>
												supervised by Dr Khalid Bekkaoui</p>
											</div>
										</div>
									</li>
									<li class="timeline-inverted">
										<div class="timeline-image">
											<img class="img-circle img-responsive" src="img/phd.jpg" style="height:100%"
												alt="">
										</div>
										<div class="timeline-panel">
											<div class="timeline-heading">
												<h4>Feb 2008 - Oct 2012</h4>
												<h4 class="subheading">PhD Cultural Studies</h4>
											</div>
											<div class="timeline-body">
												<p class="text-muted">Sidi Mohammed Ben Abdullah University, FEZ.<br>
												Faculty of Humanities, Department of English.<br>
												Program : Cultural Studies; Culture and Identity in Morocco.<br>
												Doctoral Dissertation : America through Moroccan Eyes, supervised by Dr. Khalid Bekkaoui (Fez, Morocco)</p>
											</div>
										</div>
									</li>
									
								</ul>
							</div>
						</div>
					</div>
					</section>
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

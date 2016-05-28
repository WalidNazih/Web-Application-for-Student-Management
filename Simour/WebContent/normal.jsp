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

<title>Formation Initial|</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<link href="css/custom.css" rel="stylesheet">
<link href="css/icheck/flat/green.css" rel="stylesheet" />
<link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

<script src="js/jquery.min.js"></script>
<script src="js/nprogress.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
         <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        
        <![endif]-->
<script src="js/bootstrap.min.js"></script>
<script src="js/ajax.js"></script>
</head>


<body class="nav-md">

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

				</div>
			</div>

			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					</nav>
				</div>

				<div class="title_right">
					<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
						<form action="Search" method="POST">
							<div class="input-group"
								style="margin-top: -50px; width: 250px; float: right">
								<input type="text" class="form-control" name="searchQuery"
									placeholder="Search for..."> <span
									class="input-group-btn">
									 <input class="btn btn-default" type="submit" value="GO">
								</span>
							</div>
							</form>
						</div>
				</div>

			</div>

			
			

			<div class="right_col" role="main">
				<div class="page-title"></div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Lesson Gallery (Formation Initiale)</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content" >
								<div class="row">
									<div id="portfolio">
										<div id="image-container">
											<c:forEach var="ar" items="${normaleLesson}">
												<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6" style="height:154px; margin-top:10px">
													<div style="float:left; display:block;margin-right:20px">
														<div style="width:150px;height:100px">
															<img style="width: 100%; height: 150px; display: block;"
																src="${ar.icon}" alt="image" id="clickImage" />
															
														</div>
														
													</div>
													<div style="margin-left:50px">
															<h3 style="font-family: 'Titillium Web', sans-serif; font-size:2vw; font-weight:bold">${ar.title}</h3>
															<a href="${ar.url}" style="position: absolute;bottom:0;" class="btn btn-primary lessonDown"> Download </a>
														</div>
												</div> 
											</c:forEach>
											
										</div>
									</div>

								</div>
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
	<script src="js/modalshow.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>


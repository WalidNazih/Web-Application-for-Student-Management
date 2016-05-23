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
<script>
	jQuery(document).ready(function($) {

		var jssor_1_SlideshowTransitions = [ {
			$Duration : 1200,
			$Opacity : 2
		} ];

		var jssor_1_options = {
			$AutoPlay : true,
			$SlideshowOptions : {
				$Class : $JssorSlideshowRunner$,
				$Transitions : jssor_1_SlideshowTransitions,
				$TransitionsOrder : 1
			},
			$ArrowNavigatorOptions : {
				$Class : $JssorArrowNavigator$
			},
			$BulletNavigatorOptions : {
				$Class : $JssorBulletNavigator$
			}
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		//you can remove responsive code if you don't want the slider scales while window resizes
		function ScaleSlider() {
			var bodyWidth = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (bodyWidth)
				jssor_1_slider.$ScaleWidth(Math.min(bodyWidth, 1920));
			else
				window.setTimeout(ScaleSlider, 10);
		}
		ScaleSlider();

		$(window).bind("load", ScaleSlider);
		$(window).bind("resize", ScaleSlider);
		$(window).bind("orientationchange", ScaleSlider);
	});
</script>
</head>


<body class="nav-md">
	<div class="container body">
		<div class="main_container">


			<div class="modal fade" id="myModal">
				<div class="modal-header">
					<a class="close" data-dismiss="modal">×</a>
					<h3>Modal header</h3>
				</div>
				<div class="modal-body">
					<div class="">
						<img src="images/androidlogo.png" width="90px" height="100px"
							style="float: left; display: block; margin-left: 39px; margin-top: 20px" />
						<h1
							style="margin-top: 35px; font-weight: bold; margin-left: 50px; font-family: 'Indie Flower', cursive;">
							Android Application <br> Coming Soon
						</h1>
						<br>
						<center>
							<img src="images/googleplay.png" width="200px" height="80px"
								style="display: block; margin-top: 20px" />
						</center>
					</div>
				</div>
				<div class="modal-footer">
					<a href="#" class="btn">Close</a> <a href="#"
						class="btn btn-primary">Save changes</a>
				</div>
			</div>

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
								<li class="principale"><a
									href="http://localhost:8070/Simour/IndexServlet"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a
									href="http://localhost:8070/Simour/Images"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a><i class="fa fa-book"></i>
										Research <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="http://localhost:8070/Simour/Books">Books</a></li>
										<li><a href="http://localhost:8070/Simour/Articles">Articles</a></li>
										<li><a href="http://localhost:8070/Simour/Chapters">Book
												Chapters</a></li>
									</ul></li>
								<li class="principale"><a><i
										class="fa fa-graduation-cap"></i> Pedagogy <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="form.html">Formation Initiale</a></li>
										<li><a href="form_advanced.html">Formation Continue</a></li>
										<li><a href="form_advanced.html">Encadrement</a></li>
									</ul></li>
								<li class="principale"><a href="contact.jsp"><i
										class="fa fa-envelope-o"></i> Contact</a></li>
								<li class="principale"><a href="about_front.jsp"><i
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
							<div class="col-md-8 col-xs-12 col-sm-12">
								<div class="" id="jssor_1"
									style="position: relative; margin: 0 auto; top: 0px; width:800px; left: 0px; height: 400px; overflow: hidden; visibility: hidden;">
									<div data-u="loading"
										style="position: absolute; top: 0px; left: 0px;">
										<div
											style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
										<div
											style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
									</div>
									<div data-u="slides"
										style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 500px; overflow: hidden;">
										<c:forEach var="sl" items="${slideL }">
											<div data-p="112.50" style="display: none;">
											<img data-u="image" src="${sl.url }"
												class="img-thumbnail" />
										</div>
										</c:forEach>
										
									</div>
									<!-- Bullet Navigator -->
									<div data-u="navigator" class="jssorb05"
										style="bottom: 16px; right: 16px;" data-autocenter="1">
										<!-- bullet navigator item prototype -->
										<div data-u="prototype" style="width: 16px; height: 16px;"></div>
									</div>
									<!-- Arrow Navigator -->
									<span data-u="arrowleft" class="jssora12l"
										style="top: 0px; left: 0px; width: 30px; height: 46px;"
										data-autocenter="2"></span> <span data-u="arrowright"
										class="jssora12r"
										style="top: 0px; right: 0px; width: 30px; height: 46px;"
										data-autocenter="2"></span>
								</div>

							</div>
							<br>
							
							<div class="col-md-4">
								<img src="images/androidlogo.png" width="90px" height="100px"
									style="float: left; display: block; margin-left: 39px; margin-top: 20px" />
								<h1
									style="margin-top: 35px; font-weight: bold; margin-left: 50px; font-family: 'Indie Flower', cursive;">
									Android Application <br> Coming Soon
								</h1>
								<br>
								<center>
									<img src="images/googleplay.png" width="200px" height="80px"
										style="display: block; margin-top: 20px" />
								</center>
							</div>

						</div>

						<div class="x_title">
							<h2>Latest Pictures</h2>
							<div class="clearfix"></div>
						</div>

						<div>
							<c:forEach var="image" items="${lastIm}">
								<div style="margin-left: -10px; margin-top: 20px"
									class="col-md-2">
									<div style="height: 180px; width: 180px" class="thumbnail">
										<div class="image view view-first">
											<a href="#" class="pop"> <img
												style="width: 100%; height: 180px; display: block;"
												src="${image.url}" alt="image" id="clickImage" />

											</a>
										</div>

									</div>
								</div>
							</c:forEach>

						</div>
						<br>
						<br>
						<div class="clearfix"></div>

						<div class="x_title">
							<h2>Latest Videos</h2>
							<div class="clearfix"></div>
						</div>
						<div>
							<c:forEach var="ar" items="${lastVid}">
								<div class="col-sm-3">
									<div class="">
										<div class="image view view-first">

											<img style="width: 100%; height: 230px; display: block;"
												src="${ar.thumbnail}" alt="video" id="clickImage" />
											<div class="mask" style="color: white; height: 230px">
												<br> <i id="likecount"
													style="font-weight: bold; font-size: 20px;">${ar.likes}
													likes</i>
											</div>


										</div>
										<div class="caption">
											<center>
												<p style="font-weight: bold; font-size: 20px">${ar.description}</p>
											</center>
										</div>
									</div>
								</div>
							</c:forEach>

						</div>
						<br>
						<div class="clearfix">

							<div id="footer" class="col-md-12 col-xs-12 col-sm-12">
								<hr />
								<br>
								<div class="footer-box col-md-3">
									<h3>Latest Articles</h3>
									<ul class="popular-posts" style="list-style: dot">
										<c:forEach var="ar" items="${lastArt}">
											<li>
												<h5>
													<p>${ar.title}</p>
												</h5>
											</li>
										</c:forEach>
									</ul>
								</div>
								<div class="footer-box col-md-3">
									<h3>Latest Lessons</h3>
									<ul class="popular-posts" style="list-style: dot">
										<c:forEach var="ar" items="${lastLess}">
											<li>
												<h5>
													<p>${ar.title}</p>
												</h5>
											</li>
										</c:forEach>
									</ul>
								</div>
								<div class="footer-box col-md-3">
									<h3>About</h3>
									<p>Donec id elit non mi porta gravida at eget metus. Donec
										ullamcorper nulla non metus auctor fringilla.</p>
									<p>
										Lorem Ipsum Dolor Sit Moon Avenue No:11/21 Planet City, Earth<br>
										<br> <span class="lite1">Fax:</span> +555 797 534 01<br>
										<span class="lite1">Tel:</span> +555 636 646 62<br> <span
											class="lite1">E-mail:</span> name@domain.com
									</p>


								</div>
								<div class="footer-box col-md-3">
									<div id="map" style="width: 300px; height: 300px"></div>

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
									<script
										src="https://maps.googleapis.com/maps/api/js?callback=initMap"
										async defer></script>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var toggled = true;
			var liSize = $(".principale").width();

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

	<script src="js/custom.js"></script>
</body>

</html>

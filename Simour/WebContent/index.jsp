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

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Indie+Flower'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
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

		
		//responsive code end
	});
</script>

<style>

/* jssor slider bullet navigator skin 05 css */
/*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
.jssorb05 {
	position: absolute;
}

.jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
	position: absolute;
	/* size of bullet elment */
	width: 16px;
	height: 16px;
	background: url('img/b05.png') no-repeat;
	overflow: hidden;
	cursor: pointer;
}

.jssorb05 div {
	background-position: -7px -7px;
}

.jssorb05 div:hover, .jssorb05 .av:hover {
	background-position: -37px -7px;
}

.jssorb05 .av {
	background-position: -67px -7px;
}

.jssorb05 .dn, .jssorb05 .dn:hover {
	background-position: -97px -7px;
}

/* jssor slider arrow navigator skin 12 css */
/*
        .jssora12l                  (normal)
        .jssora12r                  (normal)
        .jssora12l:hover            (normal mouseover)
        .jssora12r:hover            (normal mouseover)
        .jssora12l.jssora12ldn      (mousedown)
        .jssora12r.jssora12rdn      (mousedown)
        */
.jssora12l, .jssora12r {
	display: block;
	position: absolute;
	/* size of arrow element */
	width: 30px;
	height: 46px;
	cursor: pointer;
	background: url('img/a12.png') no-repeat;
	overflow: hidden;
}

.jssora12l {
	background-position: -16px -37px;
}

.jssora12r {
	background-position: -75px -37px;
}

.jssora12l:hover {
	background-position: -136px -37px;
}

.jssora12r:hover {
	background-position: -195px -37px;
}

.jssora12l.jssora12ldn {
	background-position: -256px -37px;
}

.jssora12r.jssora12rdn {
	background-position: -315px -37px;
}
.shadow {
-moz-box-shadow: 0 0 30px 5px #999;
-webkit-box-shadow: 0 0 30px 5px #999;
}
</style>
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
					<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">Image preview</h4>
								</div>
								<div class="modal-body">
									<center>
										<img src="" class="imagepreview"
											style="width: 570px; height: 470px;">
									</center>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>

					<br />
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<ul class="nav side-menu">
								<li class="principale"><a href="http://localhost:8070/Simour/IndexServlet"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a
									href="http://localhost:8070/Simour/Images"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a><i class="fa fa-book"></i>
										Research <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="http://localhost:8070/Simour/Books">Books</a></li>
										<li><a href="http://localhost:8070/Simour/Articles">Articles</a></li>
										<li><a href="http://localhost:8070/Simour/Chapters">Book Chapters</a></li>
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

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
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
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-title"></div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">

							<div class="x_content">

								<div class="row">
									<div class="col-md-8 col-xs-8 col-sm-8">
										<div class="shadow" id="jssor_1"
											style=" position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 400px; overflow: hidden; visibility: hidden;">
											<!-- Loading Screen -->
											<div data-u="loading"
												style="position: absolute; top: 0px; left: 0px;">
												<div
													style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
												<div
													style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
											</div>
											<div data-u="slides"
												style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 400px; overflow: hidden;">
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/slide-01.jpg" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/slide-02.jpg" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/slide-04.jpg" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/slide-05.jpg" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/slide-06.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/slide-07.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture3.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture4.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture5.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture6.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture7.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture10.PNG" class="img-thumbnail"/>
												</div>
												<div data-p="112.50" style="display: none;" >
													<img data-u="image" src="images/Capture11.PNG" class="img-thumbnail"/>
												</div>
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
									<div class="col-md-4 col-xs-4 col-sm-4">
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
								<br> <br>

							</div>
							<br> <br>
							<div class="x_title">
								<h2>Latest Media</h2>
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
													<div class="mask">
														<i style="margin-top: 55px" class="fa fa-search"></i>
													</div>
												</a>
											</div>

										</div>
									</div>
								</c:forEach>
								
							</div>
							<div class="clearfix"></div>
							<div class="x_title">
								<h2>Latest Articles</h2>
								<div class="clearfix"></div>
								</div>	
								<br>
								<div class="clearfix">
									<div id="footer">
										<div class="footer-box col-md-4">
											<h3>Popular Posts</h3>
											<ul class="popular-posts">
												<li><a href="#"><img src="style/images/art/s1.jpg"
														alt="" /></a>
													<h5>
														<a href="#">Dolor Commodo Consectetur</a>
													</h5> <span>26 Aug 2011 | <a href="#">21 Comments</a></span></li>

												<li><a href="#"><img src="style/images/art/s2.jpg"
														alt="" /></a>
													<h5>
														<a href="#">Dolor Commodo Consectetur</a>
													</h5> <span>26 Aug 2011 | <a href="#">21 Comments</a></span></li>

												<li><a href="#"><img src="style/images/art/s3.jpg"
														alt="" /></a>
													<h5>
														<a href="#">Dolor Commodo Consectetur</a>
													</h5> <span>26 Aug 2011 | <a href="#">21 Comments</a></span></li>

											</ul>
										</div>
										<div class="footer-box col-md-4">
											<h3>About</h3>
											<p>Donec id elit non mi porta gravida at eget metus.
												Donec ullamcorper nulla non metus auctor fringilla.</p>
											<p>
												Lorem Ipsum Dolor Sit Moon Avenue No:11/21 Planet City,
												Earth<br> <br> <span class="lite1">Fax:</span>
												+555 797 534 01<br> <span class="lite1">Tel:</span>
												+555 636 646 62<br> <span class="lite1">E-mail:</span>
												name@domain.com
											</p>


										</div>

										<div class="footer-box col-md-4 last">
											<h3>Custom Text</h3>
											<p>Nullam quis risus eget urna mollis ornare vel eu leo.
												Maecenas faucibus mollis interdum. Etiam porta sem malesuada
												magna mollis euismod. Nulla vitae elit.</p>
											<p>Donec ullamcorper nulla non metus auctor fringilla.
												Maecenas faucibus mollis interdum. Curabitur blandit tempus
												porttitor.</p>
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
	<!-- /page content -->

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
	<script>
		$('.pop').on('click', function() {
			$('.imagepreview').attr('src', $(this).find('img').attr('src'));
			$('#imagemodal').modal('show');
		});
	</script>
	<!-- /datepicker -->
	<!-- /footer content -->
</body>

</html>
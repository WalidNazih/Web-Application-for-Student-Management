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
<script type="text/javascript" src="js/jssor.slider.mini.js"></script>
<!-- use jssor.slider.debug.js instead for debug -->
<script type="text/javascript" src="js/jssor.slider.min.js"></script>
<script>
	jssor_1_slider_init = function() {

		var jssor_1_options = {
			$AutoPlay : true,
			$ArrowNavigatorOptions : {
				$Class : $JssorArrowNavigator$
			},
			$ThumbnailNavigatorOptions : {
				$Class : $JssorThumbnailNavigator$,
				$Cols : 9,
				$SpacingX : 3,
				$SpacingY : 3,
				$Align : 260
			}
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		//responsive code begin
		//you can remove responsive code if you don't want the slider scales while window resizing
		function ScaleSlider() {
			var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (refSize) {
				refSize = Math.min(refSize, 700);
				jssor_1_slider.$ScaleWidth(refSize);
			} else {
				window.setTimeout(ScaleSlider, 30);
			}
		}
		ScaleSlider();
		$Jssor$.$AddEvent(window, "load", ScaleSlider);
		$Jssor$.$AddEvent(window, "resize", ScaleSlider);
		$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		//responsive code end
	};
</script>
<link href='https://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>

<style>

/* jssor slider arrow navigator skin 02 css */
/*
        .jssora02l                  (normal)
        .jssora02r                  (normal)
        .jssora02l:hover            (normal mouseover)
        .jssora02r:hover            (normal mouseover)
        .jssora02l.jssora02ldn      (mousedown)
        .jssora02r.jssora02rdn      (mousedown)
        */
.jssora02l, .jssora02r {
	display: block;
	position: absolute;
	/* size of arrow element */
	width: 55px;
	height: 55px;
	cursor: pointer;
	background: url('img/a02.png') no-repeat;
	overflow: hidden;
}

.jssora02l {
	background-position: -3px -33px;
}

.jssora02r {
	background-position: -63px -33px;
}

.jssora02l:hover {
	background-position: -123px -33px;
}

.jssora02r:hover {
	background-position: -183px -33px;
}

.jssora02l.jssora02ldn {
	background-position: -3px -33px;
}

.jssora02r.jssora02rdn {
	background-position: -63px -33px;
}

/* jssor slider thumbnail navigator skin 03 css */
/*
        .jssort03 .p            (normal)
        .jssort03 .p:hover      (normal mouseover)
        .jssort03 .pav          (active)
        .jssort03 .pdn          (mousedown)
        */
.jssort03 .p {
	position: absolute;
	top: 0;
	left: 0;
	width: 62px;
	height: 32px;
}

.jssort03 .t {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: none;
}

.jssort03 .w, .jssort03 .pav:hover .w {
	position: absolute;
	width: 60px;
	height: 30px;
	border: white 1px dashed;
	box-sizing: content-box;
}

.jssort03 .pdn .w, .jssort03 .pav .w {
	border-style: solid;
}

.jssort03 .c {
	position: absolute;
	top: 0;
	left: 0;
	width: 62px;
	height: 32px;
	background-color: #000;
	filter: alpha(opacity = 45);
	opacity: .45;
	transition: opacity .6s;
	-moz-transition: opacity .6s;
	-webkit-transition: opacity .6s;
	-o-transition: opacity .6s;
}

.jssort03 .p:hover .c, .jssort03 .pav .c {
	filter: alpha(opacity = 0);
	opacity: 0;
}

.jssort03 .p:hover .c {
	transition: none;
	-moz-transition: none;
	-webkit-transition: none;
	-o-transition: none;
}

* html .jssort03 .w {
	width /**/: 62px;
	height /**/: 32px;
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
								<li class="principale"><a href="index.jsp"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a
									href="http://localhost:8080/Simour/Images"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a><i class="fa fa-book"></i>
										Research <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="form.html">Books</a></li>
										<li><a href="form_advanced.html">Articles</a></li>
										<li><a href="form_advanced.html">Book Chapters</a></li>
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
				<div class="page-title"></div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">

							<div class="x_content">

								<div class="row">
									<div class="col-md-6 col-xs-6 col-sm-6">
									<div id="jssor_1"
									style="position: relative; margin: 0 auto;margin-left:3px; top: 0px; left: 0px; width: 700px; height: 400px; overflow: hidden; visibility: hidden;">
									<!-- Loading Screen -->
									<div data-u="loading"
										style="position: absolute; top: 0px; left: 0px;">
										<div
											style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
										<div
											style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
									</div>
									<div data-u="slides"
										style="cursor: default; position: relative; top: 0px; left: 0px; width: 700px; height: 400px; overflow: hidden;">
										<div data-p="112.50" style="display: none;">
											<img data-u="image" src="images/art/1.jpg" /> <img
												data-u="thumb" src="images/art/1.jpg" />
										</div>
										<div data-p="112.50" style="display: none;">
											<img data-u="image" src="images/art/2.jpg" /> <img
												data-u="thumb" src="images/art/2.jpg" />
										</div>
										<div data-p="112.50" style="display: none;">
											<img data-u="image" src="images/art/3.jpg" /> <img
												data-u="thumb" src="images/art/3.jpg" />
										</div>
										<div data-p="112.50" style="display: none;">
											<img data-u="image" src="images/art/4.jpg" /> <img
												data-u="thumb" src="images/art/4.jpg" />
										</div>

										<a data-u="ad" href="http://www.jssor.com"
											style="display: none">jQuery Slider</a>

									</div>
									<!-- Thumbnail Navigator -->
									<div u="thumbnavigator" class="jssort03"
										style="position: absolute; left: 0px; bottom: 0px; width: 700px; height: 70px;"
										data-autocenter="1">
										<div
											style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: #000; filter: alpha(opacity = 70.0); opacity: 0.3;"></div>
										<!-- Thumbnail Item Skin Begin -->
										<div u="slides" style="cursor: default;">
											<div u="prototype" class="p">
												<div class="w">
													<div u="thumbnailtemplate" class="t"></div>
												</div>
												<div class="c"></div>
											</div>
										</div>
										<!-- Thumbnail Item Skin End -->
									</div>
									<!-- Arrow Navigator -->
									<span data-u="arrowleft" class="jssora02l"
										style="top: 0px; left: 8px; width: 55px; height: 55px;"
										data-autocenter="2"></span> <span data-u="arrowright"
										class="jssora02r"
										style="top: 0px; right: 8px; width: 55px; height: 55px;"
										data-autocenter="2"></span>
								</div>
								<script>
									jssor_1_slider_init();
								</script>
								</div><br><br>
								<div class="col-md-6 col-xs-6 col-sm-6">
									<img src="images/androidlogo.png" width="90px" height="100px" style="float:left;display:block;margin-left:150px;margin-top:20px"/>
									<h1 style="margin-top:35px;font-weight:bold;margin-left:50px;font-family: 'Indie Flower', cursive;" >Android Application <br> Coming Soon</h1><br>
									<center><img src="images/googleplay.png" width="200px" height="80px" style="display:block;margin-top:20px"/></center>
								</div>
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
													Maecenas faucibus mollis interdum. Etiam porta sem
													malesuada magna mollis euismod. Nulla vitae elit.</p>
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
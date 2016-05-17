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

<title>Gallery |</title>

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
			<div class="modal fade" id="videomodal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Video preview</h4>
						</div>
						<div class="modal-body">
							<center>
								<iframe class="videopreview" width="560" height="315" src="" frameborder="0" allowfullscreen></iframe>
							</center>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
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
								<h2>Media Gallery</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="row">
									<div id="portfolio">
										<div class="btn-group" style="float: left; margin-left: 10px">
											<button id="all" class="btn btn-default btn-sm" type="button">All</button>
											<button id="photo" class="btn btn-default btn-sm"
												type="button">Photo</button>
											<button id="video" class="btn btn-default btn-sm"
												type="button">Video</button>
											<button id="web" class="btn btn-default btn-sm" type="button">Web</button>
										</div>
										<br> <br>
										<div id="image-container">
											<c:forEach var="image" items="${imageL}">
												<div class="col-md-2" style="margin-top:10px">
													<div>
														<div class="image view view-first">

															<img style="width: 100%; height: 230px; display: block;"
																src="${image.url}" alt="image" id="clickImage" />
															<div class="mask" style="color: white;height:230px">
																<c:choose>
																	<c:when test="${image.liked}">
																<a href="#" class="like"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-heart fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${image.url}" alt="image" id="clickImage" /> </a>
																</c:when>
																<c:otherwise>
																<a href="#" class="like"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-heart-o fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${image.url}" alt="image" id="clickImage" /> </a>
																</c:otherwise>
																</c:choose>
																	
																<a	
																	href="#" class="pop"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-search fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${image.url}" alt="image" id="clickImage" /> </a> <br>
																<i id="likecount" style="font-weight: bold">${image.likes}
																	likes</i>
															</div>


														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 20px">${image.title }</p>
															</center>
														</div>
													</div>
												</div>
											</c:forEach>
											<c:forEach var="vid" items="${vidL}">
												<div class="col-md-3" style="margin-top:10px">
													<div>
														<div class="image view view-first">

															<img style="width: 100%; height: 230px; display: block;"
																src="${vid.thumbnail}" alt="video" id="clickImage" />
															<div class="mask" style="color: white;height:230px">
															<c:choose>
																	<c:when test="${vid.liked}">
																<a href="#" class="like"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-heart fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${vid.url}" alt="image" id="clickImage" /> </a>
																</c:when>
																<c:otherwise>
																<a href="#" class="like"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-heart-o fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${vid.url}" alt="image" id="clickImage" /> </a>
																</c:otherwise>
																</c:choose>
																<a
																	href="#" class="vidpop"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-search fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${vid.url}" alt="image" id="clickImage" /> </a> <br>
																<i id="likecount" style="font-weight: bold">${vid.likes}
																	likes</i>
															</div>


														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 20px">${vid.description}</p>
															</center>
														</div>
													</div>
												</div>
											</c:forEach>
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


	<script type="text/javascript">
		$(document).ready(function() {
			var toggled = true;
			var liSize = $(".principale").width();
			$("li").css("margin-left", "0");
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
		$('.like').click(function(e) {
		    e.preventDefault();
		});
		$('.pop').click(function(e) {
		    e.preventDefault();
		});
		$('.vidpop').click(function(e) {
		    e.preventDefault();
		});
	</script>
	<script src="js/modalshow.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>


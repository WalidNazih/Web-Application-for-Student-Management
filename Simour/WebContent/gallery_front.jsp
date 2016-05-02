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
<link rel="stylesheet" type="text/css"
	href="css/maps/jquery-jvectormap-2.0.3.css" />
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
	<script>
		function load(category){
			var xHttpRequest;
			xHttpRequest = new XMLHTTTPRequest();
			xHttpRequest.onreadystatechange = function(){
				if(xHttpRequest.status == 200 && xHttpRequest.readyState == 4){
					alert("ok");
					document.getElementById('#img-container').innerHTML = xHttpRequest.responseText;
				} 
			}
			xHttpRequest.open("GET","ajax_gallery.php",true);
			xHttpRequest.send();
		}
	</script>
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
							<center><img src="" class="imagepreview"
								style="width: 570px; height: 470px;"></center>
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
											<button class="btn btn-default btn-sm" type="button" onclick="load(2)">All</button>
											<button class="btn btn-default btn-sm" type="button" onclick="load(3)">Photo</button>
											<button class="btn btn-default btn-sm" type="button">Video</button>
											<button class="btn btn-default btn-sm" type="button">Web</button>
										</div>
										<br>
										<br>
										<div id="image-container">
											<c:forEach var="image" items="${imageL}">
												<div class="col-sm-3">
													<div class="thumbnail">
														<div class="image view view-first">
															<a href="#" class="pop">
															<img style="width: 100%; height: 230px; display: block;"
																src="${image.url}" alt="image"  id="clickImage"/>
															<div class="mask">
																<i style="margin-top: 90px"
																	class="fa fa-search"></i>
															</div>
															</a>
														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 20px">${image.title }</p>
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
			$("li").style("margin-left", "0");
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
</body>

</html>

</html>
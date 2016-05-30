<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Advanced Search |</title>

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

</head>


<body class="nav-md" onload="getCaptcha();">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
					<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="dashboard.jsp" class="site_title"><i
							class="fa fa-cog"></i> <span>Dashboard</span></a>
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
							<ul class="nav side-menu">
								<li class="principale"><a
									href="SimLogPan"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a
									href="GalleryBack"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a href="Research"><i class="fa fa-book"></i>
										Research</a>
								</li>
								<li class="principale"><a href="Pedagogy"><i
										class="fa fa-graduation-cap"></i> Pedagogy </a>
									
</li>
								<li class="principale"><a href="calendar.jsp"><i
										class="fa fa-calendar"></i> Calendar</a></li>
								<li class="principale"><a href="Logs"><i
										class="fa fa-file-text"></i> Logs</a></li>
								<li class="principale"><a href="rechercheAvancee.jsp"><i
										class="fa fa-search"></i> Advanced Search</a></li>		
							</ul>
						</div>
					</div>

					<!-- /menu footer buttons -->
					<!-- /menu footer buttons -->
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
					
				</div>

			</div>
			<!-- /top navigation -->
			<%int date = Integer.parseInt(new java.util.Date().toString().split(" ")[5]);
               pageContext.setAttribute("date", date);%>
          
         	 <c:set var="now" value="${date}" />

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-title"></div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Search results</h2>
								<div style="float:right"> 
									<form action="Advanced" method="POST">
										<select name="monthAv">
											<option>Jan</option>
											<option>Feb</option>
											<option>Mar</option>
											<option>Apr</option>
											<option>May</option>
											<option>Jui</option>
											<option>Jul</option>
											<option>Aug</option>
											<option>Sep</option>
											<option>Oct</option>
											<option>Nov</option>
											<option>Dec</option>
										</select>
										<select name="yearAv">
											<c:forEach var="ye" begin="2016" end="${now}">
												<option>${ye}</option>
											</c:forEach>
										</select>
										<input type="submit" class="btn btn-primary btn-xs" value="Search">
									</form>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="row">
									<div id="portfolio">
										
										<div id="image-container">
											<div class="col-sm-12">
											<hr>
												<center><h4>PictuResAv</h4></center>
											<hr>
											<c:forEach var="image" items="${imageResAv}">
												<div class="col-sm-3">
													<div class="">
														<div class="image view view-first">

															<img style="width: 100%; height: 230px; display: block;"
																src="${image.url}" alt="image" id="clickImage" />
															<div class="mask" style="color: white;height:230px">
																
															</div>


														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 15px; height:20px">${image.title }</p>
															</center>
														</div>
													</div>
												</div>
											</c:forEach>
													
											</div>
											<br>
											<br>
											<div class="col-sm-12">
											<hr>
											<center><h4>Videos</h4></center>
											<hr>
												<c:forEach var="vid" items="${videoResAv}">
												<div class="col-sm-4">
													<div class="">
														<div class="image view view-first">

															<img style="width: 100%; height: 230px; display: block;"
																src="${vid.thumbnail}" alt="video" id="clickImage" />
															<div class="mask" style="color: white;height:230px">
																
															</div>


														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 15px; height:20px">${vid.description}</p>
															</center>
														</div>
													</div>
												</div>
											</c:forEach>
											</div>
											<br>
											<br>
											<div class="col-sm-12">
											<hr>
												<center><h4>Articles</h4></center>
											<hr>
											<c:forEach var="ar" items="${artResAv}">
												<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6" style="height:154px; margin-top:10px;">
													<div style="float:left; display:block;margin-right:20px">
														<div style="width:150px;height:150px">
															<img style="width: 100%; height: 150px; display: block;"
																src="${ar.icon}" alt="image" id="clickImage" />
															
														</div>
														
													</div>
													<div style="margin-left:50px">
															<h3 style="font-family: 'Titillium Web', sans-serif;  font-weight:bold">${ar.title}</h3>
															<a href="${ar.url}" style="position: absolute;bottom:0;" class="btn btn-primary"> Download </a>
														</div>
												</div> 
											</c:forEach>
											</div>
											<br>
											<br>
											<div class="col-sm-12">
											<hr>
												<center><h4>Books</h4></center>
											<hr>
											<c:forEach var="bo" items="${bookResAv}">
												<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6" style="height:154px; margin-top:10px;">
													<div style="float:left; display:block;margin-right:20px">
														<div style="width:150px;height:150px">
															<img style="width: 100%; height: 150px; display: block;"
																src="${bo.icon}" alt="image" id="clickImage" />
															
														</div>
														
													</div>
													<div style="margin-left:50px">
															<h3 style="font-family: 'Titillium Web', sans-serif; font-weight:bold">${bo.title}</h3>
															<p >${bo.description}</p>
															<a href="${bo.url}" style="position: absolute;bottom:0;" class="btn btn-primary"> Download </a>
														</div>
												</div> 
											</c:forEach>
											</div>
											<br>
											<br>
											<div class="col-sm-12">
											<hr>
												<center><h4>Lessons</h4></center>
											<hr>
											<c:forEach var="bo" items="${lessonResAv}">
												<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6" style="height:154px; margin-top:10px;">
													<div style="float:left; display:block;margin-right:20px">
														<div style="width:150px;height:150px">
															<img style="width: 100%; height: 150px; display: block;"
																src="${bo.icon}" alt="image" id="clickImage" />
															
														</div>
														
													</div>
													<div style="margin-left:50px">
															<h3 style="font-family: 'Titillium Web', sans-serif; font-weight:bold">${bo.title}</h3>
															<a href="${bo.url}" style="position: absolute;bottom:0;" class="btn btn-primary"> Download </a>
														</div>
												</div> 
											</c:forEach>
											</div>
											<br>
											<br>
											<div class="col-sm-12">
											<hr>
												<center><h4>Chapters</h4></center>
											<hr>
											<c:forEach var="ch" items="${chapterResAv}">
												<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6" style="height:154px; margin-top:10px;">
													<div style="float:left; display:block;margin-right:20px">
														<div style="width:150px;height:150px">
															<img style="width: 100%; height: 150px; display: block;"
																src="${ch.icon}" alt="image" id="clickImage" />
														</div>
														
													</div>
													<div style="margin-left:50px">
															<h3 style="font-family: 'Titillium Web', sans-serif; font-weight:bold">${ch.title}</h3>
															<p >${ch.description}</p>
															<a href="${ch.url}" style="position: absolute;bottom:0;" class="btn btn-primary"> Download </a>
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

	<script src="js/custom.js"></script>

	
	<script type="text/javascript">
		$(document).ready(function() {
			var toggled = true;
			var liSize = $(".principale").width()-5;
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
	<script src="js/modalshow.js"></script>
</body>

</html>

</html>
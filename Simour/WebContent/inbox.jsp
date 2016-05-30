<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Inbox settings |</title>

<!-- Bootstrap core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link href="css/icheck/flat/green.css" rel="stylesheet">


<script src="js/jquery.min.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="SimLogPan" class="site_title"><i class="fa fa-cog"></i> <span>Dashboard</span></a>
					</div>
					<div class="clearfix"></div>


					<!-- menu prile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src="images/sim.png" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<br> <span>Welcome,</span>
							<h2>Simour LHoussain</h2>
						</div>
					</div>
					<!-- /menu prile quick info -->

					<br />
			<br>
			<br>
			<br>
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
								<li class="principale"><a href="Encadrement"><i
										class="fa fa-laptop"></i>Encadrement</a></li>
								<li class="principale"><a href="Logs"><i
										class="fa fa-file-text"></i> Logs</a></li>
								<li class="principale"><a href="rechercheAvancee.jsp"><i
										class="fa fa-search"></i> Advanced Search</a></li>		
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

					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img src="images/sim.png" alt="">Simour
								Houssein <span class=" fa fa-angle-down"></span>
						</a>
							<ul
								class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
								<li><a href="IndexServlet"> See Changes</a></li>
								<li><a href="LogOut"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a></li>
							</ul></li>
					</ul>		
					</nav>
				</div>

			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">

					<div class="page-title">
						<div class="title_left">
							<h3>
								Inbox
							</h3>
						</div>

						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								
							</div>
						</div>
					</div>
					<div class="clearfix"></div>

					<div class="row">

						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Inbox <small>User Mail</small>
									</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a href="#"><i class="fa fa-chevron-up"></i></a></li>
										<li><a href="#"><i class="fa fa-close"></i></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">


									<div class="row">
										<div class="col-sm-3 mail_list_column">
										<c:set var="listSize" scope="session" value="${messages.size()}"/>
										<c:forEach var="i" begin="1" end="${messages.size()}">										
													<div class="mail_list">
														<div class="left">
															<i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
														</div>
														<div class="right">
															<a style="text-decoration:none" href="Messages?id=${messages[listSize-i].id}" >
															<h3>
																<c:out value="${messages[listSize-i].from}" /> <small><c:out value="${messages[listSize-i].date}" /></small>
															</h3>
															<p><c:out value="${messages[listSize-i].subject}" /></p>
															
															
															</a>
														</div>
													</div>
											</c:forEach>
											<!-- 
											<c:forEach var="message" items="${messages}">										
													<div class="mail_list">
														<div class="left">
															<i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
														</div>
														<div class="right">
															<a style="text-decoration:none" href="Messages?id=${message.id}" >
															<h3>
																<c:out value="${message.from}" /> <small><c:out value="${message.date}" /></small>
															</h3>
															<p><c:out value="${message.subject}" /></p>
															
															
															</a>
														</div>
													</div>
											</c:forEach> -->
										</div>
										<!-- /MAIL LIST -->


										<!-- CONTENT MAIL -->
										<div class="col-sm-9 mail_view">
											<div class="inbox-body">
												<div class="mail_heading row">
													<div class="col-md-8">
														<div class="compose-btn">
															<!-- <a class="btn btn-sm btn-primary"
																href="mail_compose.html"><i class="fa fa-reply"></i>
																Reply</a> -->
															
														</div>

													</div>
													<div class="col-md-4 text-right">
														<p class="date">${selectedMessage.date}</p>
													</div>
													<div class="col-md-12">
														<h4>${selectedMessage.subject}</h4>
													</div>
												</div>
												<div class="sender-info">
													<div class="row">
														<div class="col-md-12">
															<strong>${selectedMessage.from} (${selectedMessage.email})</strong>
															to <strong>me</strong> <a class="sender-dropdown"><i
																class="fa fa-chevron-down"></i></a>
														</div>
													</div>
												</div>
												<div class="view-mail">
													${selectedMessage.message}
												</div>
											</div>

										</div>
										<!-- /CONTENT MAIL -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- footer content -->
				<!-- /footer content -->

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

	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<script src="js/icheck/icheck.min.js"></script>
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

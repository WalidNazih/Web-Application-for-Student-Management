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

<title>Encadrement Settings |</title>

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


<body class="nav-md">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="SimLogPan" class="site_title"><i class="fa fa-cog"></i>
							<span>Dashboard</span></a>
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

				<!-- top tiles -->
				<div class="row tile_count"></div>

				<br />

				<div class="row">
					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400 overflow_hidden">
							<div class="x_title">
								<h2>Add Group</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<form action="Encadrement" method="POST">
									<div id="fields">
										Name :<br> <input type="text" name="name" size="59"
											required="" id="lessonUrl" /><br> <br> 
										Project :<br> <input type="text" name="project" size="59"
											required="" id="lessonUrl" /><br> <br> Class :<br>
										<select style="width: 100%" name="classSelect">
											<c:forEach var="cl" items="${classL }">
												<option value="${cl.option} (${cl.niveau})">${cl.option}
													(${cl.niveau})</option>
											</c:forEach>
										</select> <br> <br><input type="submit" name="groupbtn" value="Add"
											class="btn btn-primary" style="margin-top: 10px"
											onclick="showModal()" />
									</div>
									<br>

								</form>
								<br>
							</div>
						</div>
					</div>
				
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="x_panel tile fixed_height_400">
								<div class="x_title">
									<h2>Groups</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<c:forEach var="cl" items="${groupList}">
										<div class="col-md-4 col-xs-12 col-sm-12"
											style="margin-left: -10px; margin-top: 20px">
											<h2>${cl.name}</h2>
											<h4>(${ cl.project})</h4>
										</div>
									</c:forEach>
									
								</div>
								
							</div>
						</div>
					</div>
					<!-- footer content -->
				<!-- /footer content -->
			</div>
			
			
</div>
		</div>
		

		<script src="js/bootstrap.min.js"></script>
		<script src="js/custom.js"></script>
		<script src="js/ajax.js"></script>
		
		<script>
			NProgress.done();
		</script>
		<script type="text/javascript">
			function readURL(input) {

				if (input.files && input.files[0]) {
					var fu1 = document.getElementById("myLesson");
					$("#lessonUrl").attr('value',
							fu1.value.split("\\")[2].split(".")[0]);
				}
			}

			$("#myLesson").change(function() {
				readURL(this);
			});
		</script>
		<script type="text/javascript">
		$(document).ready(function() {
			var toggled = true;
			var liSize = $(".principale").width() - 5;

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
</body>

</html>
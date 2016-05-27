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

<title>Pedagogy Settings |</title>

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
						<a href="index.html" class="site_title"><i class="fa fa-cog"></i>
							<span>Dashboard</span></a>
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
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a href="http://localhost:8070/Simour/SimLogPan"><i class="fa fa-home"></i>
										Home</a></li>
								<li><a href="gallery.jsp"><i class="fa fa-camera-retro"></i>
										Gallery</a></li>
								<li><a href="research.jsp"><i class="fa fa-book"></i>
										Research </a></li>

								<li><a href="pedagogy.jsp"><i
										class="fa fa-graduation-cap"></i> Pedagogy</a></li>
								<li><a href="calendar.jsp"><i class="fa fa-calendar"></i>
										Calendar</a></li>
							</ul>
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

					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img src="images/img.jpg" alt="">Simour
								Houssein <span class=" fa fa-angle-down"></span>
						</a>
							<ul
								class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
								<li><a href="IndexServlet"> See Changes</a></li>
								<li><a href="http://localhost:8070/Simour/LogOut"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a></li>
							</ul></li>
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
								<h2>Import Lesson</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<form id="uploadPic" action="Upload" method="POST"
									enctype="multipart/form-data">
									<center>
										<label id="filelbl" for="mylesson"> <img
											src="img/lessonicon.png" width="60px" height="60px" id="blah" /><br>
											<input type="file" name="mylesson" id="myLesson" size="60"
											style="opacity: 0"> Upload
										</label>
									</center>
									<div id="fields">
										Title :<br> <input type="text" name="title" size="59"
											required="" id="lessonUrl" /><br> <br> Class :<br>
										<select style="width: 100%" name="classSelect">
											<c:forEach var="cl" items="${classL }">
												<option value="${cl.option} (${cl.niveau})">${cl.option}
													(${cl.niveau})</option>
											</c:forEach>
										</select> <br> <input type="submit" name="lessonbtn" value="Add"
											class="btn btn-primary" style="margin-top: 10px"
											onclick="showModal()" />
									</div>
									<br>

								</form>
								<br>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400 overflow_hidden">
							<div class="x_title">
								<h2>Manage Classes</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form id="uploadPic" action="ManageClasses" method="POST"
									>
									<center>
										<label id="filelbl" for="mylesson"> <img
											src="img/smart-classroom.png" width="60px" height="60px" id="blah" /><br>
										</label><br><br><br>
									</center>
									<div id="fields">
										Level :<br> <select style="width: 100%"
											name="levelSelect">
											<c:forEach var="cl" items="${nivL }">
												<option value="${cl.name} ">${cl.name}</option>
											</c:forEach>
										</select> <br>
										<br> Option :<br> <select style="width: 100%"
											name="optionSelect">
											<c:forEach var="cl" items="${opL }">
												<option value="${cl.name} ">${cl.name}</option>
											</c:forEach>
										</select><br>
										<input type="submit" name="remove" value="Remove"
											class="btn btn-primary" style="margin-top: 10px"
											onclick="showModal()" /> <input type="submit" name="add"
											value="Add" class="btn btn-primary" style="margin-top: 10px"
											onclick="showModal()" /><br>
										
										<br>
									</div>


								</form>
								<br>
							</div>
						</div>
					</div>


					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400 overflow_hidden">
							<div class="x_title">
								<h2>Manage Absence</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form id="uploadPic" action="Upload" method="POST"
									enctype="multipart/form-data">
									<center>
										<label id="filelbl" for="mylesson"> <img
											src="img/employee.png" width="60px" height="60px" id="blah" /><br>
										</label><br><br><br>
									</center>
									<div id="fields">
										Class name :<br> <select style="width: 100%"
											name="removeBranch">
											<c:forEach var="cl" items="${classL }">
												<option value="${cl.option} (${cl.niveau})">${cl.option}
													(${cl.niveau})</option>
											</c:forEach>
										</select><br>
										<br> Student's name :<br> <select
											style="width: 100%" name="removeBranch">
											<option value="volvo">Volvo</option>
											<option value="saab">Saab</option>
											<option value="mercedes">Mercedes</option>
											<option value="audi">Audi</option>
										</select> <br> <input type="submit" name="addPic" value="Remove"
											class="btn btn-primary" style="margin-top: 10px"
											onclick="showModal()" /><br>
									</div>
									<br>
									<br>

								</form>
							</div>
						</div>
					</div>
					
					
				</div>
				<div class="row">
						<div class="col-md-4 col-sm-12 col-xs-12">
							<div class="x_panel tile fixed_height_400">
								<div class="x_title">
									<h2>Delete From Pedagogy</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div>
										<center>
											<img src="img/trash_empty.ico" width="60px" height="60px" />
											<br>
											<br>
											<h4>Select type and item to delete</h4>
										</center>
										<form action="DeleteServlet" method="POST">

											Type : <br> <select name="type" id="typeSelect"
												style="width: 100%">
												<c:forEach var="cl" items="${classL }">
												<option value="${cl.option} (${cl.niveau}) ">${cl.option} (${cl.niveau}) </option>
											</c:forEach>
											</select> <br> <br> Item : <br>
											<div id="itemsDiv">
												<select name="item" id="item" style="width: 100%">
													<c:forEach var="les" items="${lessonL}">
														<option value="${les.title }">${les.title }</option>
													</c:forEach>
												</select>
											</div>
											<br> <input type="submit" value="Delete"
												class="btn btn-primary" name="deleteGallery"
												style="margin-top: 24px" />
										</form>

									</div>

								</div>
							</div>
						</div>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="x_panel tile fixed_height_400">
								<div class="x_title">
									<h2>Your Current Classes</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<c:forEach var="cl" items="${classL}">
										<div class="col-md-4 col-xs-12 col-sm-12"
											style="margin-left: -10px; margin-top: 20px">
											<h2>${cl.option}</h2>
											<h4>(${ cl.niveau})</h4>
										</div>
									</c:forEach>
									
								</div>
								
							</div>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400">
							<div class="x_title">
								<h2>Most Downloaded Lessons</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<c:forEach var="ar" items="${topLesson}">
												<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6" style="height:154px">
													<div style="float:left; display:block;margin-right:20px">
														<div style="width:140px;height:100px">
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
					<!-- footer content -->
				<!-- /footer content -->
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
</body>

</html>
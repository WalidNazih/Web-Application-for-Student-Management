
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gallery Settings |</title>

<!-- Bootstrap core CSS -->
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link href="css/icheck/flat/green.css" rel="stylesheet" />
<link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

<!-- Include jQuery form & jQuery script file. -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />

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
        <script src="js/ajax.js"></script>
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
							aria-expanded="false"> <img src="images/img.jpg" alt="">Simour
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
			<div class="right_col" role="main" ">

				<!-- top tiles -->
				<div class="row tile_count"></div>
				<div class="row">
					<div class="col-md-4 col-sm-12 col-xs-12 image-import">
						<div class="x_panel tile fixed_height_400">
							<div class="x_title">
								<h2>Import Picture</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<form id="uploadPic" action="Upload" method="POST"
									enctype="multipart/form-data" >
									<center>
										<label id="filelbl" for="myfile"> <img
											src="img/imgupload.png" width="60px" height="60px" id="blah" /><br>
											<input type="file" name="myfile" id="myfile" size="60"
											style="opacity: 0"> Upload
										</label>
									</center>
									<div id="fields">
										Title :<br> <input type="text" name="title" id="title"
											width="100%" required="" /><br> Description:<br>
										<textarea style="width: 446px" name="desc" form="uploadPic"
											required=""> </textarea>
										<br> <input type="submit" name="addPic" value="Add"
											class="btn btn-primary" style="margin-top: 14px"
											onclick="showModal()" />
									</div>
									<br>
								</form>

							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400">
							<div class="x_title">
								<h2>Delete From Gallery</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div>
									<center>
										<img src="img/trash_empty.ico" width="60px" height="60px" />
										<br><br><h4>Select type and item to delete</h4>
									</center>
									<form action="DeleteServlet" method="POST">
									
										Type : <br> <select name="type" id="typeSelect" style="width:100%">
											<option value="Picture">Picture</option>
											<option value="Video">Video</option>
										</select> <br>
										<br> Item : <br> <div id="itemsDiv"><select name="item" id="item" style="width:100%">
											<c:forEach var="image" items="${topImages}">
												<option value="${image.title }">${image.title }</option>
											</c:forEach>	
										</select></div>
										<br> <input type="submit" value="Delete" class="btn btn-primary" name="deleteGallery" style="margin-top:30px"/>
									</form>

								</div>

							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400">
							<div class="x_content">

								<div class="" role="tabpanel" data-example-id="togglable-tabs">
									<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
										<li role="presentation" class="active"><a
											href="#tab_content1" id="home-tab" role="tab"
											data-toggle="tab" aria-expanded="true">Upload Video </a></li>
										<li role="presentation" class=""><a href="#tab_content2"
											role="tab" id="profile-tab" data-toggle="tab"
											aria-expanded="false">Embed URL</a></li>
									</ul>
									<div id="myTabContent" class="tab-content">
										<div role="tabpanel" class="tab-pane fade active in"
											id="tab_content1" aria-labelledby="home-tab">
											<form id="uploadVid" action="Upload" method="POST"
												enctype="multipart/form-data">
												<center>
													<label id="filelbl" for="myvideo"> <img
														src="img/vidupload.png" width="60px" height="60px"
														id="blah" /><br> <input type="file" name="myvideo"
														id="myVideo" size="60" style="opacity: 0"> Upload
													</label>

												</center>
												<div id="fields">
													Title :<br> <input type="text" name="title" size="59"
														required="" id="videoUrl" /><br> Description:<br>
													<textarea style="width: 446px" name="desc" form="uploadVid"
														required=""> </textarea>
													<br> <input type="submit" name="addVid" value="Add"
														class="btn btn-primary" style="margin-top: 20px" />
												</div>

											</form>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tab_content2"
											aria-labelledby="profile-tab">
											<form id="uploadVid" action="WebVideo" method="POST">
												<center>
													<label id="filelbl" for="urlweb"> <img
														src="images/urllogo2.png" width="87px" height="87px"
														id="blah" /><br>
													</label>

												</center>

												<div id="fields" style="margin-top: 13px">
													URL : <br> <input type="text" name="urlweb" id="url"
														size="59"><br> Description : <br> <input
														type="text" name="desc" id="url" size="59"><br>
													<!-- 
													<div style="margin-top:6px">Description:<br><textarea style="width: 446px" name="desc" form="uploadPic"
														required="" > </textarea></div> -->
													<br> <input type="submit" name="addWeb" value="Add"
														class="btn btn-primary" onclick="showModal()" style="margin-top: 37px" />
												</div>

											</form>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400">
							<div class="x_title">
								<h2>Most Liked Pictures</h2>
								<div class="clearfix"></div>
							</div>
							<div>
								<c:forEach var="image" items="${topImages}">
									<div style="margin-left: -10px; margin-top: 20px"
										class="col-md-6 col-xs-12 col-sm-3 col-lg-2">
										<div style="height: 180px; width: 180px" class="thumbnail">
											<div class="image view view-first">
												<a href="#" class="pop"> <img
													style="width: 100%; height: 180px; display: block;"
													src="${image.url}" alt="image" id="clickImage" />
													<div class="mask">
														<div style="margin-top: 80px">
															<i id="likecount"
																style="font-weight: bold; color: white;">${image.likes}
																likes</i>
														</div>
													</div>
												</a>

											</div>

										</div>
									</div>
								</c:forEach>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel tile fixed_height_400">
							<div class="x_title">
								<h2>Most Liked Videos</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<c:forEach var="vid" items="${topVideos}">
									<div class="col-md-6 col-xs-12 col-sm-3 col-lg-2"
										style="margin-left: -10px; margin-top: 20px">
										<div class="thumbnail" style="height: 180px; width: 180px">
											<div class="image view view-first">

												<img style="width: 100%; height: 180px; display: block;"
													src="${vid.thumbnail}" alt="video" id="clickImage" />
												<div class="mask" style="color: white">
													<div style="margin-top: 80px">
															<i id="likecount" style="font-weight: bold">${vid.likes}
														likes</i>
														</div>
													
												</div>


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
	<script type="text/javascript">
			function readImage(input) {

				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						
						$('#blah').attr('src', e.target.result);
						$('#blah').width("150px");
						$('#blah').height("150px");
						$('#blah').addClass("img-thumbnail");
						var fu1 = document.getElementById("myfile");
						$("#title").attr('value',
								fu1.value.split("\\")[2].split(".")[0]);
					}
					
					reader.readAsDataURL(input.files[0]);
					
					
					
				}
			}

			$("#myfile").change(function() {
				readImage(this);
			});
		</script>
		<script type="text/javascript">
			function readURL(input) {

				if (input.files && input.files[0]) {
					var fu1 = document.getElementById("myVideo");
					$("#videoUrl").attr('value',
							fu1.value.split("\\")[2].split(".")[0]);
				}
			}

			$("#myVideo").change(function() {"C:/Documents and Settings/saadia/My Documents/Downloads/javacv-1.2.jar"
				readURL(this);
			});
		</script>
		
		<script type="text/javascript">
			$(document).ready(function(){
				$("#title").width($(".image-import").width()-400+"vw");
			});
		</script>
		
		
		
		
</body>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Admin Login |</title>

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

<body style="background: #F7F7F7;">

	<div class="">
		<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
			id="tologin"></a>

		<div id="wrapper">
			<div id="login" class="animate form">
				<section class="login_content">

				<form action="Login" method="POST">
					<h1>Admin Login</h1>
					<div>
						<%
							if (request.getAttribute("error") != null) {
								if ((boolean) request.getAttribute("error") == true) {
						%>
						<span style="color: red"><c:out
								value="Invalid username or password please try again"></c:out></span> <br>
						<br>
						<%
							}
							}
						%>

					</div>
					<div>
						<input type="text" class="form-control" name="user"
							placeholder="Username" required="" />
					</div>
					<div>
						<input type="password" class="form-control" name="pass"
							placeholder="Password" required="" />
					</div>
					<div>
						<input type="submit" value="Log in"> <a class="reset_pass"
							href="#">Lost your password?</a>
					</div>

					<div class="clearfix"></div>
					<div class="separator">
						<div class="clearfix"></div>
						<br />
						<div>
							<img src="images/logo.png" alt=""> <br>
							<br>
							<p>©2016 All Rights Reserved. Simour.</p>

						</div>
					</div>
				</form>
				<!-- form --> </section>
				<!-- content -->
			</div>
		</div>
	</div>

</body>

</html>

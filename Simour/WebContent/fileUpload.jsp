<!DOCTYPE html>
<html>
<head>
<title>Ajax File Upload with Progress Bar</title>
<!-- Include jQuery form & jQuery script file. -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js" ></script>
<script src="http://malsup.github.com/jquery.form.js" ></script>
<script src="js/fileUploadScript.js" ></script>
<!-- Include css styles here -->
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h3>Ajax File Upload with Progress Bar</h3>
	
	<form id="uploadPic" action="Upload" method="POST"
									enctype="multipart/form-data">
									<center>
										<label id="filelbl" for="file"> <img
											src="images/uploadlogo.png" width="40px" height="40px"
											id="blah" /><br> <input type="file" name="myfile"
											id="myfile" size="60" style="opacity: 0"> Upload
										</label>
										<div id="progressbox">
											<div id="progressbar"></div>
											<div id="percent">0%</div>
											<br />
											<div id="message"></div>
										</div>
									</center>
									<div id="fields">
										Title :<br> <input type="text" name="title" size="59"
											required="" /><br> Description:<br>
										<textarea style="width: 377px" name="desc" form="uploadPic"
											required=""> </textarea>
										<br> <input type="submit" value="Add"
											class="btn btn-primary" style="margin-top: 10px" onclick="shozModal()"/>
									</div>	<br>
									
								</form>
</body>
</html>

<?php
	$cat = $.REQUEST['cat'];
	$db = new PDO("mysql:host=localhost;dbname=simour","root","");
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
	$result = mysql_query('SELECT * FROM IMAGES WHERE CATEGORY='. $cat) or die(mysql_error());
	$num_rows = mysql_num_rows($result);
	while($row = mysql_fetch_assoc($result)) {
	   echo '<div class="col-sm-3">';
	   echo '<div class="thumbnail">';
	   echo '<div class="image view view-first">';
	   echo	'<a href="#" class="pop">';											
	   echo	'<img style="width: 100%; height: 230px; display: block;" src=". $result['url'] ." alt="image"  id="clickImage"/>';											
	   echo '<div class="mask">';														
	   echo '<i style="margin-top: 90px" class="fa fa-search"></i>';															
	   echo '</div>';
	   echo '</a>';
	   echo '</div>';
	   echo	'<div class="caption">';												
	   echo '<center>';													
	   echo '<p style="font-weight: bold; font-size: 20px">'.$result['title'].'</p>';													
	   echo '</center>';
	   echo '</div>';
	   echo '</div>';
	   echo '</div>';														
	}

?>
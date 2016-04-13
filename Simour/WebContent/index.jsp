<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Simour's website</title>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="css/ie7.css" media="all">
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="css/ie8.css" media="all">
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="css/ie9.css" media="all">
<![endif]-->
<script src="js/jquery-1.6.4.min.js"></script>
<script src="js/ddsmoothmenu.js"></script>
<script src="js/jquery.jcarousel.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/carousel.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/jquery.masonry.min.js"></script>
<script src="js/jquery.slickforms.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="sidebar">
    <div id="logo"><a href="index.html"><img src="images/logo.png" alt=""></a></div>
    <div id="menu" class="menu-v">
      <ul>
        <li><a href="index.html" class="active"> <i class="fa fa-home"></i> Home</a>
        </li>
        <li><a href="portfolio.html" ><i class="fa fa-camera-retro"></i> Gallery</a>
        </li>
        <li><a href="research.html"><i class="fa fa-book"></i> Research</a>
          <ul>
            <li><a href="books.html">Books</a></li>
            <li><a href="blog.html">Articles</a></li>
            <li><a href="blog.html">Book Chapters</a></li>
          </ul>
        </li>
        <li><a href="research.html"><i class="fa fa-graduation-cap"></i> Pedagogy</a>
          <ul>
            <li><a href="blog.html">Formation Initiale</a></li>
            <li><a href="blog.html">Formation Continue</a></li>
            <li><a href="blog.html">Encadrement</a></li>
          </ul>
        </li>
        <!--
        <li><a href="buttons-boxes-images.html">Features</a>
          <ul>
            <li><a href="buttons-boxes-images.html">Buttons Boxes Images</a></li>
            <li><a href="tabs-toggle-table.html">Tabs Toggle Tables</a></li>
            <li><a href="testimonials.html">Testimonials</a></li>
            <li><a href="typography.html">Typography</a></li>
            <li><a href="service-icons.html">Service Icons</a></li>
          </ul>
        </li>
        -->
        <li><a href="contact.html"><i class="fa fa-edit"></i> About</a></li>
        <li><a href="contact.html"><i class="fa fa-envelope-o"></i> Contact Us</a></li>
      </ul>
    </div>
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Copyright &copy; Simour.com</p>
      <p><a href="http://www.facebook.com/double.down12"> Safaa Askour & Walid Nazih</a></p>
    </div>
  </div>
  <div id="content">
    <h1 class="title">Welcome</h1>
    <div class="line"></div>
    <div class="intro">Nullam id dolor id nibh ultricies vehicula ut id elit. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</div>
    <div id="slider">
      <div class="flexslider">
        <ul class="slides">
          <li><img src="images/art/slide1.jpg" alt=""></li>
          <li><img src="images/art/slide2.jpg" alt=""></li>
          <li><img src="images/art/slide3.jpg" alt=""></li>
          <li><img src="images/art/slide4.jpg" alt=""></li>
        </ul>
      </div>
    </div>
    <h3>Ipsum Tortor Vestibulum Sollicitudin</h3>
    <p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
    <div class="one-half">
      <h3><img src="images/icon-web.png" alt="">Web Design</h3>
      <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
    </div>
    <div class="one-half last">
      <h3><img src="images/icon-illus.png" alt="">Illustration</h3>
      <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
    </div>
    <div class="clear"></div>
    <div class="one-half">
      <h3><img src="images/icon-motion.png" alt="">Motion Graphic</h3>
      <p>Vestibulum id ligula porta felis euismod semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</p>
    </div>
    <div class="one-half last">
      <h3><img src="images/icon-pack.png" alt="">Package Design</h3>
      <p>Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, posuere velit aliquet. Donec id elit non mi porta gravida. </p>
    </div>
    <div class="clear"></div>
    <div class="line"></div>
    <h2>Latest Works</h2>
    <div class="carousel">
      <div id="carousel-scroll"><a href="#" id="prev"></a><a href="#" id="next"></a></div>
      <ul>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p1.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p2.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p3.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p4.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p5.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p6.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p7.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p8.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p9.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p10.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p11.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="images/art/p12.jpg" alt=""></a></li>
      </ul>
    </div>
    <div class="line"></div>
    <h3>Malesuada Condimentum Inceptos Vehicula</h3>
    <p>Sed posuere consectetur est at lobortis. Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
    <ul>
      <li>Sed posuere consectetur est at lobortis, Nullam id dolor id nibh ultricies vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
      <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </li>
      <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
    </ul>
    <div id="footer">
      <div class="footer-box one-third">
        <h3>Popular Posts</h3>
        <ul class="popular-posts">
          <li> <a href="#"><img src="images/art/s1.jpg" alt=""></a>
            <h5><a href="#">Dolor Commodo Consectetur</a></h5>
            <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
          <li> <a href="#"><img src="images/art/s2.jpg" alt=""></a>
            <h5><a href="#">Dolor Commodo Consectetur</a></h5>
            <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
          <li> <a href="#"><img src="images/art/s3.jpg" alt=""></a>
            <h5><a href="#">Dolor Commodo Consectetur</a></h5>
            <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
        </ul>
      </div>
      <div class="footer-box one-third">
        <h3>About</h3>
        <p>Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Lorem Ipsum Dolor Sit Moon Avenue No:11/21 Planet City, Earth<br>
          <br>
          <span class="lite1">Fax:</span> +555 797 534 01<br>
          <span class="lite1">Tel:</span> +555 636 646 62<br>
          <span class="lite1">E-mail:</span> name@domain.com</p>
      </div>
      <div class="footer-box one-third last">
        <h3>Custom Text</h3>
        <p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Etiam porta sem malesuada magna mollis euismod. Nulla vitae elit. </p>
        <p>Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.</p>
      </div>
    </div>
  </div>
</div>
<div class="clear"></div>
<script src="js/scripts.js"></script>
<!--[if !IE]> -->
<script src="js/jquery.corner.js"></script>
<!-- <![endif]-->
</body>
</html>

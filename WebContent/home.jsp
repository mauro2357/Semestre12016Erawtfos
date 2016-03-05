<%-- 
    Document   : index
    Created on : 10-nov-2015, 16:40:25
    Author     : Administrator
--%>



<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<!--[if (gt IE 9)|!(IE)]><!-->
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
	
	</head>
<body class="index">
<!--==============================header=================================-->
<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="home.jsp">HOTEL</a><span>RESORT</span></h1>
					<nav>
						<ul class="sf-menu">
                                                        <li><a href="home.jsp">Home</a></li>
							<li class="current"><a href="home.jsp">Servicios</a>
								<ul>
									<li><a>Restaurante</a>
                                                                            <ul>
											<li><a ></a></li>
											<li><a ></a></li>
											<li><a ></a></li>
                                                                            </ul>
                                                                        </li>
									<li><a>Bar</a>
										<ul>
											<li><a >Bebidas</a></li>
											<li><a ></a></li>
											<li><a ></a></li>
										</ul>
									</li>
									<li><a>Recreacion</a>
                                                                                <ul>
											<li><a >Deportes</a></li>
											<li><a >Sitios Turisticos</a></li>
										</ul>
                                                                        </li>   
                                                                        <li><a>Otros Servicios</a>
                                                                                <ul>
											<li><a ></a></li>									
										</ul>
                                                                        </li>    
								</ul>
							</li>
	
							<li><a href="registro.jsp">Reserva</a></li>
                                                        
                                                      
                                       
                                                                <li><a href="login.html">Login</a></li>
                               
                                                        <li></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<!--=======content================================-->

<section id="content">
	<div class="full-width-container block-1">
		<div class="camera_container">
			<div id="camera_wrap">
			
				<div class="item" data-src="images/paisaje4.jpg">
					<div class="camera_caption fadeIn">
						<h3>Descanso y Diversion sin limites</h3>
						<p>Colombia</p>
						
					</div>
				</div>
				<div class="item" data-src="images/paisaje2.jpg">
					<div class="camera_caption fadeIn">
						<h3>Descanso y Diversion sin limites</h3>
						<p>Colombia</p>
						
					</div>
				</div>
                                <div class="item" data-src="images/paisaje5.jpg">
					<div class="camera_caption fadeIn">
						<h3>Descanso y Diversion sin limites</h3>
						<p>Colombia</p>
						
					</div>
				</div>
			</div>
		</div>
        </div>
<!--=======content================================-->	
	<div class="full-width-container block-4">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>RESTAURANTE</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">


                                        <div class="grid_4">
						<div class="">
                                                    <div class="img_container"> <img src= "images/" alt="img"></div>
                                                    <div class="owl-text"><acronym title="Nombre"> </acronym> </div>
                                                   
						</div>
					</div>
                                
				</div>
			</div>
		</div>
	</div>
	<!--=======content================================-->
         <div class="full-width-container block-4">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>BAR</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">

                                  
                                        <div class="grid_4">
						<div class="">
                                                    <div class="img_container"> <img src= "images/" alt="img"></div>
                                                    <div class="owl-text"><acronym title="Nombre"></acronym> </div>
                                                  
						</div>
					</div>
                                 
				</div>
			</div>
		</div>
	</div>
	
	<!--=======content================================-->
         <div class="full-width-container block-4">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>DIVERSION</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">

                                  
                                        <div class="grid_4">
						<div class="">
                                                    <div class="img_container"> <img src= "images/" alt="img"></div>
                                                    <div class="owl-text"><acronym title="Nombre"></acronym> </div>
                                                  
						</div>
					</div>
                                 
				</div>
			</div>
		</div>
	</div>
           <!--=======content================================-->                     
                                
          <div class="full-width-container block-4">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>INSTALACIONES</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">

                                        <div class="grid_4">
						<div class="">
                                                    <div class="img_container"> <img src= "images/" alt="img"></div>
                                                    <div class="owl-text"><acronym title="Nombre"> </acronym> </div>
                                                    
						</div>
					</div>
                                  
				</div>
			</div>
		</div>
	</div>                      
                                
</section>

<!--=======footer=================================-->
<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="grid_12 copyright">
				<h2><span>Contactenos</span></h2>
				<a href="https://www.facebook.com/" class="btn bd-ra"><span class="fa fa-facebook"></span></a>
				<a href="https://twitter.com/?lang=es" class="btn bd-ra"><span class="fa fa-tumblr"></span></a>
				<a href="https://www.google.com.co" class="btn bd-ra"><span class="fa fa-google-plus"></span></a>
				<pre>© <span id="copyright-year"></span> |  Privacy Policy</pre>
				More Advertising Agency Website Templates at <a rel="nofollow" href="http://www.templatemonster.com/category/advertising-agency-website-templates/" target="_blank">TemplateMonster.com</a>
			</div>
		</div>
	</div>
</footer>
<script>
	jQuery(function(){
		jQuery('#camera_wrap').camera({
			height: '34.58333333333333%',
			thumbnails: false,
			pagination: true,
			fx: 'simpleFade',
			loader: 'none',
			hover: false,
			navigation: false,
			playPause: false,
			minHeight: "139px"
		});
	});
</script>
<script>
	$(document).ready(function() {
		$(".owl-carousel").owlCarousel({
			navigation: true,
			pagination: false,
			items : 3,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [979,3],
			itemsTablet: [750,1],
			itemsMobile : [479,1],
			navigationText: false
		});
	});
</script>
<script>
	$(document).ready(function() { 
			if ($('html').hasClass('desktop')) {
				$.stellar({
					horizontalScrolling: false,
					verticalOffset: 20,
					resposive: true,
					hideDistantElements: true
				});
			}
		});
</script>
</body>
</html>
        
        
   
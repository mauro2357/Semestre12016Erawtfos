<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@page import="Clases.usuario"%>





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
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

<!--<![endif]-->
	<!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
	 <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
		 <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
	 </a>
	</div>
	<![endif]-->
	<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->

</head>
<body class="index">
<!--==============================header=================================-->
<%  	
		usuario r = new usuario();
		HttpSession sesion =(HttpSession) request.getSession();
		System.out.println(sesion.getId()+" "+sesion.isNew());
		//if(request.getParameter("logout") != null ){sesion.invalidate();}
        %>
<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="index.html">PARADAISE</a><span>Resort</span></h1>
					<nav>
						<ul class="sf-menu">
							<li><a href="Home.jsp">Home</a></li>
							<li class="current"><a>Servicios</a>
								<ul>
									<li><a href="Restaurante.jsp">Restaurante</a></li>
									<li><a href="Bar.jsp">Bar</a></li>
									<li><a>Recreacion</a>
										<ul>
											<li><a href="#">Deportes</a></li>
											<li><a href="#">Tours</a></li>
											<li><a href="#">Eventos</a></li>
										</ul>
									</li>
									<li><a>Otros servicios</a>
										<ul>
											<li><a href="#">Eventos</a></li>
											<li><a href="#">Lorem ipsum</a></li>
											<li><a href="#">Lorem ipsum</a></li>
										</ul>
									</li>
									
								</ul>
							</li>
							
							<li><a href="index-2.html">Reservas</a></li>
							<li><a href="index-3.html">Contactenos</a></li>
							<%
							if(sesion.getAttribute("usuario")!=null){
						        r = (usuario) session.getAttribute("usuario"); 
								if ( !r.gettipo().equals("huesped")) {%>
									<li><a href="/confortware/empleados/Principal.jsp">Empleados</a></li>	<%} %>
									<li id ="logout"><a href="Home.jsp?logout=true">LogOut</a></li>
							   
									<%}else{ %>
									<li><a href="Login.jsp">Login</a></li><%} %>
						
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
			
			<%for (int i = 1 ; i <= 9 ; i++ ){ %>
				<div class="item" data-src="images/home<%out.println(i); %>.jpg">
					<div class="camera_caption fadeIn">
						<h3>Descanso y Diversion</h3>
						<p>sin Limites</p>	
					</div>
				</div>
				<%} %>	
			</div>
		</div>
	</div>
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Bienvenido</span></h2>
					</header>
					<h4><a href="#">Nullam Concester Tur Nerto</a></h4>
					<p>Gamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed rabitur vel lorem sit amet nulla ullamcorper fermentum. <br><br>In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
			</div>
		</div>
	</div>
					<header>
						<h2><span>Restaurante</span></h2>
					</header>
				</div>
			</div>
			<div class="container">
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">
				<%for (int i = 1 ; i <=24 ; i++){  %>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/f<%out.println(i); %>.jpg" alt="img"></div>
							<div class="owl-text"></div>
						</div>
					</div>
					<%} %>
				</div>
			</div>
		</div>
		<br>
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Bar</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">
				<%for (int i = 1 ; i <=18 ; i++){  %>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/b<%out.println(i); %>.jpg" alt="img"></div>
							<div class="owl-text"></div>
						</div>
					</div>
					<%} %>	
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Entretenimiento</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">
				<%for (int i = 0 ; i <=10 ; i++){  %>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/index_img-1.jpg" alt="img"></div>
							<div class="owl-text"></div>
						</div>
					</div>
					<%} %>
				</div>
			</div>
		</div>
		<br>
	</div>
	
</section>

<!--=======footer=================================-->
<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="grid_12 copyright">
				<h2><span>Siguenos</span></h2>
				<a href="www.facebook.com" class="btn bd-ra"><span class="fa fa-facebook"></span></a>
				<a href="#" class="btn bd-ra"><span class="fa fa-tumblr"></span></a>
				<a href="#" class="btn bd-ra"><span class="fa fa-google-plus"></span></a>			
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
			minHeight: "139px",
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
					hideDistantElements: true,
				});
			}
		});
</script>

<script>
	$(document).ready(function() {
		$("#logout").click(function() {
			
		});
	});
</script>


</body>
</html>
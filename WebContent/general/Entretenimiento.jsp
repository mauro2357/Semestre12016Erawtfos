<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Entretenimiento</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/touchTouch.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/touchTouch.jquery.js"></script>
	<script src="js/script.js"></script>
	<!--[if (gt IE 9)|!(IE)]><!-->
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
<body class="index-2">
<!--==============================header=================================-->
<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="index.html">Hotel ?</a><span>Resort</span></h1>
					<nav>
						<ul class="sf-menu">
							<li><a href="Home.jsp">Home</a></li>
							<li class="current"><a href="index.html">Servicios</a>
								<ul>
									<li><a href="Restaurante.jsp">Restaurante</a></li>
									<li><a href="Bar.jsp">Bar</a></li>
									<li>Recreacion
										<ul>
											<li><a href="#">Deportes</a></li>
											<li><a href="#">Tours</a></li>
											<li><a href="#">Eventos</a></li>
										</ul>
									</li>
									<li><a href="#">Otros servicios</a>
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
							<li><a href="Login.jsp">Login</a></li>
							
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
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Bebidas y Cocteles</span></h2>
					</header>
				</div>
				<div id="touch_gallery">
					<div class="grid_4">
						<div class="img_container"><a href="images/e1.jpg"><img src="images/e1.jpg" alt="projects"></a></div>
						<article>
							<h4>Yoga</h4>
							<p>cocktail, una conocida destiler�a le exigi� una bebida con esa tonalidad, ya que estaba promocionando el Cura�ao. Aunque la combinaci�n de ingredientes ha evolucinado, el Hawaii mantiene el ron como bebida base y el cl�sico paraguas como adorno..</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e2.jpg"><img src="images/e2.jpg" alt="projects"></a></div>
						<article>
							<h4>Gym</h4>
							<p>Tequila, Triple sec o Cointreau, y zumo bien de lim�n, bien de lima. Hielo opcional, sal en los bordes del vaso tambi�n optativa.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e3.jpg"><img src="images/e3.jpg" alt="projects"></a></div>
						<article>
							<h4>Caminatas</h4>
							<p>Pensar en Daiquiri es pensar en playa, palmeras, m�sica, verano.... es pensar en Cuba. All� nace este cocktail que se pide en los bares.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e4.jpg"><img src="images/e4.jpg" alt="projects"></a></div>
						<article>
							<h4> Futbol</h4>
							<p>Samus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e5.jpg"><img src="images/e5.jpg" alt="projects"></a></div>
						<article>
							<h4>Tenis</h4>
							<p>Son varios nombres los que se disputan la creaci�n del Cosmopolitan. Algunos creen que fue una comunidad gay de Provincetown (Massachussets), en los a�os 70..</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e6.jpg"><img src="images/e6.jpg" alt="projects"></a></div>
						<article>
							<h4>Salon para ni�os</h4>
							<p>La caipirinha es uno de los cocktails m�s famosos del mundo, de origen brasile�o pero muy extendido por todas partes en los �ltimos a�os. El ingrediente principal y b�sico es la cacha�a, la bebida alcoh�lica destilada m�s popular de Brasil.</p>
						</article>
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
				<h2><span>Siguenos</span></h2>
				<a href="#" class="btn bd-ra"><span class="fa fa-facebook"></span></a>
				<a href="#" class="btn bd-ra"><span class="fa fa-tumblr"></span></a>
				<a href="#" class="btn bd-ra"><span class="fa fa-google-plus"></span></a>
			</div>
		</div>
	</div>
</footer>
<script>
	$(function(){
		$('#touch_gallery a').touchTouch();
	});
</script>
</body>
</html>
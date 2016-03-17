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
					<h1><a href="index.html">Hotel Ritz Entretenimiento</a><span>Resort</span></h1>
					<nav>
						<ul class="sf-menu">
							<li><a href="Home.jsp">Home</a></li>
							<li class="current"><a href="index.html">Caminatas</a>
								<ul>
									<li><a href="Restaurante.jsp"></a></li>
									<li><a href="Bar.jsp"></a></li>
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
						<h2><span>Entretenimiento y Diversion</span></h2>
					</header>
				</div>
				<div id="touch_gallery">
					<div class="grid_4">
						<div class="img_container"><a href="images/e1.jpg"><img src="images/e1.jpg" alt="projects"></a></div>
						<article>
							<h4>Yoga</h4>
							<p>El yoga del sánscrito yoga unión se refiere a una tradicional disciplina física y mental que se originó en la India.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e2.jpg"><img src="images/e2.jpg" alt="projects"></a></div>
						<article>
							<h4>Gym</h4>
							<p>Rutinas de ejercicios,  entrenamiento a diario, recetas saludables, consejos para perder peso para llevar a cabo una vida activa y saludable.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e3.jpg"><img src="images/e3.jpg" alt="projects"></a></div>
						<article>
							<h4>Caminatas</h4>
							<p>Diseñamos, coordinamos y operamos caminatas ecológicas de un solo día en los alrededores del Hotel Ritz de Colombia, con distintos grados de dificultad..</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e4.jpg"><img src="images/e4.jpg" alt="projects"></a></div>
						<article>
							<h4> Futbol</h4>
							<p>Juega partidos, dribla, chuta ¡y goool!, Los juegos de fútbol son nuestro deporte favorito. Disfruta jugando con tus ídolos y cracks.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e5.jpg"><img src="images/e5.jpg" alt="projects"></a></div>
						<article>
							<h4>Tenis</h4>
							<p>El tenis es un deporte que se practica en un terreno llano, rectangular, dividido por una red intermedia, al que se le llama cancha.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/e6.jpg"><img src="images/e6.jpg" alt="projects"></a></div>
						<article>
							<h4>Salon para niños</h4>
							<p>Hay diversión para todos. Mientras que los niños juegan a ser grandes, los grandes pueden relajarse mientras disfrutan de una obra de teatro, etc.</p>
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
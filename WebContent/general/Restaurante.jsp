<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Restaurante</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/touchTouch.css">
	<link rel="stylesheet" href="css/contact1-form.css">


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
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Bienvenido</span></h2>
					</header>
					<h4><a href="#">GOURMET</a></h4>
					<p>Gourmet es el lugar ideal para los amantes de la buena mesa, quienes desean vivir un momento memorable. Cuenta con una ubicaci�n privilegiada, en un entorno natural rodeado de bosques y monta�as enmarcado con la mejor vista al mar.
Gourmet con 35 a�os en el mercado cuenta con una inigualable arquitectura y ha sido un lugar de referencia tur�stica.
Cuenta con una excelente carta mediterr�nea y con una variada carta de vinos.
Tiene diferentes ambientes dentro de los cuales se destacan su Piano Bar y el sal�n principal que cuenta con la monta�a integrada a la ambientaci�n general del lugar. Gourmet se ha especializado en acoger personas que celebran los momentos m�s especiales con sus diferentes planes y paquetes para toda ocasi�n.</p>
				</div>
			</div>
		</div>
	</div>
<section id="content">
	<div class="full-width-container block-1">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Delicias Gastronomicas</span></h2>
					</header>
				</div>
				<div id="touch_gallery">
					<div class="grid_4">
						<div class="img_container"><a href="images/carpaccio-de-pulpo.jpg"><img src="images/carpaccio-de-pulpo.jpg" alt="projects"></a></div>
						<article>
							<h4>Carpaccio de Pulpo</h4>
							<p>Carpaccio de Pulpo, mix de verdes, mini alcaparras y pesto de tomates secos.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/ceviche-di-pesce.jpg"><img src="images/ceviche-di-pesce.jpg" alt="projects"></a></div>
						<article>
							<h4>Ceviche di Pesce</h4>
							<p>Ceviche de pescado fresco marinado en jugo de lim�n aromatizado con jengibre, cilantro, cebolla, piment�n y manzana verde.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/chateaubriand.jpg"><img src="images/chateaubriand.jpg" alt="projects"></a></div>
						<article>
							<h4>Chateaubriand</h4>
						<p>Corte de lomo a la parrilla ba�ado en reducci�n de vino tinto y tres pimientas.  T�rmino sugerido: medio.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/costole-di-maiale.jpg"><img src="images/costole-di-maiale.jpg" alt="projects"></a></div>
						<article>
							<h4>Costole di Maiale</h4>
							<p>Costillas de cerdo con miel de tamarindo, papa r�stica y vegetales orientales.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/costole.jpg"><img src="images/costole.jpg" alt="projects"></a></div>
						<article>
							<h4>Costole</h4>	
							<p>Costillas de cordero al romero, spaghetti, esp�rragos y tomates cherry</p>
						</article>						
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/fettuccine-frutti-di-mare.jpg"><img src="images/fettuccine-frutti-di-mare.jpg" alt="projects"></a></div>
						<article>
							<h4>Fettuccine</h4>
							<p>R�balo, anillos de calamar, camarones, mejillones, langostinos, salteados al vino con salsa napolitana.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/fettuccine-teresina.jpg"><img src="images/fettuccine-teresina.jpg" alt="projects"></a></div>
						<article>
							<h4>Fettuccine Teresina</h4>
							<p>Fetticine negros con camarones, anchos, cubos de tomate fresco, tomates secos y r�gula fresca.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/gamberi.jpg"><img src="images/gamberi.jpg" alt="projects"></a></div>
						<article>
							<h4>Gamberi</h4>
							<p>Langostinos salteados con salsa a elecci�n al curry, con mayonesa de maracuy� o al ajillo.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/insalata-campone.jpg"><img src="images/insalata-campone.jpg" alt="projects"></a></div>
						<article>
							<h4>Insalata Campone</h4>
							<p>L�minas de lomo a la parrilla con mix de lechugas, tomate cherry, aguacate, bocconcini aderezada con aceite de oliva y vinagre bals�mico.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/insalata-cesare-con-pollo.jpg"><img src="images/insalata-cesare-con-pollo.jpg" alt="projects"></a></div>
						<article>
							<h4>Insalata cesare </h4>	
							<p>Ensalada Cesar cl�sica con nuestra famosa salsa de anchoas.</p>
						</article>						
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/antipasto.jpg"><img src="images/antipasto.jpg" alt="projects"></a></div>
						<article>
							<h4>Antipasto</h4>	
							<p>Berenjenas, alcachofas, champi�ones, tomates secos, pimentones marrones, bocconcini, esp�rragos, zanahoria baby, tomate cherry, aceitunas, tomate fresco al pesto.</p>
						</article>						
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/insalata-di-tonno.jpg"><img src="images/insalata-di-tonno.jpg" alt="projects"></a></div>
						<article>
							<h4>Insalata di Tonno</h4>	
							<p>L�minas de at�n con mix de lechugas, tomate fresco, aguacate, bocconcini aderezada con aceite de oliva y vinagre bals�mico.</p>
						</article>						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>       
<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Reservas</span></h2>
					</header>
					<a href="ReservarMesa.jsp" class="btn">Reservar</a>
				</div>
			</div>
		</div>
	</div>

</br>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Clases.usuario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Restaurante</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/touchTouch.css">
<link rel="stylesheet" href="css/contact1-form.css">
<link rel="stylesheet" href="css/contact-form.css">


<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.2.1.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script src="js/script.js"></script>
<!--[if (gt IE 9)|!(IE)]><!-->
<script src="js/wow.js"></script>
<script>
	$(document).ready(function() {
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
	<%
		usuario r = new usuario();
		HttpSession sesion = request.getSession();
		System.out.println(sesion.getId() + " " + sesion.isNew());
	%>
	<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1>
						<a href="index.html">PARADAISE</a><span>Resort</span>
					</h1>
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
									</ul></li>
								<li><a>Otros servicios</a>
									<ul>
										<li><a href="#">Eventos</a></li>
										<li><a href="#">Lorem ipsum</a></li>
										<li><a href="#">Lorem ipsum</a></li>
									</ul></li>

							</ul></li>

						<li><a href="index-2.html">Reservas</a></li>
						<li><a href="index-3.html">Contactenos</a></li>
						<%
							if (sesion.getAttribute("usuario") != null) {
								r = (usuario) session.getAttribute("usuario");
								if (!r.gettipo().equals("huesped")) {
						%>
						<li><a href="/confortware/empleados/Principal.jsp">Empleados</a></li>
						<%
							}
						%>
						<li id="logout"><a href="Home.jsp">LogOut</a></li>

						<%
							} else {
						%>
						<li><a href="Login.jsp">Login</a></li>
						<%
							}
						%>

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
					<h2>
						<span>Bienvenido</span>
					</h2>
					</header>
					<h4>
						<a href="#">GOURMET</a>
					</h4>
					<p>Gourmet es el lugar ideal para los amantes de la buena mesa,
						quienes desean vivir un momento memorable. Cuenta con una
						ubicación privilegiada, en un entorno natural rodeado de bosques y
						montañas enmarcado con la mejor vista al mar. Gourmet con 35 años
						en el mercado cuenta con una inigualable arquitectura y ha sido un
						lugar de referencia turística. Cuenta con una excelente carta
						mediterránea y con una variada carta de vinos. Tiene diferentes
						ambientes dentro de los cuales se destacan su Piano Bar y el salón
						principal que cuenta con la montaña integrada a la ambientación
						general del lugar. Gourmet se ha especializado en acoger personas
						que celebran los momentos más especiales con sus diferentes planes
						y paquetes para toda ocasión.</p>
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
					<h2>
						<span>Delicias Gastronomicas</span>
					</h2>
					</header>
				</div>
				<div id="touch_gallery">
					<div class="grid_4">
						<div class="img_container">
							<a href="images/carpaccio-de-pulpo.jpg"><img
								src="images/carpaccio-de-pulpo.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Carpaccio de Pulpo</h4>
						<p>Carpaccio de Pulpo, mix de verdes, mini alcaparras y pesto
							de tomates secos.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/ceviche-di-pesce.jpg"><img
								src="images/ceviche-di-pesce.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Ceviche di Pesce</h4>
						<p>Ceviche de pescado fresco marinado en jugo de limón
							aromatizado con jengibre, cilantro, cebolla, pimentón y manzana
							verde.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/chateaubriand.jpg"><img
								src="images/chateaubriand.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Chateaubriand</h4>
						<p>Corte de lomo a la parrilla bañado en reducción de vino
							tinto y tres pimientas. Término sugerido: medio.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/costole-di-maiale.jpg"><img
								src="images/costole-di-maiale.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Costole di Maiale</h4>
						<p>Costillas de cerdo con miel de tamarindo, papa rústica y
							vegetales orientales.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/costole.jpg"><img src="images/costole.jpg"
								alt="projects"></a>
						</div>
						<article>
						<h4>Costole</h4>
						<p>Costillas de cordero al romero, spaghetti, espárragos y
							tomates cherry</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/fettuccine-frutti-di-mare.jpg"><img
								src="images/fettuccine-frutti-di-mare.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Fettuccine</h4>
						<p>Róbalo, anillos de calamar, camarones, mejillones,
							langostinos, salteados al vino con salsa napolitana.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/fettuccine-teresina.jpg"><img
								src="images/fettuccine-teresina.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Fettuccine Teresina</h4>
						<p>Fetticine negros con camarones, anchos, cubos de tomate
							fresco, tomates secos y rúgula fresca.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/gamberi.jpg"><img src="images/gamberi.jpg"
								alt="projects"></a>
						</div>
						<article>
						<h4>Gamberi</h4>
						<p>Langostinos salteados con salsa a elección al curry, con
							mayonesa de maracuyá o al ajillo.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/insalata-campone.jpg"><img
								src="images/insalata-campone.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Insalata Campone</h4>
						<p>Láminas de lomo a la parrilla con mix de lechugas, tomate
							cherry, aguacate, bocconcini aderezada con aceite de oliva y
							vinagre balsámico.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/insalata-cesare-con-pollo.jpg"><img
								src="images/insalata-cesare-con-pollo.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Insalata cesare</h4>
						<p>Ensalada Cesar clásica con nuestra famosa salsa de anchoas.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/antipasto.jpg"><img
								src="images/antipasto.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Antipasto</h4>
						<p>Berenjenas, alcachofas, champiñones, tomates secos,
							pimentones marrones, bocconcini, espárragos, zanahoria baby,
							tomate cherry, aceitunas, tomate fresco al pesto.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container">
							<a href="images/insalata-di-tonno.jpg"><img
								src="images/insalata-di-tonno.jpg" alt="projects"></a>
						</div>
						<article>
						<h4>Insalata di Tonno</h4>
						<p>Láminas de atún con mix de lechugas, tomate fresco,
							aguacate, bocconcini aderezada con aceite de oliva y vinagre
							balsámico.</p>
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
				<div class="grid_5">
					<form id="contact-form">
						<div class="contact-form-loader"></div>
						<header>
						<h2>
							<span>Contact Form</span>
						</h2>
						</header>
						<fieldset>
							<label class="name"> <span class="text">Your Name:</span>
								<input type="text" name="name" placeholder="" value=""
								data-constraints="@Required @JustLetters" /> <span
								class="empty-message">*This field is required.</span> <span
								class="error-message">*This is not a valid name.</span>
							</label> <label class="email"> <span class="text">Your
									E-mail:</span> <input type="text" name="email" placeholder="" value=""
								data-constraints="@Required @Email" /> <span
								class="empty-message">*This field is required.</span> <span
								class="error-message">*This is not a valid email.</span>
							</label> <label class="phone"> <span class="text">Subject:</span>
								<input type="text" name="phone" placeholder="" value=""
								data-constraints="@Required @JustNumbers" /> <span
								class="empty-message">*This field is required.</span> <span
								class="error-message">*This is not a valid phone.</span>
							</label> <label class="message"> <span class="text">Message:</span>
								<textarea name="message" placeholder=""
									data-constraints='@Required @Length(min=20,max=999999)'></textarea>
								<span class="empty-message">*This field is required.</span> <span
								class="error-message">*The message is too short.</span>
							</label>
							<div class="cont_btn">
								<a href="#" data-type="reset" class="btn">Clear</a> <a 
									type="submit" class="btn">Send</a>
							</div>
						</fieldset>
						<div class="modal fade response-message">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">Modal title</h4>
									</div>
									<div class="modal-body">You message has been sent! We
										will be in touch soon.</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>




	<!--=======footer=================================-->
	<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="grid_12 copyright">
				<h2>
					<span>Siguenos</span>
				</h2>
				<a href="#" class="btn bd-ra"><span class="fa fa-facebook"></span></a>
				<a href="#" class="btn bd-ra"><span class="fa fa-tumblr"></span></a>
				<a href="#" class="btn bd-ra"><span class="fa fa-google-plus"></span></a>
			</div>
		</div>
	</div>
	</footer>
	<script>
		$(function() {
			$('#touch_gallery a').touchTouch();
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
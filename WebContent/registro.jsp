<%-- 
    Document   : registro
    Created on : 14-nov-2015, 8:19:11
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Hotel</title>

    <link href="css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style_1.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/script.js"></script>

    
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
                    <form class="form-login" action="cine_controler" method="post" >
		        <h2 class="form-login-heading">Reserva</h2>
		        <div class="login-wrap">

		            <input type="text" class="form-control" placeholder="Nombre" autofocus name="name" >     
		            <br>
                            <input type="text" class="form-control" placeholder="E-Mail" autofocus name="mail" >
                            <br>
                            <input type="text" class="form-control" placeholder="Documento" autofocus name="documento" >
                            <br>
		            <input type="text" class="form-control" placeholder="Edad" name="edad"  >	 
                            <br>
                            <button class="btn btn-theme btn-block" name="form" type="submit" value="registro" >Registrarse</button>
		                                   
		            <div class="registration">
		                Ingresar<br/>
		                <a class="" href="login.html">
		                    Ingresa desde Aqui !!
		                </a>
		            </div>

		        </div>         		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <script src="login/jquery.js"></script>
    <script src="login/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="login/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("images/paisaje7.jpg", {speed: 500});
    </script>
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

  </body>
</html>

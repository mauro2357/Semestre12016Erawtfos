<%@page import="Clases.usuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexionesbd.Consultas"%>
<%@page import="java.sql.ResultSetMetaData"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>Clientes</title>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<section id="container"> <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
	<!--header start--> <%  	
      	Consultas datos = new Consultas();
      	usuario r = new usuario();
      	HttpSession sesion = (HttpSession) request.getSession();
         %> <header class="header black-bg">
	<div class="sidebar-toggle-box">
		<div class="fa fa-bars tooltips" data-placement="right"
			data-original-title="Navegacion"></div>
	</div>
	<!--logo start--> <a href="/confortware/general/Home.jsp" class="logo"><b>PARADAISE</b></a>
	<!--logo end-->
	<div class="nav notify-row" id="top_menu">
		<!--  notification start -->
		<ul class="nav top-menu">
			<!-- settings start -->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="index.html#"> <i
					class="fa fa-tasks"></i> <span class="badge bg-theme">4</span>
			</a>
				<ul class="dropdown-menu extended tasks-bar">
					<div class="notify-arrow notify-arrow-green"></div>
					<li>
						<p class="green">You have 4 pending tasks</p>
					</li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">DashGum Admin Panel</div>
								<div class="percent">40%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
					</a></li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">Database Update</div>
								<div class="percent">60%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-warning"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 60%">
									<span class="sr-only">60% Complete (warning)</span>
								</div>
							</div>
					</a></li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">Product Development</div>
								<div class="percent">80%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
									style="width: 80%">
									<span class="sr-only">80% Complete</span>
								</div>
							</div>
					</a></li>
					<li><a href="index.html#">
							<div class="task-info">
								<div class="desc">Payments Sent</div>
								<div class="percent">70%</div>
							</div>
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-danger" role="progressbar"
									aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
									style="width: 70%">
									<span class="sr-only">70% Complete (Important)</span>
								</div>
							</div>
					</a></li>
					<li class="external"><a href="#">See All Tasks</a></li>
				</ul></li>
			<!-- settings end -->
			<!-- inbox dropdown start-->
			<li id="header_inbox_bar" class="dropdown"><a
				data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
					<i class="fa fa-envelope-o"></i> <span class="badge bg-theme">5</span>
			</a>
				<ul class="dropdown-menu extended inbox">
					<div class="notify-arrow notify-arrow-green"></div>
					<li>
						<p class="green">You have 5 new messages</p>
					</li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="assets/img/ui-zac.jpg"></span> <span
							class="subject"> <span class="from">Zac Snider</span> <span
								class="time">Just now</span>
						</span> <span class="message"> Hi mate, how is everything? </span>
					</a></li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="assets/img/ui-divya.jpg"></span> <span
							class="subject"> <span class="from">Divya Manian</span> <span
								class="time">40 mins.</span>
						</span> <span class="message"> Hi, I need your help with this. </span>
					</a></li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="assets/img/ui-danro.jpg"></span> <span
							class="subject"> <span class="from">Dan Rogers</span> <span
								class="time">2 hrs.</span>
						</span> <span class="message"> Love your new Dashboard. </span>
					</a></li>
					<li><a href="index.html#"> <span class="photo"><img
								alt="avatar" src="assets/img/ui-sherman.jpg"></span> <span
							class="subject"> <span class="from">Dj Sherman</span> <span
								class="time">4 hrs.</span>
						</span> <span class="message"> Please, answer asap. </span>
					</a></li>
					<li><a href="index.html#">See all messages</a></li>
				</ul></li>
			<!-- inbox dropdown end -->
		</ul>
		<!--  notification end -->
	</div>
	<div class="top-menu">
		<ul class="nav pull-right top-menu">
			<li><a class="logout" href="login.html">Logout</a></li>
		</ul>
	</div>
	</header> <!--header end--> <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
	<!--sidebar start--> <aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">

			<%  if(sesion.getAttribute("usuario")!=null){
       					 r = (usuario) session.getAttribute("usuario");%>
			<p class="centered">
				<a><img src="assets/img/<%=r.getimagen()%>" class="img-circle"
					width="60"></a>
			</p>
			<h5 class="centered"><%= r.getnombre() %></h5>
			<%} %>



			<li class="mt"><a class="active" href="Principal.jsp"> <i
					class="fa fa-dashboard"></i> <span>Menu Principal</span>
			</a></li>


			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-cogs"></i> <span>Components</span>
			</a>
				<ul class="sub">
					<li><a href="calendar.html">Calendar</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="todo_list.html">Todo List</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-book"></i> <span>Extra Pages</span>
			</a>
				<ul class="sub">
					<li><a href="blank.html">Blank Page</a></li>
					<li><a href="login.html">Login</a></li>
					<li><a href="lock_screen.html">Lock Screen</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-tasks"></i> <span>Formulario Ingreso</span>
			</a>
				<ul class="sub">
					<li><a href="formulario_registros.jsp">Huespeds</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-th"></i> <span>Datos Clientes</span>
			</a>
				<ul class="sub">
					<li><a href="clientes.jsp">General</a></li>
				</ul></li>

		</ul>
		<!-- sidebar menu end-->
	</div>
	</aside> <!--sidebar end--> <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<!--main content start--> <section id="main-content"> <section
		class="wrapper">
	<h3>
		<i class="fa fa-angle-right"></i> USUARIOS HOTEL
	</h3>
	<div class="row">

		<div class="col-md-12">
			<div class="content-panel">
				<h4>
					<i class="fa fa-angle-right"></i> Huesped
				</h4>
				<hr>
				<table class="table">
					<thead>
						<tr>
							<%
								ResultSet resultado_consulta;
								datos.crearConexion();
								resultado_consulta = datos.huespeds();
								ResultSetMetaData rsmd = resultado_consulta.getMetaData();
								int nroColumnas = rsmd.getColumnCount();
								out.println("<th>#</th>");
								for (int i = 1; i <= nroColumnas; i++) {
									out.println("<th>" + rsmd.getColumnName(i) + "</th>");
								}
							%>
						</tr>
					</thead>


					<tbody>

						<%	int j = 1;
								while (resultado_consulta.next()) {
									out.println("<tr>"+"<td>" + j + "</td>");
									for (int i = 1; i <= nroColumnas; i++) {
										out.println("<td>" + resultado_consulta.getString(i)
												+ "</td>");
									}
									j+=1;
									out.println("</tr>");
								}
							%>
						</tr>
					</tbody>
				</table>
			</div>
			<! --/content-panel -->
		</div>
		<!-- /col-md-12 -->

		<div class="col-md-12 mt">
			<div class="content-panel">
				<table class="table table-hover">
					<h4>
						<i class="fa fa-angle-right"></i> Empleado
					</h4>
					<hr>
					<thead>
						<tr>
							<%
		                          	datos.crearConexion();
		                          	resultado_consulta = datos.empleados();
		                         	rsmd = resultado_consulta.getMetaData();
		                          	nroColumnas = rsmd.getColumnCount();
		                          	out.println("<th>#</th>");
		                          	for(int i=1;i<=nroColumnas;i++){
					                    out.println("<th>"+rsmd.getColumnName(i)+"</th>");
                					}                %>
						</tr>
					</thead>

					<tbody>

						<%	j = 1;
								while (resultado_consulta.next()) {
									out.println("<tr>"+"<td>" + j + "</td>");
									for (int i = 1; i <= nroColumnas; i++) {
										out.println("<td>" + resultado_consulta.getString(i)
												+ "</td>");
									}
									j+=1;
									out.println("</tr>");
								}
							%>

					</tbody>
				</table>
			</div>
			<! --/content-panel -->
		</div>
		<!-- /col-md-12 -->
	</div>
	<br>
	<!-- row -->

	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">
				<h4 class="mb">
					<i class="fa fa-angle-right"></i> Opciones de Busqueda
				</h4>
				<form class="form-inline" role="form" action="clientes.jsp?condicion=Nombres" method="get" name="form_consulta">
					<div class="form-group">
						<button type="button" class="btn btn-theme04 dropdown-toggle"
							data-toggle="dropdown">
							Buscar Por : <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<% for(int i=1;i<=nroColumnas;i++){%>
							<li><a href="#"><%=rsmd.getColumnName(i) %></a></li>
							<%	}  %>
						</ul>
						<label class="sr-only" for="exampleInputEmail2">Opcion
							</label> <input type="text" class="form-control"
							id="exampleInputEmail2" placeholder="Opcion" name="valor_condicion">
						<button  class="btn btn-theme02" type="submit" name="consulta" value="true"><i class="fa fa-check"></i> Consultar</button>
						
					</div>
	

				</form>
			</div>
			<!-- /form-panel -->
		</div>
		<!-- /col-lg-12 -->
	</div>

	<%
		if (request.getParameter("consulta") != null && request.getParameter("valor_condicion") !=null && request.getParameter("condicion") != null ) {
			datos.crearConexion();
			if(request.getParameter("valor_condicion").equals("") || request.getParameter("condicion").equals("") ){
				resultado_consulta = datos.BuscarTodos();
			}else{
				resultado_consulta = datos.Buscar("Nombres",request.getParameter("valor_condicion"));
			}		
			rsmd = resultado_consulta.getMetaData();
			nroColumnas = rsmd.getColumnCount();
	%>

	<div class="row mt">
		<div class="col-md-12">
			<div class="content-panel">
				<table class="table table-striped table-advance table-hover">
					<h4>
						<i class="fa fa-angle-right"></i> Resultado
					</h4>
					<hr>
					<thead>
						<tr>
						<%	out.println("<th>#</th>");
							for (int i = 1; i <= nroColumnas; i++) {
									out.println("<th>" + rsmd.getColumnName(i) + "</th>");
								}
							
						%>
						<th></th>
						</tr>
					</thead>
					<tbody>
						<%
							j = 1;
								while (resultado_consulta.next()) {
									out.println("<tr>" + "<td>" + j + "</td>");
									for (int i = 1; i <= nroColumnas; i++) {
										out.println("<td>" + resultado_consulta.getString(i)
												+ "</td>");
									}
									j += 1;
						%>
						<td>
							<button class="btn btn-success btn-xs">
								<i class="fa fa-check"></i>
							</button>
							<button class="btn btn-primary btn-xs">
								<i class="fa fa-pencil"></i>
							</button>
							<button class="btn btn-danger btn-xs">
								<i class="fa fa-trash-o "></i>
							</button>
						</td>

						<%
							out.println("</tr>");
								}
						%>

					</tbody>
				</table>
			</div>
			<!-- /content-panel -->
		</div>
		<!-- /col-md-12 -->
	</div>
	<% } %>
	
	
	
	<!-- /row --> </section> <! --/wrapper --> </section><!-- /MAIN CONTENT --> <!--main content end-->
	<!--footer start--> <footer class="site-footer">
	<div class="text-center">
		2016-confortware <a href="clientes.jsp" class="go-top"> <i
			class="fa fa-angle-up"></i>
		</a>
	</div>
	</footer> <!--footer end--> </section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>

	<!--script for this page-->

	<script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

</body>
</html>

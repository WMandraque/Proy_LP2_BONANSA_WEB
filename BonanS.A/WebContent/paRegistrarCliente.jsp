<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta name="format-detection" content="telephone=no">
<meta charset="UTF-8">

<meta name="descripcion" content="Violate Responsive Admin Template">
<meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

<title>Registrar cliente</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">
<link href="css/calendar.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/icons.css" rel="stylesheet">
<link href="css/generics.css" rel="stylesheet">
<link href="css/app.css" rel="stylesheet">
<link href="css/icons2.css" rel="stylesheet">

<script language="javascript" type="text/javascript"
	src="js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript"
	src="js/mylibs/paRegistrarCliente.js"></script>
<script language="javascript" type="text/javascript"
	src="js/mylibs/gestionaUbigeo.js"></script>


</head>
<body id="skin-blur-violate">
	<header id="header" class="media"> <a href="" id="menu-toggle"></a>
	<a class="logo pull-left" href="Indice.jsp">Bonan S.A.</a>

	<div class="media-body">
		<div class="media" id="top-menu">
			<div class="pull-left tm-icon">
				<a data-drawer="messages" class="drawer-toggle" href=""> <i
					class="sa-top-message"></i> <i class="n-count animated">5</i> <span>Mensajes</span>
				</a>
			</div>
			<div class="pull-left tm-icon">
				<a data-drawer="notifications" class="drawer-toggle" href=""> <i
					class="sa-top-updates"></i> <i class="n-count animated">9</i> <span>Actualizaciones</span>
				</a>
			</div>
			<div id="time" class="pull-right">
				<span id="hours"></span> : <span id="min"></span> : <span id="sec"></span>
			</div>

			<div class="media-body">
				<input type="text" class="main-search">
			</div>
		</div>
	</div>
	</header>


	<!--Para cambiar fondo  -->
	<section id="main" class="p-relative" role="main"> <aside
		id="sidebar">

	<div class="side-widgets overflow">
		<!-- Profile Menu -->
		<div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
			<a href="" data-toggle="dropdown"> <img
				class="profile-pic animated"
				src="gestionaVehiculo?operacion=fotoVehiculo&idVehiculo=VEH0016"
				height="100">
			</a>
			<ul class="dropdown-menu profile-menu">
				<li><a href="">Mi Perfil</a><i class="icon left">&#61903;</i><i
					class="icon right">&#61815;</i></li>
				<li><a href="">Mensajes</a><i class="icon left">&#61903;</i><i
					class="icon right">&#61815;</i></li>
				<li><a href="">Ajustes</a><i class="icon left">&#61903;</i><i
					class="icon right">&#61815;</i></li>
				<li><a href="">Desconectar</a> <i class="icon left">&#61903;</i><i
					class="icon right">&#61815;</i></li>
			</ul>

			<%--                         <h4 class="m-0" style="color: orange;">Usuario:</h4>
                        <h4 class="m-0">${sessionScope.idEmpleado}</h4>
                        <br> --%>

			<h4 class="m-0" style="color: orange;">Nombre completo:</h4>
			<h4 class="m-0">${sessionScope.nombreCompleto}</h4>
			<br>

			<h4 class="m-0" style="color: orange;">Tipo:</h4>
			<h4 class="m-0">${sessionScope.tipoEmpleado}</h4>


		</div>
		<div class="s-widget m-b-25">
			<div id="sidebar-calendar"></div>
		</div>
		<nav id="wrapper">

		<ul class="menu">

			<a href="mpAdministrador.jsp">Inicio</a>

			<li class="item2"><a href="#">Mantenimiento Clientes</a>
				<ul>
					<li class="subitem1"><a href="paRegistrarCliente.jsp">Registrar
							Cliente</a></li>
					<li class="subitem2"><a href="#">Actualizar Cliente</a></li>
					<li class="subitem3"><a href="#">Listar Cliente</a></li>
				</ul></li>


			<li class="item3"><a href="#">Mantenimiento Empleados</a>
				<ul>
					<li class="subitem1"><a href="mpAdRegistrarEmpleado.jsp">Registrar
							Empleado</a></li>
					<li class="subitem2"><a href="">Actualizar Empleado</a></li>
					<li class="subitem3"><a href="#">Listar Empleado</a></li>
				</ul></li>


			<li class="item4"><a href="#">Mantenimiento Vehiculos</a>
				<ul>
					<li class="subitem1"><a href="paRegistrarVehiculo.jsp">Registrar
							Vehiculo</a></li>
					<li class="subitem2"><a href="paActualizarVehiculo.jsp">Actualizar
							Vehiculo</a></li>
					<li class="subitem2"><a href="paEliminarVehiculo.jsp">Eliminar
							Vehiculo</a></li>
					<li class="subitem3"><a
						href="gestionaVehiculo?operacion=listar">Listar Vehiculos</a></li>
				</ul></li>


			<li class="item4"><a href="#">Registro de acciones</a>
				<ul>
					<li class="subitem1"><a href="gestionaLog?operacion=listar">Listado
							de logs</a></li>
				</ul></li>



		</ul>
		</nav>
	</div>
	</aside> <section id="content" class="container">


	<div class="block-area" id="required">

		<!--Titulo  -->
		<h3 class="block-title">Matenimiento de cliente</h3>
	</div>




	<!--Espacio para el formulario  -->
	<div class="block-area" id="required">

		<!-- FORMULARIO  -->
		<form action="gestionaCliente" method="post">
			<input type="hidden" name="operacion" value="registrar">
			<fieldset>

				<legend class="block-title" style="color: white;">Registrar
					cliente</legend>


				<div class="block-area">
					<!--Contenedor de datos generales  -->


					<h3 class="block-title">Datos generales</h3>
					<br> <br>



					<div class="row">


						<div class="col-md-3 m-b-15">
							<label style="font-size: 15px;">ID Vehiculo</label> <input
								type="text" class="input-sm form-control mask-date_time"
								style="text-align: center;" value=">>AUTOGENERADO<<" readonly="
								readonly="readonly">
						</div>

						<div class="col-md-3 m-b-15">
							<label style="font-size: 15px;">Tipo de Cliente</label>
							<libreria:CboTipoCliente idTipoCliente="" />

						</div>

					</div>

					<!--  -->

					<br>
					<hr class="whiter m-t-20" />
					<br> <br>

					<div id="contenedor">


						<div class="row" id="tituloCN">
							<h3 class="block-title">Datos del cliente natural</h3>
						</div>

						<div class="row" id="tituloCJ">
							<h3 class="block-title">Datos del cliente Juridico</h3>
						</div>

						<br> <br>

						<!--  -->

						<div class="row">
							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Nombre</label> <input
									type="text" id="txtNombre" name="txtNombre"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;" placeholder="ingresar nombre"
									required="requerid" maxlength="20">
							</div>


							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">A paterno</label> <input
									type="text" id="txtApePa" name="txtApePa"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;"
									placeholder="ingresar apellido paterno" required="requerid"
									maxlength="20">
							</div>


							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">A materno</label> <input
									type="text" id="txtApeMa" name="txtApeMa"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;"
									placeholder="ingresar apellido materno" required="requerid">
							</div>

							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Fecha de nacimiento</label> <input
									type="text" id="txtFechaNac" name="txtFechaNac"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;"
									placeholder="ingresar fecha de nacimiento" required="requerid">
							</div>


							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Sexo</label> <select
									class="select" name="cboSexo" id="cboSexo">
									<option value="M">MASCULINO</option>
									<option value="F">FEMENINO</option>
								</select>
							</div>

							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Telefono</label> <input
									type="text" id="txtFono" name="txtFono"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;" placeholder="ingresar Num. fono"
									required="requerid">
							</div>


							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Celular</label> <input
									type="text" id="txtCelular" name="txtCelular"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;" placeholder="ingresar Num. celular"
									required="requerid">
							</div>


							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Correo</label> <input
									type="text" id="txtCorreo" name="txtCorreo"
									class="input-sm form-control mask-phone"
									style="font-size: 16px;" placeholder="ingresar correo"
									required="requerid">
							</div>


							<div id="divNatural">

								<div class="col-md-3 m-b-15">
									<label style="font-size: 12px;">Num DNI</label> <input
										type="text" id="txtNumDNI" name="txtNumDNI"
										class="input-sm form-control mask-phone"
										style="font-size: 16px;" placeholder="ingresar correo">
								</div>

							</div>

							<div id="divJuridico">

								<div class="col-md-3 m-b-15">
									<label style="font-size: 12px;">Num RUC</label> <input
										type="text" id="txtNumRUC" name="txtNumRUC"
										class="input-sm form-control mask-phone"
										style="font-size: 16px;" placeholder="ingresar correo">
								</div>

								<div class="col-md-3 m-b-15">
									<label style="font-size: 12px;">Razon social</label> <input
										type="text" id="txtRazonSocial" name="txtRazonSocial"
										class="input-sm form-control mask-phone"
										style="font-size: 16px;" placeholder="ingresar correo">
								</div>

								<div class="col-md-3 m-b-15">
									<label style="font-size: 12px;">CIUU</label> <input type="text"
										id="txtCIUU" name="txtCIUU"
										class="input-sm form-control mask-phone"
										style="font-size: 16px;" placeholder="ingresar correo">
								</div>

								<div class="col-md-3 m-b-15">
									<label style="font-size: 12px;">Cargo</label> <input
										type="text" id="txtCargo" name="txtCargo"
										class="input-sm form-control mask-phone"
										style="font-size: 16px;" placeholder="ingresar correo">
								</div>

							</div>

						</div>



						<br>
						<hr class="whiter m-t-20" />
						<h3 class="block-title">Direccion de cliente</h3>
						<br> <br>
						<div class="row">

							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Tipo de establecimiento</label>
								<libreria:CboTipoEstablecimiento idTipoEstablec="" />

							</div>

							<div class="col-md-3 m-b-15">

								<label style="font-size: 12px;">Departamento</label>
								<libreria:CboDepartamento codubigeo="" />

							</div>

							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Provincia</label> <select
									id="cboPronvincia" name="cboPronvincia"
									class="input-sm form-control mask-phone">
									<option value="">SELECCIONE</option>
								</select>
							</div>


							<div class="col-md-3 m-b-15">
								<label style="font-size: 12px;">Distrito</label> <select
									id="cboDistrito" name="cboDistrito"
									class="input-sm form-control mask-phone">
									<option value="">SELECCIONE</option>
								</select>
							</div>


							<div class="col-md-3 m-b-15">

								<label style="font-size: 12px;">Direccion</label> <input
									type="text" id="txtDireccion" name="txtDireccion"
									class="input-sm form-control mask-date_time">

							</div>

						</div>

						<div class="row">


							<input class="btn btn-sm" type="button" value="Agregar"
								onclick="fn_agregar()"> <input class="btn btn-sm"
								type="button" value="Limpiar Tabla" onclick="fnc_limpiarTabla()">



							<input class="btn btn-sm" type="button" value="Limpiar Campos"
								onclick="fnc_limpiarCampos()">


						</div>

						<br>
						<div class="row">
							<table id="tabla" class="table table-bordered table-hover tile">
								<thead>
									<tr>
										<td>TIPO DE ESTABLECIMIENTO</td>
										<td>ID TIPO DE ESTABLECIMIENTO</td>
										<td>UBIGEO</td>
										<td>DIRECCION</td>

									</tr>

								</thead>
							</table>
						</div>


						<div class="block-area">
							<div class="alert alert-success">
								<center>${requestScope.mensaje}</center>
							</div>
						</div>

						<hr class="whiter m-t-20" />
						<!--Botones  -->
						<div class="block-area">
							<input class="btn btn-sm" type="submit" value="REGISTRAR">
							<input class="btn btn-sm" type="reset" value="LIMPIAR">
						</div>

					</div>

				</div>
			</fieldset>
		</form>
		<!--FIN DEL FORMULARIO  -->
	</div>
	<!-- Fin del contenedor del form --> <!--Chat  -->
	<div class="chat">

		<!-- Chat List -->
		<div class="pull-left chat-list">
			<div class="listview narrow">
				<div class="media">
					<img class="pull-left" src="img/profile-pics/1.jpg" width="30"
						alt="">
					<div class="media-body p-t-5">Alex Bendit</div>
				</div>
				<div class="media">
					<img class="pull-left" src="img/profile-pics/2.jpg" width="30"
						alt="">
					<div class="media-body">
						<span class="t-overflow p-t-5">David Volla Watkinson</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="img/profile-pics/3.jpg" width="30"
						alt="">
					<div class="media-body">
						<span class="t-overflow p-t-5">Mitchell Christein</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="img/profile-pics/4.jpg" width="30"
						alt="">
					<div class="media-body">
						<span class="t-overflow p-t-5">Wayne Parnell</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="img/profile-pics/5.jpg" width="30"
						alt="">
					<div class="media-body">
						<span class="t-overflow p-t-5">Melina April</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="img/profile-pics/6.jpg" width="30"
						alt="">
					<div class="media-body">
						<span class="t-overflow p-t-5">Ford Harnson</span>
					</div>
				</div>

			</div>
		</div>

		<!-- Chat Area -->
		<div class="media-body">
			<div class="chat-header">
				<a class="btn btn-sm" href=""> <i
					class="fa fa-circle-o status m-r-5"></i> Chat with Friends
				</a>
			</div>

			<div class="chat-body">
				<div class="media">
					<img class="pull-right" src="img/profile-pics/1.jpg" width="30"
						alt="" />
					<div class="media-body pull-right">
						Hiiii<br /> How you doing bro? <small>Me - 10 Mins ago</small>
					</div>
				</div>

				<div class="media pull-left">
					<img class="pull-left" src="img/profile-pics/2.jpg" width="30"
						alt="" />
					<div class="media-body">
						I'm doing well buddy. <br />How do you do? <small>David -
							9 Mins ago</small>
					</div>
				</div>

				<div class="media pull-right">
					<img class="pull-right" src="img/profile-pics/2.jpg" width="30"
						alt="" />
					<div class="media-body">
						I'm Fine bro <br />Thank you for asking <small>Me - 8 Mins
							ago</small>
					</div>
				</div>

				<div class="media pull-right">
					<img class="pull-right" src="img/profile-pics/2.jpg" width="30"
						alt="" />
					<div class="media-body">
						Any idea for a hangout? <small>Me - 8 Mins ago</small>
					</div>
				</div>

			</div>

			<div class="chat-footer media">
				<i class="chat-list-toggle pull-left fa fa-bars"></i> <i
					class="pull-right fa fa-picture-o"></i>
				<div class="media-body">
					<textarea class="form-control" placeholder="Type something..."></textarea>
				</div>
			</div>
		</div>
	</div>
	</section> </section>

	<script src="js/jquery.min.js"></script>
	<!-- jQuery Library -->




	<script src="js/validation/validationEngine.min.js"></script>
	<!-- jQuery Form Validation Library - requirred with above js -->
	<script src="js/select.min.js"></script>
	<!-- Custom Select -->
	<script src="js/chosen.min.js"></script>
	<!-- Custom Multi Select -->
	<script src="js/datetimepicker.min.js"></script>
	<!-- Date & Time Picker -->
	<script src="js/colorpicker.min.js"></script>
	<!-- Color Picker -->
	<script src="js/icheck.js"></script>
	<!-- Custom Checkbox + Radio -->
	<script src="js/autosize.min.js"></script>
	<!-- Textare autosize -->
	<script src="js/toggler.min.js"></script>
	<!-- Toggler -->
	<script src="js/input-mask.min.js"></script>
	<!-- Input Mask -->
	<script src="js/spinner.min.js"></script>
	<!-- Spinner -->
	<script src="js/slider.min.js"></script>
	<!-- Input Slider -->
	<script src="js/fileupload.min.js"></script>
	<!-- File Upload -->


	<script src="js/jquery-ui.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Charts -->
	<script src="js/charts/jquery.flot.js"></script>
	<!-- Flot Main -->
	<script src="js/charts/jquery.flot.time.js"></script>
	<!-- Flot sub -->
	<script src="js/charts/jquery.flot.animator.min.js"></script>
	<!-- Flot sub -->
	<script src="js/charts/jquery.flot.resize.min.js"></script>
	<!-- Flot sub - for repaint when resizing the screen -->

	<script src="js/sparkline.min.js"></script>
	<!-- Sparkline - Tiny charts -->
	<script src="js/easypiechart.js"></script>
	<!-- EasyPieChart - Animated Pie Charts -->
	<script src="js/charts.js"></script>
	<!-- All the above chart related functions -->

	<!-- Map -->
	<script src="js/maps/jvectormap.min.js"></script>
	<!-- jVectorMap main library -->
	<script src="js/maps/usa.js"></script>
	<!-- USA Map for jVectorMap -->

	<!--  Form Related -->
	<script src="js/icheck.js"></script>
	<!-- Custom Checkbox + Radio -->

	<!-- UX -->
	<script src="js/scroll.min.js"></script>
	<!-- Custom Scrollbar -->

	<!-- Other -->
	<script src="js/calendar.min.js"></script>
	<!-- Calendar -->
	<script src="js/feeds.min.js"></script>
	<!-- News Feeds -->


	<!-- All JS functions -->
	<script src="js/functions.js"></script>
	<script src="js/depmain.js"></script>


</body>
</html>
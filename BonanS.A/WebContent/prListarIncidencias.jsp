<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%@ taglib uri="http://displaytag.sf.net" prefix="display" %> <!-- Definimos la etiqueta  -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta name="format-detection" content="telephone=no">
        <meta charset="UTF-8">

        <meta name="descripcion" content="Violate Responsive Admin Template">
        <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

        <title>Listar Incidencias</title>
            
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
        <link href="css/menu.css" rel ="stylesheet">
        
    </head>
<body id="skin-blur-sunset">
        <header id="header" class="media">
            <a href="" id="menu-toggle"></a> 
            <a class="logo pull-left" href="Indice.jsp">Bonan S.A.</a>
            
            <div class="media-body">
                <div class="media" id="top-menu">
                    
                    <div id="time" class="pull-right">
                        <span id="hours"></span>
                        :
                        <span id="min"></span>
                        :
                        <span id="sec"></span>
                    </div>
                    
                    
                </div>
            </div>
        </header>
        
        
         <!--Para cambiar fondo  -->
         <section id="main" class="p-relative" role="main">
         
         
         
        	<aside id="sidebar">
        	
                <div class="side-widgets overflow">
                    <!-- Profile Menu -->
                    <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                        <a href="" data-toggle="dropdown">
                            <img class="profile-pic animated" src="gestionaEmpleado?operacion=mostrarFoto&idEmpleado=${sessionScope.idEmpleado}">
                                                </a>
                        <ul class="dropdown-menu profile-menu">
                            <li><a href="">Mi Perfil</a><i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Mensajes</a><i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Ajustes</a><i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="gestionaUsuario?operacion=salir">Desconectar</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                        </ul>
                        

                        <h5 class="m-0" style="color: orange;">Nombre completo:</h5>
                        <h5 class="m-0">${sessionScope.nombreCompleto}</h5>
 
                        <br>
                        
                        <h5 class="m-0" style="color: orange;">Tipo:</h5>
                        <h5 class="m-0">${sessionScope.tipoEmpleado}</h5>
             
                         
                    </div>
                    <div class="s-widget m-b-25">
                        <div id="sidebar-calendar"></div>
                    </div>
                    <nav id="wrapper">
                    
                    
            <h4 class="tile-title">Menu de Opciones</h4><br><br>
		<ul class="menu" id="menu">
		
		
			<a href="mpRecepcionista.jsp"><img width="25" src="img/icon/home.png"> Inicio</a></li><br><br>
			
			<li class="item2 nivel1 s-widget m-b-25"><a href="#"><img width="30" src="img/icon/recojo.png"> Gestion de Recojo</a>
			<ul class="main-menu mainmenu-menu">

					<li class="subitem2 primera"><a href="prRegistrarSolicitudRecojo.jsp">Registrar Solicitud de recojo</a></li>
					<li class="subitem2 primera"><a href="gestionaOrdenRecojo?operacion=listar&nivel=recep">Listar Ordenes de recojo</a></li>
<!-- 				<li class="subitem3"><a href="gestionaOrdenRecojo?operacion=listarClientes">Listar Clientes</a></li>
					<li class="subitem3"><a href="gestionaOrdenRecojo?operacion=listarEmpleados">Listar Empleados</a></li>
					<li class="subitem3"><a href="gestionaOrdenRecojo?operacion=listarVehiculos">Listar Vehiculos</a></li> -->
				</ul></li>
			
			<li class="item2 nivel1 s-widget m-b-25"><a href="#"><img width="30" src="img/icon/transporte.png"> Gestion de Transporte</a>
				<ul class="main-menu mainmenu-menu">

				    <li class="subitem2 primera"><a href="gestionaGRT?operacion=listar&nivel=RECEPCIONISTA">Listar GRT</a></li>
					
				</ul>
			</li>



			<li class="item2 nivel1 s-widget m-b-25"><a href="#"><img width="30" src="img/icon/ruta.png"> Control de Ruta</a>
							<ul class="main-menu mainmenu-menu">

					<li class="subitem2 primera"><a href="prActualizarIncidencias.jsp">Actualizar Incidencias</a></li>
					<li class="subitem2 primera"><a href="gestionaIncidencia?operacion=listar&nivel=RECEPCIONISTA">Listar Incidencias</a></li>
				</ul>
			</li>
		</ul>
                	</nav>
                    </div>
        	</aside>
        	
        <section id="content" class="container">
                
                
                <div class="block-area" id="required">

                <!--Titulo  -->
                 <h3 class="block-title">Gestion de Transporte</h3>
                </div>
                
                
                <div class="block-area" id="required">

                <!--Titulo  -->
                 
                </div>

                
                
      <!--Espacio para el formulario  -->
     <div class="block-area" id="required">
                    
       <!-- FORMULARIO  -->             
       <form action="gestionaVehiculo" method="post">
       
       
     
                   
         <fieldset>
                   
         <legend class="block-title" style="color: white;">Listado de GRT</legend>
                   
                   
                
<div class="col-md-12">
												
												<table class="table table-bordered table-hover tile" id="sample_1" style="table-layout:auto;font-size:12px;">
													<thead style="background-color:#C9FCC6;">
														 <tr>
														    <th>ID</th>
															<th>ID EMPLEADO</th>
															<th>DIRECCION</th>
															<th>DESCRIPCION</th>
															<th>FECHA</th>
															<th>HORA</th>
															<th>ESTADO</th>	
															<th>OPERACION</th>								
														</tr> 
													</thead>
													
													
												
													<c:forEach var="lista" items="${sessionScope.s_listadoIncidencias}">
                  
														                  <tr>
														                  <td>${lista.idIncidencia}</td>
														                  <td>${lista.idEmpleado}</td>
														                  <td>${lista.direccion}</td>
														                  <td>${lista.descripcion}</td>
														                  <td>${lista.fecha}</td>
														                  <td>${lista.hora}</td>
														                  <td>${lista.descEstadoIncidencia}</td>
														
															<td class="center">
																<div class="visible-md visible-lg hidden-sm hidden-xs">
																	<div class="btn-group">
																		<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" onclick="location='prActualizarIncidencias.jsp?idIncidencia=${lista.idIncidencia}&idEmpleado=${lista.idEmpleado}&direccion=${lista.direccion}&descripcion=${lista.descripcion}&fecha=${lista.fecha}&hora=${lista.hora}&idEstadoIncidencia=${lista.idEstadoIncidencia}'">
																			<i ></i> <span >Seleccione</span>
																		</a>
															
																	</div>
																</div>
															</td>
														</tr>
														
													</c:forEach>
													
												
												</table>
			</div>
          
                   
                   
                  
                   
        </fieldset>     
         </form><!--FIN DEL FORMULARIO  -->
                    
    </div><!-- Fin del contenedor del form -->
                
                
                
                
    
                            

                         
                         
                  
             
         <!--Chat  -->       
                <div class="chat">
                    
                    <!-- Chat List -->
                    <div class="pull-left chat-list">
                        <div class="listview narrow">
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/1.jpg" width="30" alt="">
                                <div class="media-body p-t-5">
                                    Alex Bendit
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/2.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">David Volla Watkinson</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/3.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Mitchell Christein</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/4.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Wayne Parnell</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/5.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Melina April</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/6.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Ford Harnson</span>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <!-- Chat Area -->
                    <div class="media-body">
                        <div class="chat-header">
                            <a class="btn btn-sm" href="">
                                <i class="fa fa-circle-o status m-r-5"></i> Chat with Friends
                            </a>
                        </div>
                    
                        <div class="chat-body">
                            <div class="media">
                                <img class="pull-right" src="img/profile-pics/1.jpg" width="30" alt="" />
                                <div class="media-body pull-right">
                                    Hiiii<br/>
                                    How you doing bro?
                                    <small>Me - 10 Mins ago</small>
                                </div>
                            </div>
                            
                            <div class="media pull-left">
                                <img class="pull-left" src="img/profile-pics/2.jpg" width="30" alt="" />
                                <div class="media-body">
                                    I'm doing well buddy. <br/>How do you do?
                                    <small>David - 9 Mins ago</small>
                                </div>
                            </div>
                            
                            <div class="media pull-right">
                                <img class="pull-right" src="img/profile-pics/2.jpg" width="30" alt="" />
                                <div class="media-body">
                                    I'm Fine bro <br/>Thank you for asking
                                    <small>Me - 8 Mins ago</small>
                                </div>
                            </div>
                            
                            <div class="media pull-right">
                                <img class="pull-right" src="img/profile-pics/2.jpg" width="30" alt="" />
                                <div class="media-body">
                                    Any idea for a hangout?
                                    <small>Me - 8 Mins ago</small>
                                </div>
                            </div>
                        
                        </div>
                    
                        <div class="chat-footer media">
                            <i class="chat-list-toggle pull-left fa fa-bars"></i>
                            <i class="pull-right fa fa-picture-o"></i> 
                            <div class="media-body">
                                <textarea class="form-control" placeholder="Type something..."></textarea>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        </section>
        
<script src="js/jquery.min.js"></script> <!-- jQuery Library -->




        <script src="js/validation/validationEngine.min.js"></script> <!-- jQuery Form Validation Library - requirred with above js -->
        <script src="js/select.min.js"></script> <!-- Custom Select -->
        <script src="js/chosen.min.js"></script> <!-- Custom Multi Select -->
        <script src="js/datetimepicker.min.js"></script> <!-- Date & Time Picker -->
        <script src="js/colorpicker.min.js"></script> <!-- Color Picker -->
        <script src="js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
        <script src="js/autosize.min.js"></script> <!-- Textare autosize -->
        <script src="js/toggler.min.js"></script> <!-- Toggler -->
        <script src="js/input-mask.min.js"></script> <!-- Input Mask -->
        <script src="js/spinner.min.js"></script> <!-- Spinner -->
        <script src="js/slider.min.js"></script> <!-- Input Slider -->
        <script src="js/fileupload.min.js"></script> <!-- File Upload -->


        <script src="js/jquery-ui.min.js"></script> <!-- jQuery UI -->
        <script src="js/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Charts -->
        <script src="js/charts/jquery.flot.js"></script> <!-- Flot Main -->
        <script src="js/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
        <script src="js/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
        <script src="js/charts/jquery.flot.resize.min.js"></script> <!-- Flot sub - for repaint when resizing the screen -->

        <script src="js/sparkline.min.js"></script> <!-- Sparkline - Tiny charts -->
        <script src="js/easypiechart.js"></script> <!-- EasyPieChart - Animated Pie Charts -->
        <script src="js/charts.js"></script> <!-- All the above chart related functions -->

        <!-- Map -->
        <script src="js/maps/jvectormap.min.js"></script> <!-- jVectorMap main library -->
        <script src="js/maps/usa.js"></script> <!-- USA Map for jVectorMap -->

        <!--  Form Related -->
        <script src="js/icheck.js"></script> <!-- Custom Checkbox + Radio -->

        <!-- UX -->
        <script src="js/scroll.min.js"></script> <!-- Custom Scrollbar -->

        <!-- Other -->
        <script src="js/calendar.min.js"></script> <!-- Calendar -->
        <script src="js/feeds.min.js"></script> <!-- News Feeds -->
        

        <!-- All JS functions -->
        <script src="js/functions.js"></script>
        <script src="js/depmain.js"></script>
        
		
</body>
</html>
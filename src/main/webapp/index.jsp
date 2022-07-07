<%-- 
    Document   : index
    Created on : 6/07/2022, 11:20:23 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
	<meta charset="UTF-8">
	<title>Tienda </title>
	<link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info" >
	<header class="header">
		<div class="container">
		<div class="btn-menu">
			<label for="btn-menu">☰</label>
		</div>
			<div class="logo">
				<h1>Logotipo</h1>
			</div>
			<nav class="menu">
				<a href="Administracion.jsp">Inicio</a>
				<a href="#">Nosotros</a>
				<a href="#">Blog</a>
				<a href="Ventanas/Login.jsp" >Iniciar seccion</a>
			</nav>
                        <div class="m-4" style="height: 550px;" >
                            <iframe name="ventaFormularios" style="height: 100%; width: 100%; border: none" src="Producto.jsp"  >
                   
                            </iframe>
               
                        </div>
		</div>
	</header>
	<div class="capa"></div>
        <!--	--------------->
        <input type="checkbox" id="btn-menu">
        <div class="container-menu">
                <div class="cont-menu">
                        <nav>
                                <a href="#.jsp">Inicio</a>
                                <a style="border: none" class="btn btn-outline-secondary" href="Error.jsp" target="ventaFormularios">Productos</a>
                                <a href="Producto.jsp" target="ventaFormularios" >Ofertas</a>
                                <a href="Producto.jsp">Ubicacion</a>
                                <a href="#">Mayoreo</a>
                                <a href="#">Empresa</a>
                                <a href="#">Soporte</a>
                                <a href="#">politicas</a>
                                <a href="#">Sugerencias</a>
                                <a href="#">Empleos</a>
                        </nav>
                        <label for="btn-menu">✖️</label>
                </div>
        </div>
    </nav>
        
</body>
</html>

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
       
            <header>
                <div class="logo">
                    <a href="#">
                      <figure>
                        <img src="Imagenes/Logo.png" 
                        alt="logo de la empresa">
                      </figure>
                    </a>
                </div>
                
                <nav>
                    <a href="#" class="nav-link"> Inicio</a>
                    <a href="#" class="nav-link">ubicacion</a>
                    <a href="#" class="nav-link">face
                      <img src="./imagenes/logoEmpresa.png" alt="" height="50px">
                    </a>
                    <a href="#" class="nav-link">
                      <img src="Imagenes/empleados.png" alt="" height="50px">
                    </a>
                </nav>
            </header>
         <nav class="navbar navbar-expand-lg navbar-light bg-info" >
            <main>
                <div class="clearfix"></div>
                    <div class="m-4" style="height: 550px;">
                            <iframe name="ventaFormularios" style="height: 100%; width: 100%; border: none" src="Inicio.jsp"  >
                           
                            </iframe>
                        
		</div>
            </main>
              
              
            
                      
            
	<div class="capa"></div>
        <input type="checkbox" id="btn-menu">
        <div class="container-menu">
                <div class="cont-menu">
                        <nav>
                                <a href="index.jsp">Inicio</a>
                                <a for="btn-menu" style="border: none" class="btn btn-outline-secondary" href="Producto.jsp" target="ventaFormularios">Registro</a>
                                <a href="ProductosTienda.jsp" target="ventaFormularios">Productos</a>
                                <a href="#">Ubicacion</a>
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

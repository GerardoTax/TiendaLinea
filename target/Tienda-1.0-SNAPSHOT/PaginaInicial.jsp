<%-- 
    Document   : PaginaInicial
    Created on : 22/07/2022, 03:30:16 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/paginacss.css">
    </head>
    <body>
            <header>
                <div class="logo">
                  <a href="Inicio.jsp" target="ventaFormularios">
                    <figure>
                      <img src="Imagenes/Logo.png" 
                      alt="logo de la empresa">
                    </figure>
                  </a>
                </div>
                <nav>
                  <a href="#" class="nav-link">
                    <img src="Imagenes/carrito.png" alt="" height="35px">
                  </a>
                  <a href="IniciarSesion.jsp" target="ventaFormularios" class="nav-link">
                    <img src="Imagenes/user.png" alt="" height=40px">
                    <br>
                    <label for="">Iniciar Sesion</label>
                  </a>
                </nav>
            </header>
            <ul class="menu">
			<li><a href="Inicio.jsp" target="ventaFormularios">Inicio</a></li>
			<li><a href="ProductosTienda.jsp" target="ventaFormularios">Productos</a></li>
			<li><a href="RegistroUsuario.jsp"  target="ventaFormularios">Servicios</a></li>
			<li><a href="#">Acerca De</a></li>
			<li><a href="Contacto.jsp" target="ventaFormularios">Contacto</a></li>
            </ul>
            <div class="clearfix"></div>  
            <main>
               <div class="m-4" style="height: 550px;">
                    <iframe name="ventaFormularios" style="height: 100%; width: 100%; border: none" src="Inicio.jsp"  ></iframe>     
		</div>
            </main>
            <div class="clearfix"></div>
            <footer>
                Luis Gerardo.M Tax Mantanico
            </footer>
    </body>
</html>

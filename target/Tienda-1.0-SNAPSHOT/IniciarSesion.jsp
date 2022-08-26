<%-- 
    Document   : IniciarSesion
    Created on : 6/08/2022, 12:58:33 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estiloSesion.css">
        <title>iniciar sesion</title>
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
            </header>
        <div class="container">
            <form action="ContIniciarSesion" method="post">
                <div id="caja">
                    <div id="caja-logo">
                            <img src="Imagenes/Logo.png"
                             alt="logo de la empresa">
                    </div>
                    <div id="caja-formulario">
                        <label for="">iniciar sesion:</label>
                        <input type="email" name="email" id="text-email">
                    </div>
                    <div id="caja-formulario">
                        <label for="">ingresar contraseña:</label>
                        <input type="password" name="password" id="text-email">
                        <input class="botons" type="submit"  name="opcion" value="Iniciar">
                        <input class="boton" type="submit"  name="opcion" value="Registrar">
                    </div>
                </div>
            </form>
        </div>
        <script src="http://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
        <%
            String a=request.getParameter("men");     
            try{
            if(a.equals("validar")){
        %>
        <script src="js/sweetAlert.js"></script>
        <%
            }
            else{
        %>
        <script src="js/sweetAlert_1.js"></script>
        <%   
            }       
            }catch(Exception e) {}
            %>
    </body>
    
</html>

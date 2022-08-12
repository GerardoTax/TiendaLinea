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
        <div class="container">
            <form action="" method="">
                <div id="caja">
                    <div id="caja-logo">
                            <img src="Imagenes/Logo.png"
                             alt="logo de la empresa">
                    </div>
                    <div id="caja-formulario">
                        <label for="">iniciar sesion:</label>
                        <input type="email" name="" id="text-email">
                    </div>
                    <div id="caja-formulario">
                        <label for="">ingresar contraseña:</label>
                        <input type="password" name="" id="text-email">
                        <input class="botons" type="submit"  name="opcion" value="Iniciar">
                        <input class="boton" type="submit"  name="opcion" value="Registrar">
                    </div>


                </div>
            </form>

        </div>
    </body>
</html>

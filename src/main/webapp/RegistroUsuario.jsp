<%-- 
    Document   : RegistroUsuario
    Created on : 17/08/2022, 09:58:16 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estiloRegistroUsuario.css">
    <title>Registro de Usuario</title>
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
                    <label for="">Nombre:</label>
                    <input type="text">
                    <label for="" id="labelApellido">Apellido:</label>
                    <input type="text">
                </div>    
                <div id="caja-formulario">
                    <label for="">Telefono:</label>
                    <input type="number" name="" id="inputNumber">
                    <label for="" id="labelApellido">Correo Electronico:</label>
                    <input type="email" name="" >
                </div>
                <div id="caja-formulario">
                    <label for="">contraseña:</label>
                    <input type="password" name="" >
                    <label for="" id="labelcofirmacion">Confirma la contraseña:</label>
                    <input type="password" name="" >
                </div>    
                <div id="caja-formulario">
                    <input class="botons" type="submit"  name="opcion" value="Iniciar">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
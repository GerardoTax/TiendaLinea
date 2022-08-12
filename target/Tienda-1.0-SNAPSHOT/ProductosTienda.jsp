<%-- 
    Document   : ProductosTienda
    Created on : 8/07/2022, 10:22:59 PM
    Author     : dell
--%>

<%@page import="java.util.List"%>
<%@page import="Manejadores.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Producto producto=new Producto();
    ProductoDAO p=new ProductoDAO();
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estiloProductoTienda.css">
    <title>tiendaProducto</title>
</head>
<body>
    <header></header>
    <main>
        <div id="caja">
            <div class="row">
                <%
                List<Producto> mama = p.listar(); 
                for (Producto pr:mama){  
                %>   
                <div class="product">
                    <div class="card">
                        <div id="caja-imagen">
                            <a href="#">
                                <img src="ContImg?id=<%= pr.getId()%>" alt="">
                            </a>
                            <h3><%= pr.getNombre() %></h3>
                            <h1><%= "Q"+pr.getPrecio()%></h1>
                            <div id="botones">
                                <button name="button" id="detalles">Detalles</button>
                                <button name="button" id="agregar">Agregar</button>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <% 
                }
                %>
            </div>
        </div>          
    </main>

</body>
</html>
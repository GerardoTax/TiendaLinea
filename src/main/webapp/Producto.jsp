<%-- 
    Document   : Producto
    Created on : 6/07/2022, 11:23:45 PM
    Author     : dell
--%>




<%@page import="Manejadores.ProductoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Producto"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Producto producto=new Producto();
    ProductoDAO p=new ProductoDAO();
%>
<html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <link rel="stylesheet" href="css/estiloProducto.css">
      
      <title>Formulario Registro</title>
    </head>
    <body>
        <div id="contenedor">
            <div    id="tablaValores">
                <table>
                     <thead>
                       <tr>
                         <th>ID</th>
                         <th>Cantidad</th>
                         <th>Nombre</th>
                         <th>Precio</th>
                         <th>Categoria</th>
                         <th>Foto chida</th>
                       </tr>
                     </thead>
                     <tbody>
                         <tr>
                        <% 
                            List<Producto> mama = p.listar();
                            for (Producto pr:mama){
                        %>
                        <td> <%= pr.getId() %></td>
                        <td> <%= pr.getCantidadProducto() %></td>
                        <td> <%= pr.getNombre() %></td> 
                        <td> <%= pr.getPrecio() %></td>
                        <td> <%= pr.getCategoria() %></td>
                        <td> <%= pr.getFoto() %></td> 
                         </tr>
                         <% 
                             }
                              
                         %>
                                     
                     </tbody>
                 </table>    "  
            </div>
            <div id="formulario">
                <form class="form-register" action="ContProducto"  method="POST" enctype="multipart/form-data" > 
                  <h4>Formulario Registro de Producto</h4>
                  <input class="controls" type="text" name="cantidad" id="cantidadUnidad" placeholder="Ingrese la cantidad">
                  <input class="controls" type="text" name="nombre" id="nombres" placeholder="Ingrese el Nombre">
                  <input class="controls" type="text" name="precio" id="precio" placeholder="Ingrese el precio">
                  <input class="controls" type="text" name="categoria" id="categoria" placeholder="Ingrese la categoria">
                  <input type="file" name="foto">
                  <input class="botonsR" type="submit"  name="opcion" value="Registrar">
                  
                </form>
            </div>
         </div>
    </body>
</html>

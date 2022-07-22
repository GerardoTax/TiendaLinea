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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProductoTienda</title>
    </head>
    <jsp:include page="/Recursos/PaquetesLinck.jsp" />
    <body>
        
                <table border="0" width="1000" align="center">
            <%
                List<Producto> mama = p.listar(); 
                int saltoLinea=0;
                for (Producto pr:mama){  
            %>    
             
            <th>
                <br>
                <img src="ContImg?id=<%= pr.getId()%>" width="200" height="200">
                 
                <br>
                <%= pr.getNombre() %>
                <br>
                <%= "Q"+pr.getPrecio() %>
                <br>
                <a href="" class="btn btn-secondary">Añadir</a>
               
            </th>
          <%
              saltoLinea++;
              if(saltoLinea==3){
           %>
           <br>
           <tr>
              <%
               saltoLinea=0;
              }
              }
            
              %>
        </table>
    </body>
</html>

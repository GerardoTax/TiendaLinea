/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manejadores;

import Conexion.Conexion;
import Modelo.Producto;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
public class ProductoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
   public Producto Consultaproducto(int idProducto){
       Producto producto= new Producto();
       String sql="select* from producto where id="+idProducto;
       try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
         while(rs.next()){
               producto.setId(rs.getInt(1));
               producto.setCantidadProducto(rs.getInt(2));
               producto.setNombre(rs.getString(3));
               producto.setPrecio(rs.getFloat(4));
               producto.setCategoria(rs.getString(5));
               producto.setFoto(rs.getBinaryStream(6));
         }
       }catch (Exception ex) {
           
       }
    return producto;
   } 
   public List listar(){
       List<Producto>lista= new ArrayList<>();
       String sql="select* from producto";
       try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               Producto producto= new Producto();
               producto.setId(rs.getInt(1));
               producto.setCantidadProducto(rs.getInt(2));
               producto.setNombre(rs.getString(3));
               producto.setPrecio(rs.getFloat(4));
               producto.setCategoria(rs.getString(5));
               producto.setFoto(rs.getBinaryStream(6));
               lista.add(producto);  
           }
       }catch (Exception ex) {
           System.out.println("Error");
       }
        return lista;
   }
   
   public void listarImg( int id, HttpServletResponse response){
       String sql ="select* from producto where id="+id;
       InputStream inputStream= null;
       OutputStream  outputStream ;
       BufferedInputStream  bufferedInputStream = null;
       BufferedOutputStream bufferedOutputStream= null;
       response.setContentType("foto/*");
       try{
           outputStream=response.getOutputStream();
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           if(rs.next()){
              inputStream=rs.getBinaryStream(6);
              
           }
           bufferedInputStream= new BufferedInputStream(inputStream);
           bufferedOutputStream= new BufferedOutputStream(outputStream);
           int i=0;
           while((i=bufferedInputStream.read())!=-1){
               bufferedOutputStream.write(i);
           }
       }catch (Exception ex) {
           
       }
   }
   
   public void agregar(Producto producto){
       String sql=" insert into producto(cantidad_producto,nombre,precio_unidad,categoria,foto)values(?,?,?,?,?)";
       try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.setInt(1, producto.getCantidadProducto());
           ps.setString(2, producto.getNombre());
           ps.setFloat(3, producto.getPrecio());
           ps.setString(4, producto.getCategoria());
           ps.setBinaryStream(5, producto.getFoto());
           ps.executeUpdate();

       }catch (Exception ex) {
           
       }
   }
}

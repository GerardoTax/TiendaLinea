/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manejadores;

import Conexion.Conexion;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author dell
 */
public class UsuarioDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public void agregar(Usuario usuario){
       String sql=" insert into cliente(nombre,apellido,nit,telefono,email,password)values(?,?,?,?,?,?)";
       try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.setString(1,usuario.getNombre());
           ps.setString(2,usuario.getApellido());
           ps.setString(3,"C/F");
           ps.setInt(4,usuario.getTelefono() );
           ps.setString(5,usuario.getEmail());
           ps.setString(6,usuario.getPassword());
           ps.executeUpdate();

       }catch (Exception ex) {
           
       }
   }
   public Usuario validar(String email){
            Usuario usuario=new Usuario();
       try{
            String sql ="select* from cliente where email='"+email+"'";
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                usuario.setNombre(rs.getString(2));
                usuario.setApellido(rs.getString(3));
                usuario.setTelefono(rs.getInt(5));
                usuario.setEmail(rs.getString(6));
                usuario.setPassword(rs.getString(7));     
            }
           rs.close();
       }catch (SQLException e) {
           e.printStackTrace();
       }
        return usuario;
   }
}



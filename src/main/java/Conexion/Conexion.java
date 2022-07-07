/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author dell
 */
public class Conexion {
    private static final String USER="root";
    private static final String PASSWORD="123456789";
    private static final String URL_MYSQL="jdbc:mysql://localhost:3306/sistema_venta";
    Connection con;
    
    public Connection getConnection(){
        try{
          
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection(URL_MYSQL,USER,PASSWORD);
            
        }catch (Exception ex) {
            
        }
        return con;
    }
    
}

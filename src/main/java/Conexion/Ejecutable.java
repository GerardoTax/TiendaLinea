/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import Manejadores.ProductoDAO;
import Manejadores.UsuarioDAO;
import Modelo.Producto;
import Modelo.Usuario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
public class Ejecutable {
    public static void main(String args[]){
      
        Usuario usu= new Usuario();
        UsuarioDAO u=new UsuarioDAO();
        usu=u.validar("luistax187@gmail.com");
        
        System.out.println(usu.getNombre());
        System.out.println(usu.getApellido());
        System.out.println(usu.getPassword());
        System.out.println("hola como estas");
    }
}

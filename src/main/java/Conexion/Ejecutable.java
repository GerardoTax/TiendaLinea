/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import Manejadores.ProductoDAO;
import Modelo.Producto;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
public class Ejecutable {
    public static void main(String args[]){
     Producto p=new Producto();
     ProductoDAO a= new ProductoDAO();
     List<Producto> list = a.listar();
            for (Producto pr :  list){
                System.out.println(pr.getId());
                System.out.println(pr.getNombre());
            }
    }
}

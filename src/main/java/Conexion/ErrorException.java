/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

/**
 *
 * @author dell
 */
public class ErrorException extends Exception{
    
     public ErrorException() {
    }

    public ErrorException(String message) {
        super(message);
    }
}

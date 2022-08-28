
package Controladores;

import Manejadores.ProductoDAO;
import Modelo.Carrito;
import Modelo.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
@WebServlet(name = "ContCarrito", urlPatterns = {"/ContCarrito"})
public class ContCarrito extends HttpServlet {
    List<Carrito> listaCarrito= new ArrayList();
    int item;
    double cantidadPagar=0.0;
    int cantidad=1;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto producto= new Producto();
        ProductoDAO productoDAO= new ProductoDAO();
        String menu=request.getParameter("accion");
        

        switch (menu) {
            case "agregarCarrito":
                int id= Integer.parseInt(request.getParameter("idProducto"));
                producto=productoDAO.Consultaproducto(id);
                item=item+1;
                Carrito carrito=new Carrito();
                carrito.setItems(item);
                carrito.setIdProducto(producto.getId());
                carrito.setNombre(producto.getNombre());
                carrito.setPrecio(producto.getPrecio());
                carrito.setCantidad(cantidad);
                carrito.setSubtotal(cantidad*producto.getPrecio());
                listaCarrito.add(carrito);
                request.setAttribute("contador", listaCarrito.size());
                //request.getRequestDispatcher("ProductosTienda.jsp").forward(request, response);
                request.getRequestDispatcher("index.jsp").forward(request, response);
               
                break;
            case "Inicio":
                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
                break;
            default:
                throw new AssertionError();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

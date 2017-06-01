/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import modelo.BEAN.BeanDepMun;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DAO.DaoDepMun;

/**
 *
 * @author Santiagoth
 */
@WebServlet(name = "ServletDepMun", urlPatterns = {"/DepMun"})
public class ServletDepMun extends HttpServlet { 
    
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int idDepMun=0;
        String NomDep=null;
        String NomMun=null;
        int Opcion=0;
        
        idDepMun =Integer.parseInt(request.getParameter("txtidDepMun"));
        NomDep = request.getParameter("txtNomDep");
        NomMun = request.getParameter("txtNomMun");
        Opcion=Integer.parseInt(request.getParameter("txtOpcion"));
     
        
        
        BeanDepMun BDepMun = new BeanDepMun(idDepMun, NomDep, NomMun);
       
        DaoDepMun DDepMun = new DaoDepMun(BDepMun);
  
        
      switch(Opcion){
        
            case 1://Agregar 
                if (DDepMun.Agregar()) {
                    request.setAttribute("exito", "<script> alert('Registro Exitoso')</script>");
                    
                    
                    
                } else {
                    request.setAttribute("error", "<script> alert('Registro Fallido')</script>");
                }
                request.getRequestDispatcher("AgregarDepMun.jsp").forward(request, response);
                break;
            
            case 2://Modificar
                if (DDepMun.Modificar()) {
                    request.setAttribute("exito", "<script> alert('Modificado Exitosamente')</script>");
                } else {
                    request.setAttribute("error", "<script> alert('Modificacion No Exitosamente')</script>");
                }
                request.getRequestDispatcher("ListarDepMun.jsp").forward(request, response);
                break;    
                
            
       
        }
        
       
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

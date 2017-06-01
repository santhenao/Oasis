/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.BEAN.BeanEstaPedProve;
import modelo.DAO.DaoEstaPedProve;


/**
 *
 * @author Ivonne Andrea Dorado
 */
@WebServlet(name = "EstaPedProve", urlPatterns = {"/EstaPedProve"})
public class ServletEstaPedProve extends HttpServlet {

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
          
          int idEstaPedProve=0;
        String NomEstaPedProve=null;  
        int Opcion=0;
        

idEstaPedProve = Integer.parseInt(request.getParameter("txtidEstaPedProve"));
NomEstaPedProve = request.getParameter("txtNomEstaPedProve");
Opcion =Integer.parseInt(request.getParameter("txtOpcion"));


BeanEstaPedProve BEstaPedProve = new BeanEstaPedProve(idEstaPedProve, NomEstaPedProve);
     
        DaoEstaPedProve DEstaPedProve = new DaoEstaPedProve(BEstaPedProve);
   
     
        switch(Opcion){
            case 1 :
                if(DEstaPedProve.Agregar()){
                request.setAttribute("exito", "<script> alert('Registro Exitoso')</script>");
                
                }else{ request.setAttribute("error","<script> alert ('Registro Fallido')</script>");}
        
        request.getRequestDispatcher("AgregarEstaPedProve.jsp").forward(request, response);
        break;
        
            case 2:
                 if(DEstaPedProve.Modificar()){
                     request.setAttribute("exito","<script> alert('Modificacion Exitosa')</script>");
                 
                 }else{request.setAttribute("error","<script> alert('Modificacion Fallida')</script>");}
                 
                 request.getRequestDispatcher("ListarEstaPedProve.jsp").forward(request, response);
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

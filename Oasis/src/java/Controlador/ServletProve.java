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
import modelo.BEAN.BeanDepMun;
import modelo.BEAN.BeanProve;
import modelo.DAO.DaoDepMun;
import modelo.DAO.DaoProve;

/**
 *
 * @author Santiagoth
 */
@WebServlet(name = "ServletProve", urlPatterns = {"/Prove"})
public class ServletProve extends HttpServlet {

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
      int Opcion=0;
      int idProve=0;
      int idDepMun=0;
      String NomCompProve;
      Double NITProve;
      String NomProve;
      String ApellProve;
      Double TelfProve;
      String CorreoProve;
      String DirecProve;
           Opcion=Integer.parseInt(request.getParameter("txtOpcion"));
            idProve=Integer.parseInt(request.getParameter("txtidProve"));
      idDepMun=Integer.parseInt(request.getParameter("txtidDepMun"));
      NomCompProve = request.getParameter("txtNomCompProve");
      NITProve =  Double.valueOf(request.getParameter("txtNITProve"));
      NomProve =  request.getParameter("txtNomProve");
      ApellProve = request.getParameter("txtApellProve");
     TelfProve = Double.valueOf(request.getParameter("txtTelfProve"));
     CorreoProve = request.getParameter("txtCorreoProve");
     DirecProve = request.getParameter("txtDirecProve");
     
     
     
     
      BeanProve BProve = new BeanProve(idProve, idDepMun, NomCompProve, NITProve, NomProve, ApellProve, TelfProve, CorreoProve, DirecProve);
      DaoProve DProve = new DaoProve(BProve);
       
        
  
        
      switch(Opcion){
        
            case 1://Agregar 
                if (DProve.Agregar()) {
                    request.setAttribute("exito", "<script> alert('Registro Exitoso')</script>");
                    
                    
                    
                } else {
                    request.setAttribute("error", "<script> alert('Registro Fallido')</script>");
                }
                request.getRequestDispatcher("AgregarProve.jsp").forward(request, response);
                break;
            
            case 2://Modificar
                if (DProve.Modificar()) {
                    request.setAttribute("exito", "<script> alert('Modificado Exitosamente')</script>");
                } else {
                    request.setAttribute("error", "<script> alert('Modificacion No Exitosamente')</script>");
                }
                request.getRequestDispatcher("ListarProve.jsp").forward(request, response);
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

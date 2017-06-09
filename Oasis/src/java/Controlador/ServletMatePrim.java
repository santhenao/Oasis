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
import modelo.BEAN.BeanMatePrim;
import modelo.DAO.DaoMatePrim;

/**
 *
 * @author Santiagoth
 */
@WebServlet(name = "ServletMatePrim", urlPatterns = {"/MatePrim"})
public class ServletMatePrim extends HttpServlet {

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

        int idMatePrim = 0;
        int idCateMatePrim = 0;
        String NomMatePrim = null;
        String ContMatePrim = null;
        Double PreciUnidMatePrim = 0.0;
        String FechIngrMatePrim = null;
        String FechVencMatePrim = null;
        Double CantMatePrim = 0.0;
        int Opcion = 0;

        Opcion = Integer.parseInt(request.getParameter("txtOpcion"));
        idMatePrim = Integer.parseInt(request.getParameter("txtidMatePrim"));
        idCateMatePrim = Integer.parseInt(request.getParameter("txtidCateMatePrim"));
        NomMatePrim = request.getParameter("txtNomMatePrim");
        ContMatePrim = request.getParameter("txtContMatePrim");
        PreciUnidMatePrim = Double.valueOf(request.getParameter("txtPreciUnidMatePrim"));
        FechIngrMatePrim = request.getParameter("txtFechIngrMatePrim");
        FechVencMatePrim = request.getParameter("txtFechVencMatePrim");
        CantMatePrim = Double.valueOf(request.getParameter("txtCantMatePrim"));

        BeanMatePrim BMatePrim = new BeanMatePrim(idMatePrim, idCateMatePrim, NomMatePrim, ContMatePrim, PreciUnidMatePrim, FechIngrMatePrim, FechVencMatePrim, CantMatePrim);
        DaoMatePrim DMatePrim = new DaoMatePrim(BMatePrim);

        switch (Opcion) {
            case 1:
                if (DMatePrim.Agregar()) {
                    request.setAttribute("exito", "<script> alert('Registro Exitoso')</script>");
                } else {
                    request.setAttribute("error", "<script> alert('Registro Fallido')</script>");
                }
                request.getRequestDispatcher("ListarMatePrim.jsp").forward(request, response);
                break;
            case 2:
                if (DMatePrim.Modificar()) {
                    request.setAttribute("exito", "<script> alert('Modificacion Exitosa')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Modificacion Fallida')</script>");
                }
                request.getRequestDispatcher("ListarMatePrim.jsp").forward(request, response);
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

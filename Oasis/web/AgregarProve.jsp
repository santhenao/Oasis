

<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.BEAN.BeanProve"%>
<%@page import="modelo.DAO.DaoProve"%>
<%@page import="modelo.BEAN.BeanDepMun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 
    <body>
      <form action="Prove" method="POST">
        
          <table border="1">
              <%
                  BeanDepMun BDepMun =  new BeanDepMun();
                  DaoDepMun DDepMun =  new DaoDepMun(BDepMun);
                  BeanProve BProve =  new BeanProve ();
                  DaoProve DProve = new DaoProve (BProve);
                  ArrayList<BeanDepMun> ListaDepMun = DDepMun.lista();
              %>
                 
                  <tr>
                       <td> Compañia  </td>
                      <td><input type="text" name="txtNomCompProve"></td>
                  </tr>
                  <tr>
                       <td>NIT </td>
                      <td><input type="text" name="txtNITProve"></td>
                  </tr>
                  <tr>
                       <td>Correo</td>
                      <td><input type="text" name="txtCorreoProve"></td>
                  </tr>
                  <tr>
                       <td>Telefono </td>
                      <td><input type="text" name="txtTelfProve"></td>
                  </tr>
                 
                  <tr>
                       <td>Direccion</td>
                      <td><input type="text" name="txtDirecProve"></td>
                  </tr>
                   <tr>
                      <td>Municipio</td>
                          <td><select type="text" name="txtidDepMun">
                                  <option>Seleccionar</option>
                                 <%  
                                     int c=0;
                                     while(c<ListaDepMun.size()){                                       
                                     BDepMun = ListaDepMun.get(c);
                                 %>
                                  
                                 <option value="<%=BDepMun.getIdDepMun()%>"><%=BDepMun.getNomMun()%></option>
                                 
                                <%c++; }%>     
                                      
                          </select></td>
                  </tr>
                   <tr>
                       <td>Nombre (Contacto)</td>
                      <td><input type="text" name="txtNomProve"></td>
                  </tr>
                  <tr>
                       <td>Apellido (Contacto)</td>
                      <td><input type="text" name="txtApellProve"></td>
                  </tr>
                  
                  
                  <tr>
                       <td></td>
                      <td><button type="submit">Agregar</button></td>
                  </tr>
                  <input type="hidden" value="0" name="txtidProve">
                  <input type="hidden" value="1" name="txtOpcion">
             
          </table>

        
        
      </form>
       <%if (request.getAttribute("exito")!= null ){ %>
            ${exito}
            <%}
            else if (request.getAttribute("error")!=null) {%>
            ${error}
            <%}%>
    </body>
</html>

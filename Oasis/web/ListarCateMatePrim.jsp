<%-- 
    Document   : ListarCateMatePrim
    Created on : 4/06/2017, 07:02:29 PM
    Author     : Santiagoth
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoCateMatePrim"%>
<%@page import="modelo.BEAN.BeanCateMatePrim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar</title>
    </head>
    <body>
      <%!int Parametro;%>
      
        
      
         <jsp:include page="Menu.jsp"></jsp:include>
   
        <div class="col-md-9">  
       
             <table class="table">
                        <tr>
                             <th>Codigo   </th>
                             <th>Nombre</th>   
                             <th>Descripcion</th>
                        </tr>
                      
                        <%
                        BeanCateMatePrim BCateMatePrim = new BeanCateMatePrim();
                        DaoCateMatePrim DCateMatePrim = new  DaoCateMatePrim(BCateMatePrim);
                        ArrayList<BeanCateMatePrim> ListaCateMatePrim = DCateMatePrim.lista();
                        int c=0;
                        while(c<ListaCateMatePrim.size()){
                        BCateMatePrim=ListaCateMatePrim.get(c);                        
                        %>
                        <tr>
                             <td><%=BCateMatePrim.getIdCateMatePrim()%></td>
                             <td><%=BCateMatePrim.getNomCateMatePrim()%> </td>
                             <td><%=BCateMatePrim.getDescriCateMatePrim()%> </td>
                             <td><form action='ActualizarCateMatePrim.jsp' method='post'>
                                     <input name="idCateMatePrim" type="hidden" value='<%=BCateMatePrim.getIdCateMatePrim()%>'><button type="submit">MODIFICAR</button>
                             </form>
                             </td>
                             
                             
                        </tr>                               
                        
                        
                        <%c++;}%>   
            </table>    
        </div>
    </body>
</html>

<%-- 
    Document   : ListarMatePrim
    Created on : 4/06/2017, 03:41:26 PM
    Author     : Santiagoth
--%>

<%@page import="modelo.DAO.DaoCateMatePrim"%>
<%@page import="modelo.BEAN.BeanCateMatePrim"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoMatePrim"%>
<%@page import="modelo.BEAN.BeanMatePrim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        
          <script src="JqueryUI/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <link href="JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
       
        
        
        
        
        <title>Listar</title>
    </head>
    <body>

        <%! BeanMatePrim BMatePrim = new BeanMatePrim();
            BeanCateMatePrim BCateMatePrim =  new BeanCateMatePrim();
            DaoCateMatePrim DCateMatePrim =  new DaoCateMatePrim(BCateMatePrim);
            DaoMatePrim DMatePrim = new DaoMatePrim(BMatePrim);
            ArrayList<BeanCateMatePrim> ListaCateMatePrim ;
            ArrayList<BeanMatePrim> ListaMatePrim ;
        %>
        
        <jsp:include page="Menu.jsp"></jsp:include>
   
        <div class="col-md-9">
        
        
        <table class="table">
        <tr>
            <th>Nombre</th>
            <th>Categoria</th>
            <th>Contenido</th>
            <th>Precio / u</th>
            <th>Ingreso</th>
            <th>Vencimiento</th>
            <th>Cantidad</th>
             <th>Accion</th>
            
        </tr>
        <%
            int c=0;
            ListaMatePrim =  DMatePrim.Listar();
            while (c<ListaMatePrim.size()) {
            BMatePrim = ListaMatePrim.get(c);
        %>
             
              <tr>
                  <td><%=BMatePrim.getNomMatePrim()%></td>
                  
                  
                    <%
                    int i=0;
                    ListaCateMatePrim =  DCateMatePrim.lista();
                    while(i < ListaCateMatePrim.size()){
                    BCateMatePrim = ListaCateMatePrim.get(i);
                %>
                
                <% if (BMatePrim.getIdCateMatePrim()==BCateMatePrim.getIdCateMatePrim()){%> 
                <Td><%= BCateMatePrim.getNomCateMatePrim()%></Td>
                <%}i++;}%> 
                  
                  <td><%=BMatePrim.getContMatePrim()%></td>
                  <td><%=BMatePrim.getPreciUnidMatePrim()%></td>
                  <td><%=BMatePrim.getFechIngrMatePrim()%></td>
                  <td><%=BMatePrim.getFechVencMatePrim()%></td>
                  <td><%=BMatePrim.getCantMatePrim()%></td>
                  <td>
                      <form method="POST" action="ActualizarMatePrim.jsp">
                                         
                                           <input type="hidden" name="idMatePrim" value="<%=BMatePrim.getIdMatePrim()%>"><button type="submit">Modificar</button> 
                                 
                                 </form>
                                 
                  </td>
                  
              </tr>
            
            
            
        <%c++;}%>
        
      
        </table>
        </div>
    </body>
</html>

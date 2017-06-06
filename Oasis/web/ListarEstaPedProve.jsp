<%@page import="modelo.DAO.DaoEstaPedProve"%>
<%@page import="modelo.BEAN.BeanEstaPedProve"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="modelo.BEAN.BeanDepMun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
 
        
        
        <title>Lista</title>
    </head>
    <body>
      
        <jsp:include page="Menu.jsp"></jsp:include>
            
        <div class="col-md-9">    

                    <table class="table">
                        <tr>
                             <th>Codigo</th>
                             <th>Estado</th>   
                             <th>Accion</th>   
                        </tr>
                      
                        <%
                        BeanEstaPedProve BEstaPedProve = new BeanEstaPedProve();
                        DaoEstaPedProve DEstaPedProve= new  DaoEstaPedProve(BEstaPedProve);
                        ArrayList<BeanEstaPedProve> ListaEstaPedProve = DEstaPedProve.lista();
                        int c=0;
                        while(c<ListaEstaPedProve.size()){
                        BEstaPedProve=ListaEstaPedProve.get(c);                        
                        %>
                        <tr>
                             <td><%=BEstaPedProve.getIdEstaPedProve()%></td>
                             <td><%=BEstaPedProve.getNomEstaPedProve()%> </td>
                             <td>
                                 <form method="POST" action="ActualizarEstaPedProve.jsp">
                                         
                                           <input type="hidden" name="idEstaPedProve" value="<%=BEstaPedProve.getIdEstaPedProve()%>"><button type="submit">Modificar</button> 
                                 
                                 </form>
                                 
                                </td>

                           
                        </tr>    
                            
                        
                        
                        <%c++;}%>
                        
                        
            </table>
          
                
    
        </div>
 

        
    </body>
</html>

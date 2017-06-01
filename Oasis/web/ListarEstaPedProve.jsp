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
        <title>Lista EstadoPedidoProveedor</title>
    </head>
    <body>
      


        <center>
              <h1>Lista EstadoPedidoProveedor</h1>
            <font face="Tahoma">
             <table border="3">
                        <tr>
                             <th>Codigo</th>
                             <th>Estado</th>   
                            
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
                             <th><%=BEstaPedProve.getIdEstaPedProve()%></th>
                             <th><%=BEstaPedProve.getNomEstaPedProve()%> </th>
                             <th>
                                 <form method="POST" action="ActualizarEstaPedProve.jsp">
                                         
                                           <input type="hidden" name="idEstaPedProve" value="<%=BEstaPedProve.getIdEstaPedProve()%>"><button type="submit">Modificar</button> 
                                 
                                 </form>
                                 
                                </th>

                           
                        </tr>    
                            
                        
                        
                        <%c++;}%>
                        
                        
            </table>
          
                
    
            </font>
        </center>
 

        
    </body>
</html>



<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="modelo.BEAN.BeanDepMun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar DepMun</title>
    </head>
    <body>
        
        <%!int Parametro;%>
      

        <center>
            
            <h1>Lista DepMun</h1>
            <font face="Tahoma">
             <table border="3">
                        <tr>
                             <th>Codigo   </th>
                             <th>Departamento </th>   
                             <th>Nombre Municipio  </th>
                        </tr>
                      
                        <%
                        BeanDepMun BDepMun = new BeanDepMun();
                        DaoDepMun DDepMun = new  DaoDepMun(BDepMun);
                        ArrayList<BeanDepMun> ListaDepMun = DDepMun.lista();
                        int c=0;
                        while(c<ListaDepMun.size()){
                        BDepMun=ListaDepMun.get(c);                        
                        %>
                        <tr>
                             <th><%=BDepMun.getIdDepMun()%></th>
                             <th><%=BDepMun.getNomDep()%> </th>
                             <th><%=BDepMun.getNomMun()%> </th>
                             <th><form action='ActualizarDepMun.jsp' method='post'>
                                     <input name="idDepMun" type="hidden" value='<%=BDepMun.getIdDepMun()%>'><button type="submit">MODIFICAR</button>
                             </form>
                             </th>
                             
                             
                        </tr>    
                            
                        
                        
                        <%c++;}%>
                        
                        
            </table>
          
                
           
      
            </font>
        </center>
                      
             
                 

        
    </body>
</html>

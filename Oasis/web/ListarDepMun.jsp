

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
      
        
      
         <jsp:include page="Menu.jsp"></jsp:include>
   
        <div class="col-md-9">  
       
             <table class="table">
                        <tr>
                             <th>Codigo   </th>
                             <th>Departamento </th>   
                             <th>Municipio  </th>
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
                             <td><%=BDepMun.getIdDepMun()%></td>
                             <td><%=BDepMun.getNomDep()%> </td>
                             <td><%=BDepMun.getNomMun()%> </td>
                             <td><form action='ActualizarDepMun.jsp' method='post'>
                                     <input name="idDepMun" type="hidden" value='<%=BDepMun.getIdDepMun()%>'><button type="submit">MODIFICAR</button>
                             </form>
                             </td>
                             
                             
                        </tr>    
                            
                        
                        
                        <%c++;}%>
                        
                        
            </table>
          
                
           
        </div>
       
                      
             
                 

        
    </body>
</html>

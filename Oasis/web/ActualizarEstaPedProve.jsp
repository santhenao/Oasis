



<%@page import="modelo.DAO.DaoEstaPedProve"%>
<%@page import="modelo.BEAN.BeanEstaPedProve"%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <%!
    BeanEstaPedProve BEstaPedProve = new BeanEstaPedProve();
    DaoEstaPedProve DEstaPedProve = new DaoEstaPedProve(BEstaPedProve);
    int c = 0;
    int Parametro=0;
    int idEstaPedProve=0;
    String NomEstaPedProve = "";
 
%>


<!DOCTYPE html>
<html>
    
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>




    <body>
  
   
 <% 
                Parametro = Integer.parseInt(request.getParameter("idEstaPedProve"));
                BEstaPedProve= DEstaPedProve.Consultar(Parametro);
                idEstaPedProve = BEstaPedProve.getIdEstaPedProve();
                NomEstaPedProve = BEstaPedProve.getNomEstaPedProve();
                
 %>
    


       
        <form action="EstaPedProve" method="POST" >



            <table border="0">


                <tr>
                    <td>Codigo:</td>  
                    <td><input type="text" value="<%=idEstaPedProve%>" name="txtidEstaPedProve" ></input></td>  
                </tr>
                <tr>
                    <td>Estado Pedido:</td>  
                    <td><input type="text" value="<%=NomEstaPedProve%>" name="txtNomEstaPedProve"></input></td>  
                </tr>
               
                <tr>

                    <td><button type="submit"  >Modificar</button></td>  
                </tr>
                <input type="hidden" value="2" name="txtOpcion"></input>


            </table>

        </form>  




</body>     



      


</html>

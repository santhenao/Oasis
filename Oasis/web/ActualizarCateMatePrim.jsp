<%-- 
    Document   : ActualizarCateMatePrim
    Created on : 4/06/2017, 06:51:02 PM
    Author     : Santiagoth
--%>

<%@page import="modelo.DAO.DaoCateMatePrim"%>
<%@page import="modelo.BEAN.BeanCateMatePrim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        
    <%!int Parametro;
//hola Mundo

    BeanCateMatePrim BCateMatePrim = new BeanCateMatePrim();
    DaoCateMatePrim DCateMatePrim = new DaoCateMatePrim(BCateMatePrim);
    
    
    
    int c = 0;
    int idCateMatePrim;
    String NomCateMatePrim = "";
    String DescriCateMatePrim = "";
%>    
          <% 
                Parametro = Integer.parseInt(request.getParameter("idCateMatePrim"));
                BCateMatePrim = DCateMatePrim.Consultar(Parametro);
                idCateMatePrim = BCateMatePrim.getIdCateMatePrim();
                NomCateMatePrim = BCateMatePrim.getNomCateMatePrim();
                DescriCateMatePrim = BCateMatePrim.getDescriCateMatePrim();
        %>
        
        <jsp:include page="Menu.jsp"></jsp:include>
   
        <div class="col-md-9">  
        
        
           <form action="CateMatePrim" method="POST" >



            <table border="0">


                <tr>
                    <td>Codigo:</td>  
                    <td><input type="text" value="<%=idCateMatePrim%>" name="txtidCateMatePrim" readonly=""></input></td>  
                </tr>
                <tr>
                    <td>Nombre:</td>  
                    <td><input type="text" value="<%=NomCateMatePrim%>" name="txtNomCateMatePrim"></input></td>  
                </tr>
                <tr>
                    <td>Descripcion</td>  
                    <td><input type="text" value="<%=DescriCateMatePrim%>" name="txtDescriCateMatePrim"></input></td>  
                </tr>
                <tr>

                    <td><button type="submit"  >Modificar</button></td>  
                </tr>
                <input type="hidden" value="2" name="txtOpcion"></input>


            </table>

        </form>  
        
            </div>
    </body>
</html>

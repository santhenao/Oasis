

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="modelo.BEAN.BeanDepMun"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int Parametro;
//hola Mundo

    BeanDepMun BDepMun = new BeanDepMun();
    DaoDepMun DDepMun = new DaoDepMun(BDepMun);
    int c = 0;
    int idDepMun;
    String NomDep = "";
    String NomMun = "";
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        

        <% 
                Parametro = Integer.parseInt(request.getParameter("idDepMun"));
                BDepMun = DDepMun.Consultar(Parametro);
                idDepMun = BDepMun.getIdDepMun();
                NomDep = BDepMun.getNomDep();
                NomMun = BDepMun.getNomMun();
        %>
       
        <jsp:include page="Menu.jsp"></jsp:include>
            
        <div class="col-md-9">
        
        <form action="DepMun" method="POST" >



            <table border="0">


                <tr>
                    <td>Codigo:</td>  
                    <td><input type="text" value="<%=idDepMun%>" name="txtidDepMun" readonly=""></input></td>  
                </tr>
                <tr>
                    <td>Departamento:</td>  
                    <td><input type="text" value="<%=NomDep%>" name="txtNomDep"></input></td>  
                </tr>
                <tr>
                    <td>Municipio</td>  
                    <td><input type="text" value="<%=NomMun%>" name="txtNomMun"></input></td>  
                </tr>
                <tr>

                    <td><button type="submit"  >Modificar</button></td>  
                </tr>
                <input type="hidden" value="2" name="txtOpcion"></input>


            </table>

        </form>  
       </div>
    </center>



</body>     



     


</html>

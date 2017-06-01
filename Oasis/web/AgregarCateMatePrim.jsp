<%-- 
    Document   : AgregarCateMatePrim
    Created on : 7/05/2017, 10:16:08 PM
    Author     : Ivonne Andrea Dorado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRAR </title>
    </head>
    <body>
    <center>
        <font face="Tahoma">
        <h2>REGISTRAR CATEMATEPRIMN</h2>
        </font>
    </center>
    <form method="post" action="CateMatePrim">
        <center>
            <font face="Tahoma">
            <table border="3">
               
                <tr>
                    <th>Nombre Categoria Materia Prima<br>
                        <input type="text" name="txtNomCateMatePrim"><br>
                    </th>
                </tr>
                 <tr>
                    <th>Descripcion categoria Materia Prima<br>
                        <input type="text" name="txtDescriCateMatePrim"><br>
                    </th>
                </tr>
            </table>
            <button>Registrar</button><br>
            <input type="hidden" name="txtOpcion" value="1">
           
            
            <a href="ModificarCateMatePrim.jsp">Modificar</a>
            </font>
        </center>
    </form>
     <%if (request.getAttribute("exito")!= null ){ %>
            ${exito}
            <%}
            else if (request.getAttribute("error")!=null) {%>
            ${error}
            <%}%>
</body>
</html>


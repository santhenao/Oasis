<%-- 
    Document   : AgregarDepMun
    Created on : 6/05/2017, 08:14:48 PM
    Author     : Santiagoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRAR DEPMUN</title>
    </head>
    <body>
    <center>
        <font face="Tahoma">
        <h2>REGISTRAR DEPMUN</h2>
        </font>
    </center>
    <form method="post" action="DepMun">
        <center>
            <font face="Tahoma">
            <table border="3">
                <tr>
                    <th>Codigo:<br>
                        <input type="text" name="txtidDepMun"><br><br>
                    </th>
                </tr>
                <tr>
                    <th>Nombre Departamento:<br>
                        <input type="text" name="txtNomDep"><br>
                    </th>
                </tr>
                 <tr>
                    <th>Nombre Municipio:<br>
                        <input type="text" name="txtNomMun"><br>
                    </th>
                </tr>
            </table>
            <button>Registrar</button><br>
            <input type="hidden" name="txtOpcion" value="1">
           
            
            <a href="ModificarDepMun.jsp">Modificar</a>
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
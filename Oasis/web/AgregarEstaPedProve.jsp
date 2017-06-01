<%-- 
    Document   : AgregarEstaPedProve
    Created on : 9/05/2017, 09:55:31 AM
    Author     : Ivonne Andrea Dorado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRAR Esta ped Prove</title>
    </head>
    <body>
    <center>
        <font face="Tahoma">
        <h2>REGISTRAR ESTAPEDPROVE</h2>
        </font>
    </center>
    <form method="post" action="EstaPedProve">
        <center>
            <font face="Tahoma">
            <table border="3">
               
                <tr>
                    <th>Nombre estado pedido proveedor:<br>
                        <input type="text" name="txtNomEstaPedProve"><br>
                    </th>
                </tr>
                
            </table>
            <button type="submit">Registrar</button><br>
            <input type="hidden" name="txtidEstaPedProve" value="1">
            <input type="hidden" name="txtOpcion" value="1">
           
            
            <a href="ModificarEstaPedProve.jsp">Modificar</a>
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
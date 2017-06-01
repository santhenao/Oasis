
<%@page import="modelo.DAO.DaoProve"%>
<%@page import="modelo.BEAN.BeanProve"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="modelo.BEAN.BeanDepMun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Proveedores</title>
    </head>
    <body>




    <center>

        <h1>Lista Proveedores</h1>
        <font face="Tahoma">
        <table border="1">
            <tr>
                <th>Nombre Compañia</th>
                <th>NIT</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th>Direccion</th>
                <th>Departamento/Municipio </th>   
                <th>Nombre</th>
                <th>Apellido</th>



            </tr>
            <%!BeanProve BProve = new BeanProve();
                            DaoProve DProve = new DaoProve(BProve);%>
            <%

                ArrayList<BeanProve> ListaProve = DProve.Lista();
                int c = 0;
                while (c < ListaProve.size()) {
                    BProve = ListaProve.get(c);


            %>
            <tr>  


                <th><%=BProve.getNomCompProve()%> </th>
                <th><%= BProve.getNITProve()%> </th>
                <th><%= BProve.getCorreoProve()%></th>
                <th><%= BProve.getTelfProve()%></th>
                <th><%=  BProve.getDirecProve()%></th>              
                <th><%=BProve.getDepMun()%> </th>  
                <th><%=BProve.getNomProve()%> </th>
                <th><%= BProve.getApellProve()%> </th>



                <th>
                    <form method="post" action="ActualizarProve.jsp">

                        <input type="hidden" name="idProve" value="<%=BProve.getIdProve()%>"><button type="submit">Modificar</button>   

                    </form>


                </th>
            </tr>    



            <%c++;
                            }%>


        </table>



        <a href="ActualizarProve.jsp">Modificar</a>
        </font>
    </center>



</body>
</html>

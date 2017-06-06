
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



<jsp:include page="Menu.jsp"></jsp:include>
   
        <div class="col-md-9">
          
          
       
        <table class="table" >
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
            <%!
            BeanProve BProve = new BeanProve();
            BeanDepMun BDepMun = new BeanDepMun();
            DaoDepMun DDepMun = new DaoDepMun(BDepMun);
            DaoProve DProve = new DaoProve(BProve);%>
            <%

                ArrayList<BeanProve> ListaProve = DProve.Lista();
                ArrayList<BeanDepMun> ListaDepMun = DDepMun.lista();
                int c = 0;
                while (c < ListaProve.size()) {
                    BProve = ListaProve.get(c);


            %>
            <tr>  


                <td><%=BProve.getNomCompProve()%> </td>
                <td><%= BProve.getNITProve()%> </td>
                 <td><%= BProve.getTelfProve()%></td>
                <td><%= BProve.getCorreoProve()%></td>              
                <td><%=  BProve.getDirecProve()%></td>              
                   <%
                    int i=0;
                    while(i < ListaDepMun.size()){
                    BDepMun = ListaDepMun.get(i);
                %>
                
                <% if (BProve.getDepMun()==BDepMun.getIdDepMun()){%> 
                <td><%= BDepMun.getNomMun()%></td>
                <%}i++;}%> 
                <td><%=BProve.getNomProve()%> </td>
                <td><%= BProve.getApellProve()%> </td>



                <td>
                    <form method="post" action="ActualizarProve.jsp">

                        <input type="hidden" name="idProve" value="<%=BProve.getIdProve()%>"><button type="submit">Modificar</button>   

                    </form>


                </td>
            </tr>    



            <%c++;
                            }%>


        </table>



        <a href="ActualizarProve.jsp">Modificar</a>
        </font>
    </div>



</body>
</html>

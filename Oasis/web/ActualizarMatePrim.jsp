<%-- 
    Document   : ActualizarMatePrim
    Created on : 8/06/2017, 11:52:45 AM
    Author     : Santiagoth
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoMatePrim"%>
<%@page import="modelo.DAO.DaoMatePrim"%>
<%@page import="modelo.BEAN.BeanMatePrim"%>
<%@page import="modelo.DAO.DaoCateMatePrim"%>
<%@page import="modelo.BEAN.BeanCateMatePrim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%!int Parametro;
    BeanCateMatePrim BCateMatePrim = new BeanCateMatePrim();
    DaoCateMatePrim DCateMatePrim = new DaoCateMatePrim(BCateMatePrim);
    BeanMatePrim BMatePrim = new BeanMatePrim();
    DaoMatePrim DMatePrim = new DaoMatePrim(BMatePrim);
    int c = 0;
    int idMatePrim;
    int idCateMatePrim = 0;
    String NomMatePrim = "";
    String ContMatePrim = "";
    Double PreciUnidMatePrim = 0.0;
    String FechIngrMatePrim = "";
    String FechVencMatePrim = "";
    Double CantMatePrim = 0.0;

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
        <link href="JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            Parametro = Integer.parseInt(request.getParameter("idMatePrim"));
            BMatePrim = DMatePrim.Consultar(Parametro);
            idMatePrim = BMatePrim.getIdMatePrim();
            idCateMatePrim = BMatePrim.getIdCateMatePrim();
            NomMatePrim = BMatePrim.getNomMatePrim();
            ContMatePrim = BMatePrim.getContMatePrim();
            PreciUnidMatePrim = BMatePrim.getPreciUnidMatePrim();
            FechIngrMatePrim = BMatePrim.getFechIngrMatePrim();
            FechVencMatePrim = BMatePrim.getFechVencMatePrim();
            CantMatePrim = BMatePrim.getCantMatePrim();

        %>


        <jsp:include page="Menu.jsp"></jsp:include>

            <div class="col-md-9">   

    
                <form action="MatePrim" method="POST" >


                <%                
                    ArrayList<BeanCateMatePrim> ListaCateMatePrim = DCateMatePrim.lista();
                %>
                <center>
                    <table border="0">
                       <tr>
                    <td>Categoria :</td>
                    <td>
                        <select name="txtidCateMatePrim"  >
                            <%
                            ListaCateMatePrim = DCateMatePrim.lista();
                            int c=0;
                            while (c<ListaCateMatePrim.size()) {
                            BCateMatePrim = ListaCateMatePrim.get(c);                            
                            %>                            
                            <option value="<%=BCateMatePrim.getIdCateMatePrim()%>"<%if(BCateMatePrim.getIdCateMatePrim()==idCateMatePrim){%>selected<%}%>><%=BCateMatePrim.getNomCateMatePrim()%></option>       
                            <%c++;}%>
                        </select>
                    
                    </td>
                </tr>
                <tr>
                    <td>Nombre :</td>
                    <td> <input type="text" value="<%=NomMatePrim%>" name="txtNomMatePrim" required onkeypress=" return  soloLetras(event)"></td>
                </tr>
                <tr>
                      <td> Contenido :</td>
                    <td> <input type="text" value="<%=ContMatePrim%>" name="txtContMatePrim" required  onkeypress></td>
                </tr>
                <tr>
                      <td>PrecioUnidad :</td>
                      <td>  <input type="text" value="<%=PreciUnidMatePrim%>" name="txtPreciUnidMatePrim" required onkeypress=" return SoloNumeros(event)"> </td>
                </tr>
                <tr>
                      <td>Ingreso :</td>
                    <td>  <input type="text"  value="<%=FechIngrMatePrim%>" id="Ingreso" name="txtFechIngrMatePrim"  required> </td>
                </tr>
                <tr>
                      <td> Vencimiento :</td>
                    <td> <input type="text" value="<%=FechVencMatePrim%>" id="Vencimiento" name="txtFechVencMatePrim" required></td>
                </tr>
                <tr>
                      <td>Cantidad :</td>
                      <td>  <input type="text" value="<%=CantMatePrim%>" name="txtCantMatePrim" equired  onkeypress=" return SoloNumeros(event)"> </td>
                </tr>
                 <tr>
                       <td></td>
                     <td> <button type="submit">Modificar</button></td>
                </tr>
                  <input type="hidden" value="<%=Parametro%>" name="txtidMatePrim">
                <input type="hidden" value="2" name="txtOpcion">
                   
            
          
        </form>
               
              </div>   
                          
                  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
 
    <script src="js/MateriaPrimaV.js" type="text/javascript"></script> 

    </body>
</html>

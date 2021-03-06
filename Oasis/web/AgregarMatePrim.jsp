

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoCateMatePrim"%>
<%@page import="modelo.BEAN.BeanCateMatePrim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <!validaciones-->


    <link href="JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link href="font-Awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Yantramanav" rel="stylesheet">
    <link href="css/estilo.css" rel="stylesheet" type="text/css"/> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <title>Agregar</title>
</head>
<body>
    <%!
        BeanCateMatePrim BCateMatePrim = new BeanCateMatePrim();
        DaoCateMatePrim DCateMatePrim = new DaoCateMatePrim(BCateMatePrim);
        ArrayList<BeanCateMatePrim> ListaCateMatePrim;
    %>    
    <jsp:include page="Menu.jsp"></jsp:include>

        <div class="col-md-9">    


            <form action="MatePrim" method="POST">

                <table class="table-bordered">

                    <tr>
                        <td>Categoria :</td>
                        <td>
                            <select name="txtidCateMatePrim"  >
                            <%
                                ListaCateMatePrim = DCateMatePrim.lista();
                                int c = 0;
                                while (c < ListaCateMatePrim.size()) {
                                    BCateMatePrim = ListaCateMatePrim.get(c);
                            %>                            
                            <option value="<%=BCateMatePrim.getIdCateMatePrim()%>"><%=BCateMatePrim.getNomCateMatePrim()%></option>
                            <%c++;
                                }%>
                        </select>

                    </td>
                </tr>
                <tr>
                    <td>Nombre :</td>
                    <td> <input type="text" name="txtNomMatePrim" required onkeypress=" return  soloLetras(event)"></td>
                </tr>
                <tr>
                    <td> Contenido :</td>
                    <td> <input type="text" name="txtContMatePrim" required  onkeypress></td>
                </tr>
                <tr>
                    <td>PrecioUnidad :</td>
                    <td>  <input type="text" name="txtPreciUnidMatePrim" required onkeypress=" return SoloNumeros(event)"> </td>
                </tr>
                <tr>
                    <td>Ingreso :</td>
                    <td>  <input type="text" id="Ingreso" name="txtFechIngrMatePrim"  required> </td>
                </tr>
                <tr>
                    <td> Vencimiento :</td>
                    <td> <input type="text" id="Vencimiento" name="txtFechVencMatePrim" required></td>
                </tr>
                <tr>
                    <td>Cantidad :</td>
                    <td>  <input type="text" name="txtCantMatePrim" equired  onkeypress=" return SoloNumeros(event)"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <button type="submit">Registrar</button></td>
                </tr>
                <input type="hidden" value="0" name="txtidMatePrim">
                <input type="hidden" value="1" name="txtOpcion">


            </table>
        </form>   

    </div>
                            <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
    <script src="js/MateriaPrima.js" type="text/javascript"></script>
    <script src="js/MateriaPrimaV.js" type="text/javascript"></script>
</body>
</html>

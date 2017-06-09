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
        
           <script src="JqueryUI/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <link href="JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
      
        <script src="js/EstadoProveedor.js" type="text/javascript"></script>
        
        <!validaciones-->
        
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
        <jsp:include page="Menu.jsp"></jsp:include>
    
    
    <form method="post" action="EstaPedProve">
        
            
         
            
        <div class="col-md-9">    
            
            <table class="table-bordered">
               
                <tr>
                    <td>Nombre:</td>
                     <td>    <input type="text" name="txtNomEstaPedProve"  required onkeypress=" return soloLetras(event)"></td>
                   
                </tr>
                <tr>
                    <td></td>
                     <td>  <button type="submit">Agregar</button><br>  </td>
                    
                </tr>
                
            </table>
        </div>
            
           
            <input type="hidden" name="txtidEstaPedProve" value="1">
            <input type="hidden" name="txtOpcion" value="1">
           
            
     
           
        
    </form>
     <%if (request.getAttribute("exito")!= null ){ %>
            ${exito}
            <%}
            else if (request.getAttribute("error")!=null) {%>
            ${error}
            <%}%>
</body>
</html>
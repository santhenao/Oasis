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
     
 
    <form method="post" action="DepMun">
        <jsp:include page="Menu.jsp"></jsp:include>
            
        <div class="col-md-9">    
            
            <table class="table-bordered">
                <tr>
                    <td>Codigo:</td>
                    <td><input type="text" name="txtidDepMun"></td>
                </tr>
                <tr>
                    <td>Nombre Departamento:</td>
                    <td>    <input type="text" name="txtNomDep">   </td>
                </tr>
                 <tr>
                    <td>Nombre Municipio:</td>
                     <td>   <input type="text" name="txtNomMun"></td>
                </tr>
                 <tr>
                    <td></td>
                   <td><button type="submit">Registrar</button> </td>
                </tr>
                
            </table>
            </div>
            
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
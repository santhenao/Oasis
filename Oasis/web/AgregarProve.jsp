

<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.BEAN.BeanProve"%>
<%@page import="modelo.DAO.DaoProve"%>
<%@page import="modelo.BEAN.BeanDepMun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!validaciones-->
        
     
         <script src="JqueryUI/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <link href="JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="js/Proveedor.js" type="text/javascript"></script>
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
      <form action="Prove" method="POST">
        
          <jsp:include page="Menu.jsp"></jsp:include>
   
        <div class="col-md-9">
          <table class="table-bordered">
              <%
                  BeanDepMun BDepMun =  new BeanDepMun();
                  DaoDepMun DDepMun =  new DaoDepMun(BDepMun);
                  BeanProve BProve =  new BeanProve ();
                  DaoProve DProve = new DaoProve (BProve);
                  ArrayList<BeanDepMun> ListaDepMun = DDepMun.lista();
              %>
                 
                  <tr>
                       <td> Compañia  </td>
                       <td><input type="text" name="txtNomCompProve" required onkeypress=""></td>
                  </tr>
                  <tr>
                       <td>NIT </td>
                      <td><input type="text" name="txtNITProve"  required onkeypress="return SoloNumeros(event)"></td>
                  </tr>
                  <tr>
                       <td>Correo</td>
                       <td><input type="email" name="txtCorreoProve" id="email" name="txtCorreoProve" required placeholder="Ej: proveedor@gmail.com"  onkeypress="return ValidarCorreo()"></td>
                  </tr>
                  <tr>
                       <td>Telefono </td>
                       <td><input type="tel" name="txtTelfProve" required maxlength="10"  title=" numero incorecto"onkeypress="return SoloNumeros(event)" ></td>
                  </tr>
                 
                  <tr>
                       <td>Direccion</td>
                      <td><input type="text" name="txtDirecProve"></td>
                  </tr>
                   <tr>
                      <td>Municipio</td>
                          <td><select type="text" name="txtidDepMun">
                                  <option>Seleccionar</option>
                                 <%  
                                     int c=0;
                                     while(c<ListaDepMun.size()){                                       
                                     BDepMun = ListaDepMun.get(c);
                                 %>
                                  
                                 <option value="<%=BDepMun.getIdDepMun()%>"><%=BDepMun.getNomMun()%></option>
                                 
                                <%c++; }%>     
                                      
                          </select></td>
                  </tr>
                   <tr>
                       <td>Nombre (Contacto)</td>
                      <td><input type="text" name="txtNomProve"  required onkeypress="return soloLetras (event)"></td>
                  </tr>
                  <tr>
                       <td>Apellido (Contacto)</td>
                      <td><input type="text" name="txtApellProve"  required onkeypress="return soloLetras (event)"></td>
                  </tr>
                  
                  
                  <tr>
                       <td></td>
                      <td><button type="submit">Agregar</button></td>
                  </tr>
                  <input type="hidden" value="0" name="txtidProve">
                  <input type="hidden" value="1" name="txtOpcion">
             
          </table>
        </div>
        
        
      </form>
       <%if (request.getAttribute("exito")!= null ){ %>
            ${exito}
            <%}
            else if (request.getAttribute("error")!=null) {%>
            ${error}
            <%}%>
    </body>
</html>



<%@page import="modelo.DAO.DaoProve"%>
<%@page import="modelo.BEAN.BeanProve"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.DAO.DaoDepMun"%>
<%@page import="modelo.BEAN.BeanDepMun"%>




 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int Parametro;
    BeanDepMun BDepMun =  new BeanDepMun();
    DaoDepMun DDepMun = new DaoDepMun(BDepMun);
    BeanProve BProve = new BeanProve();
    DaoProve DProve = new DaoProve(BProve);
    int c = 0;
    int idProve;
    int idDepMun = 0;
    String NomCompProve = "";
    Double NITProve=0.0;
    String NomProve="";
    String ApellProve="";
    Double TelfProve=0.0;
    String CorreoProve="";
    String DirecProve="";
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <script src="JqueryUI/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <link href="JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="js/Proveedor.js" type="text/javascript"></script>
        <title>Actualizar</title>
    </head>




    <body>
     
    

        <%      
                Parametro = Integer.parseInt(request.getParameter("idProve"));
                BProve = DProve.Consultar(Parametro);
                idProve = BProve.getIdProve();
                idDepMun = BProve.getDepMun();
                NomCompProve = BProve.getNomCompProve();
                NITProve = BProve.getNITProve();
                NomProve = BProve.getNomProve();
                ApellProve = BProve.getApellProve();
                TelfProve = BProve.getTelfProve();
                CorreoProve = BProve.getCorreoProve();
                DirecProve =BProve.getDirecProve();
                
        %>
        
          <jsp:include page="Menu.jsp"></jsp:include>
            
        <div class="col-md-9">   
        
        <form action="Prove" method="POST" >


            <% 
            ArrayList<BeanDepMun> ListaDepMun = DDepMun.lista();
            
            %>
            <center>
            <table border="0">


                <tr>
                    <td>Departamento Municipio</td>  
                            <td><select  name="txtidDepMun"  >
                        
                                    
                                    <%int c=0;
                            
                            while(c<ListaDepMun.size()) {                                    
                                    
                           BDepMun=ListaDepMun.get(c);
                            
                            %>
                                    <option value="<%=BDepMun.getIdDepMun()%>"<%if(BDepMun.getIdDepMun()==idDepMun){%>selected<%}%>><%=BDepMun.getNomMun()%></option>       
                                    
                            <%c++;}%>       
                                    
                        </select></td>  
                </tr>
                <tr>
                    <td>Nombre Compañia:</td>  
                    <td><input type="text" value="<%=NomCompProve%>" name="txtNomCompProve" required ></input></td>  
                </tr>
                <tr>
                    <td>NIT</td>  
                    <td><input type="number" value="<%=NITProve%>" name="txtNITProve" required  onkeypress="return SoloNumeros(event)"></input></td>  
                </tr>
               
                <tr>
                    <td>Telefono</td>  
                    <td><input type="number" value="<%=TelfProve%>" name="txtTelfProve" required onkeypress=" return tel(tel)"></input></td>  
                </tr>
                <tr>
                    <td>Correo</td>  
                    <td><input type="email" value="<%=CorreoProve%>" name="txtCorreoProve" required onkeypress=" return ValidarCorreo(event)"></input></td>  
                </tr>
                <tr>
                    <td>Direccion</td>  
                    <td><input type="text" value="<%=DirecProve%>" name="txtDirecProve" required ></input></td>  
                </tr>
                 <tr>
                    <td>Nombre Contacto</td>  
                    <td><input type="text" value="<%=NomProve%>" name="txtNomProve" required onkeypress=" return soloLetras(event)"></input></td>  
                </tr>
                <tr>
                    <td>Apellido Contacto</td>  
                    <td><input type="text" value="<%=ApellProve%>" name="txtApellProve"  required onkeypress=" return soloLetras(event)"></input></td>  
                </tr>
                <tr>

                    <td><button type="submit"  >Modificar</button></td>  
                </tr>
                 <input type="hidden" value="<%=Parametro%>" name="txtidProve"></input>
                <input type="hidden" value="2" name="txtOpcion"></input>


            </table>
 </center>
        </form>  
        </div>   



</body>     



     


</html>

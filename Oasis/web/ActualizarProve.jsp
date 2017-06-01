

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
                    <td><input type="text" value="<%=NomCompProve%>" name="txtNomCompProve"></input></td>  
                </tr>
                <tr>
                    <td>NIT</td>  
                    <td><input type="text" value="<%=NITProve%>" name="txtNITProve"></input></td>  
                </tr>
               
                <tr>
                    <td>Telefono</td>  
                    <td><input type="text" value="<%=TelfProve%>" name="txtTelfProve"></input></td>  
                </tr>
                <tr>
                    <td>Correo</td>  
                    <td><input type="text" value="<%=CorreoProve%>" name="txtCorreoProve"></input></td>  
                </tr>
                <tr>
                    <td>Direccion</td>  
                    <td><input type="text" value="<%=DirecProve%>" name="txtDirecProve"></input></td>  
                </tr>
                 <tr>
                    <td>Nombre Contacto</td>  
                    <td><input type="text" value="<%=NomProve%>" name="txtNomProve"></input></td>  
                </tr>
                <tr>
                    <td>Apellido Contacto</td>  
                    <td><input type="text" value="<%=ApellProve%>" name="txtApellProve"></input></td>  
                </tr>
                <tr>

                    <td><button type="submit"  >Modificar</button></td>  
                </tr>
                 <input type="hidden" value="<%=Parametro%>" name="txtidProve"></input>
                <input type="hidden" value="2" name="txtOpcion"></input>


            </table>
 </center>
        </form>  
   



</body>     
</form


     


</html>

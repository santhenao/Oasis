<%-- 
    Document   : Menu.jsp
    Created on : 1/06/2017, 06:38:49 AM
    Author     : Santiagoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
        <title>Menu</title>
                
        <link href="font-Awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Yantramanav" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contenedor-menu">
            <a href="#" class="btn-menu">Menu<i class="icono fa fa-bars"></i></a>
            
            <ul class="menu">
                <li><a href="Menu.jsp"><i class="icono izquierda fa fa-home" aria-hidden="true"></i>Inicio</a></li> 
                <li ><a href="#"> <i class="icono izquierda fa fa-globe" aria-hidden="true"></i>Municipios<i class="icono derecha fa fa-arrow-down" aria-hidden="true"></i></a>
                    <ul >
                        <li ><a class="sublista" href="AgregarDepMun.jsp">Agregar </a></li>
                        <li ><a class="sublista" href="ListarDepMun.jsp">Listar </a></li>
                    </ul>
                </li> 
                <li ><a href="#"><i class="icono izquierda fa fa-user" aria-hidden="true"></i> Provedor<i class="icono derecha fa fa-arrow-down" aria-hidden="true"></i></a>
                    <ul>
                        <li ><a class="sublista" href="AgregarProve.jsp">Agregar</a></li>
                        <li ><a class="sublista" href="ListarProve.jsp">Listar</a></li>
                        <li ><a class="sublista" href="AgregarEstaPedProve.jsp">Agregar Estado</a></li>
                        <li ><a class="sublista" href="ListarEstaPedProve.jsp">Listar Estados</a></li>
                    </ul>
                    
                </li> 
                <li ><a href="#"><i class="icono izquierda fa fa-cart-arrow-down" aria-hidden="true"></i> Materia Prima<i class="icono derecha fa fa-arrow-down" aria-hidden="true"></i></a>
                    <ul>
                        <li ><a class="sublista" href="AgregarMatePrim.jsp">Agregar </a></li>
                        <li ><a class="sublista" href="#">Listar </a></li>
                    </ul>
                </li> 
                
                
            </ul>
            
            
        </div>
        
        
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>    
        <script src="js/JQuery.js" type="text/javascript"></script>
        
      
    </body>
</html>

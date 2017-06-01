<%-- 
    Document   : index.jsp
    Created on : 18/05/2017, 05:50:44 AM
    Author     : Santiagoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
       request.getRequestDispatcher("Menu.jsp").forward(request, response);
       %>          
    </body>
</html>

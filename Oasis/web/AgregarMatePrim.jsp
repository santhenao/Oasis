

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <body>
        <form action="MatePrim" method="POST">

            <table>

                <tr>
                    <td>Categoria :</td>
                    <td><input type="text" name="txtidCateMatePrim"></td>
                </tr>
                <tr>
                    <td>Nombre :</td>
                    <td> <input type="text" name="txtNomMatePrim"></td>
                </tr>
                <tr>
                      <td> Contenido :</td>
                    <td> <input type="text" name="txtContMatePrim"></td>
                </tr>
                <tr>
                      <td>PrecioUnidad :</td>
                    <td>  <input type="text" name="txtPreciUnidMatePrim"> </td>
                </tr>
                <tr>
                      <td>Ingreso :</td>
                    <td>  <input type="date" name="txtFechIngrMatePrim"> </td>
                </tr>
                <tr>
                      <td> Vencimiento :</td>
                    <td> <input type="date" name="txtFechVencMatePrim"></td>
                </tr>
                <tr>
                      <td>Cantidad :</td>
                    <td>  <input type="text" name="txtCantMatePrim"> </td>
                </tr>
                 <tr>
                       <td></td>
                     <td> <button type="submit">Registrar</button></td>
                </tr>
                  <input type="hidden" value="0" name="txtidMatePrim">
                <input type="hidden" value="1" name="txtOpcion">


            </table>
        </form>    
    </body>
</html>

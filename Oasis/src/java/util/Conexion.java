package util;

import java.sql.*;

/**
 *
 * @author John
 */
public class Conexion {
//1.Declarar Todas las Variables

    public String driver, url, user, password, bd;
    public Connection conexion;

    public Conexion() {
        driver = "com.mysql.jdbc.Driver";
        user = "root";
        password = "";       
        url = "jdbc:mysql://localhost:3306/oasis";

        try {
            Class.forName(driver).newInstance();
            conexion = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion Ok!!!");
        } catch (Exception e) {
            System.out.println("Error al Conectarse" + e);
        }
    }

    public Connection ObtenerConexion() {
        return conexion;
    }

    public Connection CerrarConexion() throws SQLException {
        conexion.close();
        conexion = null;
        return conexion;
    }
    
    public static void main(String[] args) {
        new Conexion();
    }

}

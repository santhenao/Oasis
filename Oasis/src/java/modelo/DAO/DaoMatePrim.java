package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.BEAN.BeanMatePrim;
import util.Conexion;
import util.InterfaceCRUD;

public class DaoMatePrim extends Conexion implements InterfaceCRUD {

    public Connection conn;
    public Statement Puente;
    public ResultSet rs;

    public Boolean listo = false;

    int idMatePrim = 0;
    int idCateMatePrim = 0;
    String NomMatePrim = null;
    String ContMatePrim = null;
    Double PreciUnidMatePrim = 0.0;
    String FechIngrMatePrim = null;
    String FechVencMatePrim = null;
    Double CantMatePrim = null;

    public DaoMatePrim(BeanMatePrim BMatePrim) {

        try {
            conn = this.ObtenerConexion();
            Puente = conn.createStatement();
            idMatePrim = BMatePrim.getIdMatePrim();
            idCateMatePrim = BMatePrim.getIdCateMatePrim();
            NomMatePrim = BMatePrim.getNomMatePrim();
            ContMatePrim = BMatePrim.getContMatePrim();
            PreciUnidMatePrim = BMatePrim.getPreciUnidMatePrim();
            FechIngrMatePrim = BMatePrim.getFechIngrMatePrim();
            FechVencMatePrim = BMatePrim.getFechVencMatePrim();
            CantMatePrim = BMatePrim.getCantMatePrim();

        } catch (Exception e) {
        }

    }

    @Override
    public boolean Agregar() {
        try {
            Puente.executeUpdate("insert into MatePrim (CateMatePrim_idCateMatePrim,NomMatePrim,ContMatePrim,PreciUnidMatePrim,FechIngrMatePrim,FechVencMatePrim,CantMatePrim) values (" + idCateMatePrim + ",'" + NomMatePrim + "','" + ContMatePrim + "'," + PreciUnidMatePrim + ",'" + FechIngrMatePrim + "','" + FechVencMatePrim + "'," + CantMatePrim + ")");
            listo = true;
        } catch (SQLException e) {
        }
        return listo;
    }

    @Override
    public boolean Modificar() {
        try {

        } catch (Exception e) {
        }
        return listo;
    }

    public ArrayList<BeanMatePrim> Listar() {
        ArrayList<BeanMatePrim> ListaMatePrim = new ArrayList<BeanMatePrim>();
        try {
             

            rs = Puente.executeQuery("Select * from MatePrim");

            while (rs.next()) {
                BeanMatePrim BMatePrim = new BeanMatePrim();
                BMatePrim.setIdMatePrim(rs.getInt("idMatePrim"));
                BMatePrim.setIdCateMatePrim(rs.getInt("CateMatePrim_idCateMatePrim"));
                BMatePrim.setNomMatePrim(rs.getString("NomMatePrim"));
                BMatePrim.setContMatePrim(rs.getString("ContMatePrim"));
                BMatePrim.setPreciUnidMatePrim(rs.getDouble("PreciUnidMatePrim"));
                BMatePrim.setFechIngrMatePrim(rs.getString("FechIngrMatePrim"));
                BMatePrim.setFechVencMatePrim(rs.getString("FechVencMatePrim"));
                BMatePrim.setCantMatePrim(rs.getDouble("CantMatePrim"));

                ListaMatePrim.add(BMatePrim);
            }

        } catch (Exception e) {
              System.out.println(e.getMessage());
            Logger.getLogger(DaoProve.class.getName()).log(Level.SEVERE, null, e);
        }

        return ListaMatePrim;
    }

}

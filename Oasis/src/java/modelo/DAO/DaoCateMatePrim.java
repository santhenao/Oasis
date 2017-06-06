package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.BEAN.BeanCateMatePrim;
import util.Conexion;
import util.InterfaceCRUD;

public class DaoCateMatePrim extends Conexion implements InterfaceCRUD {

    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    public int idCateMatePrim = 0;
    public String NomCateMatePrim = "";
    public String DescriCateMatePrim = "";

    public DaoCateMatePrim(BeanCateMatePrim BCateMatePrim) {
        super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            idCateMatePrim = BCateMatePrim.getIdCateMatePrim();
            NomCateMatePrim = BCateMatePrim.getNomCateMatePrim();
            DescriCateMatePrim = BCateMatePrim.getDescriCateMatePrim();
        } catch (Exception e) {
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean Agregar() {//Opcion 1
        try {
            puente.executeUpdate("insert into CateMatePrim(idCateMatePrim,NomCateMatePrim,DescriCateMatePrim) values(" + idCateMatePrim + ",'" + NomCateMatePrim + "','" + DescriCateMatePrim + "')");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean Modificar() {//Opcion 2
        try {
            puente.executeUpdate("update CateMatePrim set NomCateMatePrim= '" + NomCateMatePrim + "' ,DescriCateMatePrim='" + DescriCateMatePrim + "'  where idCateMatePrim =" + idCateMatePrim);
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    public BeanCateMatePrim Consultar(int Parametro) {
        BeanCateMatePrim BCateMatePrim = new BeanCateMatePrim();
        try {
            rs = puente.executeQuery("select * from CateMatePrim where idCateMatePrim=" + Parametro);
            while (rs.next()) {

                BCateMatePrim.setIdCateMatePrim(rs.getInt("idCateMatePrim"));
                BCateMatePrim.setNomCateMatePrim(rs.getString("NomCateMatePrim"));
                BCateMatePrim.setDescriCateMatePrim(rs.getString("DescriCateMatePrim"));

            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }

        return BCateMatePrim;

    }

    public ArrayList<BeanCateMatePrim> lista() {
        ArrayList<BeanCateMatePrim> ListaCateMatePrim = new ArrayList<BeanCateMatePrim>();
        try {
            rs = puente.executeQuery("select * from CateMatePrim ");
            while (rs.next()) {
                BeanCateMatePrim BCateMatePrim = new BeanCateMatePrim();
                BCateMatePrim.setIdCateMatePrim(rs.getInt("idCateMatePrim"));
                BCateMatePrim.setNomCateMatePrim(rs.getString("NomCateMatePrim"));
                BCateMatePrim.setDescriCateMatePrim(rs.getString("DescriCateMatePrim"));
                ListaCateMatePrim.add(BCateMatePrim);

            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }

        return ListaCateMatePrim;

    }

}

package modelo.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.BEAN.BeanDepMun;
import util.Conexion;
import util.InterfaceCRUD;

/**
 *
 * @author John
 */
public class DaoDepMun extends Conexion implements InterfaceCRUD {

    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    public int idDepMun = 0;
    public String NomDep = "";
    public String NomMun = "";
    
 

    public DaoDepMun(BeanDepMun BDepMun) {
        super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            idDepMun = BDepMun.getIdDepMun();
            NomDep = BDepMun.getNomDep();
            NomMun = BDepMun.getNomMun();
        } catch (Exception e) {
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean Agregar() {//Opcion 1
        try {
            puente.executeUpdate("insert into DepMun(idDepMun,NomDep,NomMun) values('" + idDepMun + "','" + NomDep + "','"+NomMun+"')");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean Modificar() {//Opcion 2
        try {
            puente.executeUpdate("update DepMun set NomDep= '"+NomDep+"' ,NomMun='"+NomMun+"'  where idDepMun ="+idDepMun );
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

  
    
    
    public BeanDepMun  Consultar(int Parametro){
          BeanDepMun BDepMun = new BeanDepMun();
        try {
             rs =puente.executeQuery("select * from DepMun where idDepMun="+Parametro);
             while(rs.next()){
               
                 BDepMun.setIdDepMun(rs.getInt("idDepMun"));
                  BDepMun.setNomDep(rs.getString("NomDep"));
                   BDepMun.setNomMun(rs.getString("NomMun"));
                
           
             }
        } catch (Exception e) {
            System.out.println(e.getMessage());
             Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }    
        
        
        return BDepMun;
        
    }
    
    
     public ArrayList<BeanDepMun> lista(){
         ArrayList<BeanDepMun> ListaDepMun =  new ArrayList<BeanDepMun>();
        try {
             rs =puente.executeQuery("select * from DepMun ");
             while(rs.next()){
                BeanDepMun BDepMun = new BeanDepMun();
                 BDepMun.setIdDepMun(rs.getInt("idDepMun"));
                  BDepMun.setNomDep(rs.getString("NomDep"));
                   BDepMun.setNomMun(rs.getString("NomMun"));
               ListaDepMun.add(BDepMun);
           
             }
        } catch (Exception e) {
            System.out.println(e.getMessage());
             Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }    
        
        
        return ListaDepMun;
        
    }
    
    
    
    
}





package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.BEAN.BeanDepMun;
import modelo.BEAN.BeanEstaPedProve;
import util.Conexion;
import util.InterfaceCRUD;


public class DaoEstaPedProve extends Conexion implements InterfaceCRUD{
    
     private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    public int idEstaPedProve = 0;
    public String NomEstaPedProve = "";
    
    public DaoEstaPedProve(BeanEstaPedProve BEstaPedProve){
    super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            idEstaPedProve = BEstaPedProve.getIdEstaPedProve();
            NomEstaPedProve = BEstaPedProve.getNomEstaPedProve();
           
        } catch (Exception e) {
            Logger.getLogger(DaoEstaPedProve.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean Agregar() {
        try {
              puente.executeUpdate("insert into EstaPedProve(idEstaPedProve,NomEstaPedProve) values(null,'" + NomEstaPedProve+"')");
            listo = true;
        } catch (Exception e) {
              Logger.getLogger(DaoEstaPedProve.class.getName()).log(Level.SEVERE, null, e);
        }
          return listo;
    }

    @Override
    public boolean Modificar() {
        try {
          
             puente.executeUpdate("update EstaPedProve set NomEstaPedProve ='"+NomEstaPedProve+"' where idEstaPedProve =" + idEstaPedProve );
            listo = true;
        } catch (Exception e) {
              Logger.getLogger(DaoEstaPedProve.class.getName()).log(Level.SEVERE, null, e);
        }
          return listo;
    }


     public BeanEstaPedProve Consultar(int Parametro){
          BeanEstaPedProve BEstaPedProve = new BeanEstaPedProve();
        try {
             rs =puente.executeQuery("select * from estapedprove where idEstaPedProve="+Parametro);
             while(rs.next()){
               
                 BEstaPedProve.setIdEstaPedProve(rs.getInt("idEstaPedProve"));
                  BEstaPedProve.setNomEstaPedProve(rs.getString("NomEstaPedProve"));
                   
                
           
             }
        } catch (Exception e) {
            System.out.println(e.getMessage());
             Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }    
        
        
        return BEstaPedProve;
        
    }
     
     
       public ArrayList<BeanEstaPedProve> lista(){
         ArrayList<BeanEstaPedProve> ListaEstaPedProve =  new ArrayList<BeanEstaPedProve>();
        try {
                rs =puente.executeQuery("select * from EstaPedProve ");
             while(rs.next()){
                BeanEstaPedProve BEstaPedProve = new BeanEstaPedProve();
                 BEstaPedProve.setIdEstaPedProve(rs.getInt("idEstaPedProve"));
                  BEstaPedProve.setNomEstaPedProve(rs.getString("NomEstaPedProve"));
             
               ListaEstaPedProve.add(BEstaPedProve);
           
             }
        } catch (Exception e) {
            System.out.println(e.getMessage());
             Logger.getLogger(DaoDepMun.class.getName()).log(Level.SEVERE, null, e);
        }    
        
        
        return ListaEstaPedProve;
        
    } 
     
    
    
    
}
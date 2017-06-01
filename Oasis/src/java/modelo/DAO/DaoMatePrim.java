
package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import modelo.BEAN.BeanMatePrim;
import util.Conexion;
import util.InterfaceCRUD;


public class DaoMatePrim extends Conexion implements InterfaceCRUD{

public Connection conn;
public Statement Puente;
public ResultSet rs;

public Boolean listo=false;


int idMatePrim=0;
int idCateMatePrim=0;
String NomMatePrim=null;
String ContMatePrim=null;
Double PreciUnidMatePrim=0.0;
String FechIngrMatePrim=null;
String FechVencMatePrim=null;
Double CantMatePrim=null;
    
    
public DaoMatePrim (BeanMatePrim BMatePrim){
  
    try {
            conn=this.ObtenerConexion();
            Puente = conn.createStatement();
            idMatePrim=BMatePrim.getIdMatePrim();
            idCateMatePrim=BMatePrim.getIdCateMatePrim();
            NomMatePrim=BMatePrim.getNomMatePrim();
            ContMatePrim=BMatePrim.getContMatePrim();
            PreciUnidMatePrim=BMatePrim.getPreciUnidMatePrim();
            FechIngrMatePrim=BMatePrim.getFechIngrMatePrim();
            FechVencMatePrim=BMatePrim.getFechVencMatePrim();
            CantMatePrim=BMatePrim.getCantMatePrim();
        
    } catch (Exception e) {
    }
    
}    
    
    
    @Override
    public boolean Agregar() {
        try {
            Puente.executeUpdate("insert into MatePrim (CateMatePrim_idCateMatePrim,NomMatePrim,ContMatePrim,PreciUnidMatePrim,FechIngrMatePrim,FechVencMatePrim,CantMatePrim) values ("+idCateMatePrim+",'"+NomMatePrim+"','"+ContMatePrim+"',"+PreciUnidMatePrim+",'"+FechIngrMatePrim+"','"+FechVencMatePrim+"',"+CantMatePrim+")");
            listo=true;
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
    
}

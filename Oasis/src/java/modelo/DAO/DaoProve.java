/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.BEAN.BeanDepMun;
import modelo.BEAN.BeanEstaPedProve;
import modelo.BEAN.BeanProve;
import util.Conexion;
import util.InterfaceCRUD;

/**
 *
 * @author Santiagoth
 */
public class DaoProve extends Conexion implements InterfaceCRUD {
    
    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    
    public boolean encontrado = false;
    public boolean listo = false;
    
    public int idProve = 0;
    public int idDepMun = 0;
    public String NomCompProve = "";
    public Double NITProve = 0.0;
    public String NomProve = "";
    public String ApellProve = "";
    public Double TelfProve = 0.0;
    public String CorreoProve = "";
    public String DirecProve = "";
    
    public DaoProve(BeanProve BProve) {
        super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();
            
            idProve = BProve.getIdProve();
            idDepMun = BProve.getDepMun();
            NomCompProve = BProve.getNomCompProve();
            NITProve = BProve.getNITProve();
            NomProve = BProve.getNomProve();
            ApellProve = BProve.getApellProve();
            TelfProve = BProve.getTelfProve();
            CorreoProve = BProve.getCorreoProve();
            DirecProve = BProve.getDirecProve();
            
        } catch (Exception e) {
            Logger.getLogger(DaoEstaPedProve.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    @Override
    public boolean Agregar() {
        try {
            puente.executeUpdate("INSERT INTO prove (DepMun_idDepMun, NomCompProve, NITProve, NomProve, ApellProve, TelfProve, CorreoProve, DirecProve) VALUES (" + idDepMun + ", '" + NomCompProve + "'," + NITProve + ",'" + NomProve + "','" + ApellProve + "'," + TelfProve + ", '" + CorreoProve + "','" + DirecProve + "')");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoProve.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
    
    @Override
    public boolean Modificar() {
        try {
            puente.executeUpdate("update Prove set DepMun_idDepMun ="+idDepMun+",NomCompProve='"+NomCompProve+"',NITProve="+NITProve+",NomProve='"+NomProve+"',ApellProve='"+ApellProve+"',TelfProve="+TelfProve+",CorreoProve='"+CorreoProve+"',DirecProve='"+DirecProve+"' where idProve ="+idProve);
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoProve.class.getName()).log(Level.SEVERE, null, e);
        }
        
        return listo;
    }
    
    public BeanProve Consultar(int Parametro) {
        BeanProve BProve = new BeanProve();
        try {
            rs = puente.executeQuery("select * from Prove where idProve="+ Parametro);
            while (rs.next()) {
                
                BProve.setIdProve(rs.getInt("idProve"));
                BProve.setDepMun(rs.getInt("DepMun_idDepMun"));
                BProve.setNomCompProve(rs.getString("NomCompProve"));
                BProve.setNITProve(rs.getDouble("NITProve"));
                BProve.setNomProve(rs.getString("NomProve"));
                BProve.setApellProve(rs.getString("ApellProve"));
                BProve.setTelfProve(rs.getDouble("TelfProve"));
                BProve.setCorreoProve(rs.getString("CorreoProve"));
                BProve.setDirecProve(rs.getString("DirecProve"));
                
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Logger.getLogger(DaoProve.class.getName()).log(Level.SEVERE, null, e);
        }        
        
        return BProve;
        
    }
    

    
    public ArrayList<BeanProve> Lista() {
     ArrayList<BeanProve> ListaProve = new ArrayList<>();
        try {
            rs = puente.executeQuery("select * from Prove ");
            while (rs.next()) {
                   BeanProve BProve = new BeanProve();
                BProve.setIdProve(rs.getInt("idProve"));
                BProve.setDepMun(rs.getInt("DepMun_idDepMun"));
                BProve.setNomCompProve(rs.getString("NomCompProve"));
                BProve.setNITProve(rs.getDouble("NITProve"));
                BProve.setNomProve(rs.getString("NomProve"));
                BProve.setApellProve(rs.getString("ApellProve"));
                BProve.setTelfProve(rs.getDouble("TelfProve"));
                BProve.setCorreoProve(rs.getString("CorreoProve"));
                BProve.setDirecProve(rs.getString("DirecProve"));
                ListaProve.add(BProve);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Logger.getLogger(DaoProve.class.getName()).log(Level.SEVERE, null, e);
        }        
        
        return ListaProve;
        
    }
    
    
    
}

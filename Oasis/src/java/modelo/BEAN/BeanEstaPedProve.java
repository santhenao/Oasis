
package modelo.BEAN;


public class BeanEstaPedProve {
    public int idEstaPedProve;
    public String NomEstaPedProve;
    
    
    public BeanEstaPedProve(int idEstaPedProve, String NomEstaPedProve) {
        this.idEstaPedProve = idEstaPedProve;
        this.NomEstaPedProve = NomEstaPedProve;
    }   
        public BeanEstaPedProve() {
  
    }   
    
    
    public int getIdEstaPedProve() {
        return idEstaPedProve;
    }

    public void setIdEstaPedProve(int idEstaPedProve) {
        this.idEstaPedProve = idEstaPedProve;
    }

    public String getNomEstaPedProve() {
        return NomEstaPedProve;
    }

    public void setNomEstaPedProve(String NomEstaPedProve) {
        this.NomEstaPedProve = NomEstaPedProve;
    }
    
}


package modelo.BEAN;

public class BeanEstaPedProd {
    
    
    public int idEstaPedProd;
    public String NomEstaPedProd;

    public BeanEstaPedProd(int idEstaPedProd, String NomEstaPedProd) {
        this.idEstaPedProd = idEstaPedProd;
        this.NomEstaPedProd = NomEstaPedProd;
    }
      public BeanEstaPedProd() {
    
    }

    public int getIdEstaPedProd() {
        return idEstaPedProd;
    }

    public void setIdEstaPedProd(int idEstaPedProd) {
        this.idEstaPedProd = idEstaPedProd;
    }

    public String getNomEstaPedProd() {
        return NomEstaPedProd;
    }

    public void setNomEstaPedProd(String NomEstaPedProd) {
        this.NomEstaPedProd = NomEstaPedProd;
    }
    
}

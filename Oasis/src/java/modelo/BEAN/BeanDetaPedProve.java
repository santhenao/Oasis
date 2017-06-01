
package modelo.BEAN;


public class BeanDetaPedProve {

    
    
    public int idPedProve;
    public int idMatePrim;
    public Double CantDetaPedProve;
    public Double PreciUnidDetalPedProve;

    public BeanDetaPedProve(int idPedProve, int idMateriaPrima, Double CantDetaPedProve, Double PreciUnidDetalPedProve) {
        this.idPedProve = idPedProve;
        this.idMatePrim = idMateriaPrima;
        this.CantDetaPedProve = CantDetaPedProve;
        this.PreciUnidDetalPedProve = PreciUnidDetalPedProve;
    }
      public BeanDetaPedProve() {
        
      } 
   

    public int getIdPedProve() {
        return idPedProve;
    }

    public void setIdPedProve(int idPedProve) {
        this.idPedProve = idPedProve;
    }

    public int getIdMateriaPrima() {
        return idMatePrim;
    }

    public void setIdMateriaPrima(int idMateriaPrima) {
        this.idMatePrim = idMateriaPrima;
    }

    public Double getCantDetaPedProve() {
        return CantDetaPedProve;
    }

    public void setCantDetaPedProve(Double CantDetaPedProve) {
        this.CantDetaPedProve = CantDetaPedProve;
    }

    public Double getPreciUnidDetalPedProve() {
        return PreciUnidDetalPedProve;
    }

    public void setPreciUnidDetalPedProve(Double PreciUnidDetalPedProve) {
        this.PreciUnidDetalPedProve = PreciUnidDetalPedProve;
    }
    
    
    
    
}

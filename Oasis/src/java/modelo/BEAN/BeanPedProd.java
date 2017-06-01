
package modelo.BEAN;


public class BeanPedProd {
    
    public int idPedProd;
    public int idEstaPedProd;
    public int idUsu;
    public String FechPedProd;
    public String FechEntrePedProd;

    public BeanPedProd(int idPedProd, int idEstaPedProd, int idUsu, String FechPedProd, String FechEntrePedProd) {
        this.idPedProd = idPedProd;
        this.idEstaPedProd = idEstaPedProd;
        this.idUsu = idUsu;
        this.FechPedProd = FechPedProd;
        this.FechEntrePedProd = FechEntrePedProd;
    }

    public int getIdPedProd() {
        return idPedProd;
    }

    public void setIdPedProd(int idPedProd) {
        this.idPedProd = idPedProd;
    }

    public int getIdEstaPedProd() {
        return idEstaPedProd;
    }

    public void setIdEstaPedProd(int idEstaPedProd) {
        this.idEstaPedProd = idEstaPedProd;
    }

    public int getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(int idUsu) {
        this.idUsu = idUsu;
    }

    public String getFechPedProd() {
        return FechPedProd;
    }

    public void setFechPedProd(String FechPedProd) {
        this.FechPedProd = FechPedProd;
    }

    public String getFechEntrePedProd() {
        return FechEntrePedProd;
    }

    public void setFechEntrePedProd(String FechEntrePedProd) {
        this.FechEntrePedProd = FechEntrePedProd;
    }
    
    
}


package modelo.BEAN;


public class BeanNovePedProd {
    
    public int idNovPedProd;
    public int idPedProd;
    public String DescriNovPedProd;
    public String FechNovPedProd;

    public BeanNovePedProd(int idNovPedProd, int idPedProd, String DescriNovPedProd, String FechNovPedProd) {
        this.idNovPedProd = idNovPedProd;
        this.idPedProd = idPedProd;
        this.DescriNovPedProd = DescriNovPedProd;
        this.FechNovPedProd = FechNovPedProd;
    }

    public int getIdNovPedProd() {
        return idNovPedProd;
    }

    public void setIdNovPedProd(int idNovPedProd) {
        this.idNovPedProd = idNovPedProd;
    }

    public int getIdPedProd() {
        return idPedProd;
    }

    public void setIdPedProd(int idPedProd) {
        this.idPedProd = idPedProd;
    }

    public String getDescriNovPedProd() {
        return DescriNovPedProd;
    }

    public void setDescriNovPedProd(String DescriNovPedProd) {
        this.DescriNovPedProd = DescriNovPedProd;
    }

    public String getFechNovPedProd() {
        return FechNovPedProd;
    }

    public void setFechNovPedProd(String FechNovPedProd) {
        this.FechNovPedProd = FechNovPedProd;
    }
    
    
}

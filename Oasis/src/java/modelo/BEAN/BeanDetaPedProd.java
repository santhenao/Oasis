
package modelo.BEAN;


public class BeanDetaPedProd {
   
    public int idPedProd;
    public int idProduct;
    public double PreciUnidDetaPedProd;
    public double CantDetaPedProd;

    public BeanDetaPedProd(int idPedProd, int idProduct, double PreciUnidDetaPedProd, double CantDetaPedProd) {
        this.idPedProd = idPedProd;
        this.idProduct = idProduct;
        this.PreciUnidDetaPedProd = PreciUnidDetaPedProd;
        this.CantDetaPedProd = CantDetaPedProd;
    }

    public int getIdPedProd() {
        return idPedProd;
    }

    public void setIdPedProd(int idPedProd) {
        this.idPedProd = idPedProd;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public double getPreciUnidDetaPedProd() {
        return PreciUnidDetaPedProd;
    }

    public void setPreciUnidDetaPedProd(double PreciUnidDetaPedProd) {
        this.PreciUnidDetaPedProd = PreciUnidDetaPedProd;
    }

    public double getCantDetaPedProd() {
        return CantDetaPedProd;
    }

    public void setCantDetaPedProd(double CantDetaPedProd) {
        this.CantDetaPedProd = CantDetaPedProd;
    }
}


package modelo.BEAN;


public class BeanProduct {
    
       public int idProduct;
    public String NomProduct;
    public String PresentProduct;
    public String ContProduct;
    public Double PreciUndProduct;
    public String FechVenciProduct;
    public String FechExpedProduct;
    public Double NumeLoteProduct;
    public Double CantExistProduct;

    public BeanProduct(int idProduct, String NomProduct, String PresentProduct, String ContProduct, Double PreciUndProduct, String FechVenciProduct, String FechExpedProduct, Double NumeLoteProduct, Double CantExistProduct) {
        this.idProduct = idProduct;
        this.NomProduct = NomProduct;
        this.PresentProduct = PresentProduct;
        this.ContProduct = ContProduct;
        this.PreciUndProduct = PreciUndProduct;
        this.FechVenciProduct = FechVenciProduct;
        this.FechExpedProduct = FechExpedProduct;
        this.NumeLoteProduct = NumeLoteProduct;
        this.CantExistProduct = CantExistProduct;
    }
    
    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNomProduct() {
        return NomProduct;
    }

    public void setNomProduct(String NomProduct) {
        this.NomProduct = NomProduct;
    }

    public String getPresentProduct() {
        return PresentProduct;
    }

    public void setPresentProduct(String PresentProduct) {
        this.PresentProduct = PresentProduct;
    }

    public String getContProduct() {
        return ContProduct;
    }

    public void setContProduct(String ContProduct) {
        this.ContProduct = ContProduct;
    }

    public Double getPreciUndProduct() {
        return PreciUndProduct;
    }

    public void setPreciUndProduct(Double PreciUndProduct) {
        this.PreciUndProduct = PreciUndProduct;
    }

    public String getFechVenciProduct() {
        return FechVenciProduct;
    }

    public void setFechVenciProduct(String FechVenciProduct) {
        this.FechVenciProduct = FechVenciProduct;
    }

    public String getFechExpedProduct() {
        return FechExpedProduct;
    }

    public void setFechExpedProduct(String FechExpedProduct) {
        this.FechExpedProduct = FechExpedProduct;
    }

    public Double getNumeLoteProduct() {
        return NumeLoteProduct;
    }

    public void setNumeLoteProduct(Double NumeLoteProduct) {
        this.NumeLoteProduct = NumeLoteProduct;
    }

    public Double getCantExistProduct() {
        return CantExistProduct;
    }

    public void setCantExistProduct(Double CantExistProduct) {
        this.CantExistProduct = CantExistProduct;
    }
 
    
}

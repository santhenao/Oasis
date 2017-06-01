/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.BEAN;

/**
 *
 * @author Santiagoth
 */
public class BeanAsigProduct {

    
     public int idMatePrim;
    public int idProduct;
    public Double CantAsigProduct;
    public Double PreciAsigProduct;
    
    public BeanAsigProduct(int idMatePrim, int idProduct, Double CantAsigProduct, Double PreciAsigProduct) {
        this.idMatePrim = idMatePrim;
        this.idProduct = idProduct;
        this.CantAsigProduct = CantAsigProduct;
        this.PreciAsigProduct = PreciAsigProduct;
    }

   

    public int getIdMatePrim() {
        return idMatePrim;
    }

    public void setIdMatePrim(int idMatePrim) {
        this.idMatePrim = idMatePrim;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public Double getCantAsigProduct() {
        return CantAsigProduct;
    }

    public void setCantAsigProduct(Double CantAsigProduct) {
        this.CantAsigProduct = CantAsigProduct;
    }

    public Double getPreciAsigProduct() {
        return PreciAsigProduct;
    }

    public void setPreciAsigProduct(Double PreciAsigProduct) {
        this.PreciAsigProduct = PreciAsigProduct;
    }

}

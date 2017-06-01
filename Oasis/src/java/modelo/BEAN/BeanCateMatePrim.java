package modelo.BEAN;

public class BeanCateMatePrim {

    

    public int idCateMatePrim;
    public String NomCateMatePrim;
    public String DescriCateMatePrim;
    
    
    public BeanCateMatePrim(int idCateMatePrim, String NomCateMatePrim, String DescriCateMatePrim) {
        this.idCateMatePrim = idCateMatePrim;
        this.NomCateMatePrim = NomCateMatePrim;
        this.DescriCateMatePrim = DescriCateMatePrim;
    }
    

    public int getIdCateMatePrim() {
        return idCateMatePrim;
    }

    public void setIdCateMatePrim(int idCateMatePrim) {
        this.idCateMatePrim = idCateMatePrim;
    }

    public String getNomCateMatePrim() {
        return NomCateMatePrim;
    }

    public void setNomCateMatePrim(String NomCateMatePrim) {
        this.NomCateMatePrim = NomCateMatePrim;
    }

    public String getDescriCateMatePrim() {
        return DescriCateMatePrim;
    }

    public void setDescriCateMatePrim(String DescriCateMatePrim) {
        this.DescriCateMatePrim = DescriCateMatePrim;
    }

}

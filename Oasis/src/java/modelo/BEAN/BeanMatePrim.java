
package modelo.BEAN;


public class BeanMatePrim {
    
    public int idMatePrim;
    public int idCateMatePrim;
    public String NomMatePrim;
    public String ContMatePrim;
    public Double PreciUnidMatePrim;
    public String FechIngrMatePrim;
    public String FechVencMatePrim;
    public Double CantMatePrim;

    public BeanMatePrim(int idMatePrim, int idCateMatePrim, String NomMatePrim, String ContMatePrim, Double PreciUnidMatePrim, String FechIngrMatePrim, String FechVencMatePrim, Double CantMatePrim) {
        this.idMatePrim = idMatePrim;
        this.idCateMatePrim = idCateMatePrim;
        this.NomMatePrim = NomMatePrim;
        this.ContMatePrim = ContMatePrim;
        this.PreciUnidMatePrim = PreciUnidMatePrim;
        this.FechIngrMatePrim = FechIngrMatePrim;
        this.FechVencMatePrim = FechVencMatePrim;
        this.CantMatePrim = CantMatePrim;
    }
    
    public BeanMatePrim(){
    
    }

    public int getIdMatePrim() {
        return idMatePrim;
    }

    public void setIdMatePrim(int idMatePrim) {
        this.idMatePrim = idMatePrim;
    }

    public int getIdCateMatePrim() {
        return idCateMatePrim;
    }

    public void setIdCateMatePrim(int idCateMatePrim) {
        this.idCateMatePrim = idCateMatePrim;
    }

    public String getNomMatePrim() {
        return NomMatePrim;
    }

    public void setNomMatePrim(String NomMatePrim) {
        this.NomMatePrim = NomMatePrim;
    }

    public String getContMatePrim() {
        return ContMatePrim;
    }

    public void setContMatePrim(String ContMatePrim) {
        this.ContMatePrim = ContMatePrim;
    }

    public Double getPreciUnidMatePrim() {
        return PreciUnidMatePrim;
    }

    public void setPreciUnidMatePrim(Double PreciUnidMatePrim) {
        this.PreciUnidMatePrim = PreciUnidMatePrim;
    }

    public String getFechIngrMatePrim() {
        return FechIngrMatePrim;
    }

    public void setFechIngrMatePrim(String FechIngrMatePrim) {
        this.FechIngrMatePrim = FechIngrMatePrim;
    }

    public String getFechVencMatePrim() {
        return FechVencMatePrim;
    }

    public void setFechVencMatePrim(String FechVencMatePrim) {
        this.FechVencMatePrim = FechVencMatePrim;
    }

    public Double getCantMatePrim() {
        return CantMatePrim;
    }

    public void setCantMatePrim(Double CantMatePrim) {
        this.CantMatePrim = CantMatePrim;
    }
    
}

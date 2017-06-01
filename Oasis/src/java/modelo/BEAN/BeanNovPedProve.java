
package modelo.BEAN;


public class BeanNovPedProve {
    
    public int idNovPedProve;
    public int idPedProve;
    public String FechNovPedProve;
    public String DescriNovPedProve;

    public BeanNovPedProve(int idNovPedProve, int idPedProve, String FechNovPedProve, String DescriNovPedProve) {
        this.idNovPedProve = idNovPedProve;
        this.idPedProve = idPedProve;
        this.FechNovPedProve = FechNovPedProve;
        this.DescriNovPedProve = DescriNovPedProve;
    }

    public int getIdNovPedProve() {
        return idNovPedProve;
    }

    public void setIdNovPedProve(int idNovPedProve) {
        this.idNovPedProve = idNovPedProve;
    }

    public int getIdPedProve() {
        return idPedProve;
    }

    public void setIdPedProve(int idPedProve) {
        this.idPedProve = idPedProve;
    }

    public String getFechNovPedProve() {
        return FechNovPedProve;
    }

    public void setFechNovPedProve(String FechNovPedProve) {
        this.FechNovPedProve = FechNovPedProve;
    }

    public String getDescriNovPedProve() {
        return DescriNovPedProve;
    }

    public void setDescriNovPedProve(String DescriNovPedProve) {
        this.DescriNovPedProve = DescriNovPedProve;
    }
    
}

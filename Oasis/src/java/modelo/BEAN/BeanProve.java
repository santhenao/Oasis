
package modelo.BEAN;

public class BeanProve {

   

    

    private int idProve;
    private int DepMun;
    private String NomCompProve;
    private Double NITProve;
    private String NomProve;
    private String ApellProve;
    private Double TelfProve;
    private String CorreoProve;
    private String DirecProve;

    public BeanProve(int idProve, int DepMun, String NomCompProve, Double NITProve, String NomProve, String ApellProve, Double TelfProve, String CorreoProve, String DirecProve) {
        this.idProve = idProve;
        this.DepMun = DepMun;
        this.NomCompProve = NomCompProve;
        this.NITProve = NITProve;
        this.NomProve = NomProve;
        this.ApellProve = ApellProve;
        this.TelfProve = TelfProve;
        this.CorreoProve = CorreoProve;
        this.DirecProve = DirecProve;
    }

    public BeanProve() {
        
    }

    public int getIdProve() {
        return idProve;
    }

    public void setIdProve(int idProve) {
        this.idProve = idProve;
    }

    public int getDepMun() {
        return DepMun;
    }

    public void setDepMun(int DepMun) {
        this.DepMun = DepMun;
    }

    public String getNomCompProve() {
        return NomCompProve;
    }

    public void setNomCompProve(String NomCompProve) {
        this.NomCompProve = NomCompProve;
    }

    public Double getNITProve() {
        return NITProve;
    }

    public void setNITProve(Double NITProve) {
        this.NITProve = NITProve;
    }

    public String getNomProve() {
        return NomProve;
    }

    public void setNomProve(String NomProve) {
        this.NomProve = NomProve;
    }

    public String getApellProve() {
        return ApellProve;
    }

    public void setApellProve(String ApellProve) {
        this.ApellProve = ApellProve;
    }

    public Double getTelfProve() {
        return TelfProve;
    }

    public void setTelfProve(Double TelfProve) {
        this.TelfProve = TelfProve;
    }

    public String getCorreoProve() {
        return CorreoProve;
    }

    public void setCorreoProve(String CorreoProve) {
        this.CorreoProve = CorreoProve;
    }

    public String getDirecProve() {
        return DirecProve;
    }

    public void setDirecProve(String DirecProve) {
        this.DirecProve = DirecProve;
    }
    
    

   

}


package modelo.BEAN;

public class BeanRol {
    
    public int idRol;
    public String NomRol;

    public BeanRol(int idRol, String NomRol) {
        this.idRol = idRol;
        this.NomRol = NomRol;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getNomRol() {
        return NomRol;
    }

    public void setNomRol(String NomRol) {
        this.NomRol = NomRol;
    }
    
}

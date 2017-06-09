
package modelo.BEAN;


public class BeanUsu {
  
    public int idUsu;
    public int idDepMun;
    public int idRol;
    public String Usu;
    public String Contraseña;
    public String NomUsu;
    public String ApellUsu;
    public String DocuUsu;
    public String TipoDocuUsu;
    public String FechContraUsu;
    public String FechNacimUsu;
    public String CorreoUsu;

    public BeanUsu(int idUsu, int idDepMun, int idRol, String Usu, String Contraseña, String NomUsu, String ApellUsu, String DocuUsu, String TipoDocuUsu, String FechContraUsu, String FechNacimUsu, String CorreoUsu) {
        this.idUsu = idUsu;
        this.idDepMun = idDepMun;
        this.idRol = idRol;
        this.Usu = Usu;
        this.Contraseña = Contraseña;
        this.NomUsu = NomUsu;
        this.ApellUsu = ApellUsu;
        this.DocuUsu = DocuUsu;
        this.TipoDocuUsu = TipoDocuUsu;
        this.FechContraUsu = FechContraUsu;
        this.FechNacimUsu = FechNacimUsu;
        this.CorreoUsu = CorreoUsu;
    }
     public BeanUsu( String Usu, String Contraseña) {
  
      
        this.Usu = Usu;
        this.Contraseña = Contraseña;

    
    }

    public int getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(int idUsu) {
        this.idUsu = idUsu;
    }

    public int getIdDepMun() {
        return idDepMun;
    }

    public void setIdDepMun(int idDepMun) {
        this.idDepMun = idDepMun;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getUsu() {
        return Usu;
    }

    public void setUsu(String Usu) {
        this.Usu = Usu;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public String getNomUsu() {
        return NomUsu;
    }

    public void setNomUsu(String NomUsu) {
        this.NomUsu = NomUsu;
    }

    public String getApellUsu() {
        return ApellUsu;
    }

    public void setApellUsu(String ApellUsu) {
        this.ApellUsu = ApellUsu;
    }

    public String getDocuUsu() {
        return DocuUsu;
    }

    public void setDocuUsu(String DocuUsu) {
        this.DocuUsu = DocuUsu;
    }

    public String getTipoDocuUsu() {
        return TipoDocuUsu;
    }

    public void setTipoDocuUsu(String TipoDocuUsu) {
        this.TipoDocuUsu = TipoDocuUsu;
    }

    public String getFechContraUsu() {
        return FechContraUsu;
    }

    public void setFechContraUsu(String FechContraUsu) {
        this.FechContraUsu = FechContraUsu;
    }

    public String getFechNacimUsu() {
        return FechNacimUsu;
    }

    public void setFechNacimUsu(String FechNacimUsu) {
        this.FechNacimUsu = FechNacimUsu;
    }

    public String getCorreoUsu() {
        return CorreoUsu;
    }

    public void setCorreoUsu(String CorreoUsu) {
        this.CorreoUsu = CorreoUsu;
    }
    
}

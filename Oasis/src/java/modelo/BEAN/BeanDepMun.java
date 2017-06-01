
package modelo.BEAN;

    
public class BeanDepMun {
   
   
    private int IdDepMun;                                            //VARIABLES
    private String NomDep;                                              
    private String NomMun;
    
    
    public BeanDepMun(int PidDepMun,String PNomDep,String PNomMun){  // METODO CONSTRUCTOR
    this.IdDepMun=PidDepMun;
    this.NomDep=PNomDep;
    this.NomMun=PNomMun;
    }

    public BeanDepMun() {

    }
    
    public int getIdDepMun() {              //ENCAPSULAMIENTO
            return IdDepMun;
        }
    
    public void setIdDepMun(int IdDepMun) {
        this.IdDepMun = IdDepMun;
    }
    
    public String getNomDep() {        
        return NomDep;
    }
    public void setNomDep(String NomDep) {
        this.NomDep = NomDep;
    }
    public String getNomMun() {
        return NomMun;
    }
    
    public void setNomMun(String NomMun) {
        this.NomMun = NomMun;
    }
   
}

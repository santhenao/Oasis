package modelo.BEAN;

public class BeanPedProve {

    public int idPedProve;
    public int  idEstaPedProve;
    public int  idUsuario;
    public int  idProveedor;
    public String FechPedProve;
    public String FechEntrePedProve;

    public BeanPedProve(int idPedProve, int idEstaPedProve, int idUsuario, int idProveedor, String FechPedProve, String FechEntrePedProve) {
        this.idPedProve = idPedProve;
        this.idEstaPedProve = idEstaPedProve;
        this.idUsuario = idUsuario;
        this.idProveedor = idProveedor;
        this.FechPedProve = FechPedProve;
        this.FechEntrePedProve = FechEntrePedProve;
    }

    public int getIdPedProve() {
        return idPedProve;
    }

    public void setIdPedProve(int idPedProve) {
        this.idPedProve = idPedProve;
    }

    public int getIdEstaPedProve() {
        return idEstaPedProve;
    }

    public void setIdEstaPedProve(int idEstaPedProve) {
        this.idEstaPedProve = idEstaPedProve;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public String getFechPedProve() {
        return FechPedProve;
    }

    public void setFechPedProve(String FechPedProve) {
        this.FechPedProve = FechPedProve;
    }

    public String getFechEntrePedProve() {
        return FechEntrePedProve;
    }

    public void setFechEntrePedProve(String FechEntrePedProve) {
        this.FechEntrePedProve = FechEntrePedProve;
    }
                            
                            
    
}

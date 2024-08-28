package logica;

import java.util.List;
import percistencia.ControladoraPeersistencia;

public class Controladora {
    ControladoraPeersistencia controladoraPersi = new ControladoraPeersistencia();
    
    public void crearUsuario(Usuario usuario){
        controladoraPersi.crearUsuario(usuario);
    }
    
    public List<Usuario> traerUsuario(){
        return controladoraPersi.traerUsuario();
    }

    public void borrarUsuario(int idUsuario) {
        controladoraPersi.borrarUsuario(idUsuario);
    }

    public Usuario buscarUsuarioId(int idUsuario) {
        return controladoraPersi.buscarUsuarioId(idUsuario);
    }

    public void modificarUsuario(Usuario usu) {
        controladoraPersi.modificarUsuario(usu);
    }
}

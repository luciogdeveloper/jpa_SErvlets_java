package percistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import percistencia.exceptions.NonexistentEntityException;

public class ControladoraPeersistencia {
    
    UsuarioJpaController usuJPA = new UsuarioJpaController();
    
    public void crearUsuario(Usuario usuario){
        usuJPA.create(usuario);
    }
    
    public List<Usuario> traerUsuario(){
        return usuJPA.findUsuarioEntities();
    }

    public void borrarUsuario(int idUsuario) {
        try {
            usuJPA.destroy(idUsuario);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPeersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario buscarUsuarioId(int idUsuario) {
        return usuJPA.findUsuario(idUsuario);
    }

    public void modificarUsuario(Usuario usu) {
        try {
            usuJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPeersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}

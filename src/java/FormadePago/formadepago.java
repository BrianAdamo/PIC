/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FormadePago;

/**
 *
 * @author Brian
 */
public class formadepago {
    int id_fp;
    String nombre_fp;
    String estado_fp;

    public formadepago() {
    }

    public formadepago(String nombre_fp, String estado_fp) {
        this.nombre_fp = nombre_fp;
        this.estado_fp = estado_fp;
    }

    public int getId_fp() {
        return id_fp;
    }

    public void setId_fp(int id_fp) {
        this.id_fp = id_fp;
    }

    public String getNombre_fp() {
        return nombre_fp;
    }

    public void setNombre_fp(String nombre_fp) {
        this.nombre_fp = nombre_fp;
    }

    public String getEstado_fp() {
        return estado_fp;
    }

    public void setEstado_fp(String estado_fp) {
        this.estado_fp = estado_fp;
    }
    
    
    
}

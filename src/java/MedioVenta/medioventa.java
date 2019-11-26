/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MedioVenta;

/**
 *
 * @author Brian
 */
public class medioventa {
    int id_mv;
    String nombre_mv;
    String estado_mv;

    public medioventa() {
    }

    public medioventa(String nombre_mv, String estado_mv) {
        this.nombre_mv = nombre_mv;
        this.estado_mv = estado_mv;
    }

    public int getId_mv() {
        return id_mv;
    }

    public void setId_mv(int id_mv) {
        this.id_mv = id_mv;
    }

    public String getNombre_mv() {
        return nombre_mv;
    }

    public void setNombre_mv(String nombre_mv) {
        this.nombre_mv = nombre_mv;
    }

    public String getEstado_mv() {
        return estado_mv;
    }

    public void setEstado_mv(String estado_mv) {
        this.estado_mv = estado_mv;
    }
    
    
    
    
}

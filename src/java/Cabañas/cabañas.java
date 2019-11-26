/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cabañas;

/**
 *
 * @author Brian
 */
public class cabañas {
    int id_cabana;
        int numero_cabana;
        String nombre_cabana;
        String estado_cabana;

    public cabañas() {
    }

    public cabañas(int numero_cabana, String nombre_cabana, String estado_cabana) {
        this.numero_cabana = numero_cabana;
        this.nombre_cabana = nombre_cabana;
        this.estado_cabana = estado_cabana;
    }

    public int getId_cabana() {
        return id_cabana;
    }

    public void setId_cabana(int id_cabana) {
        this.id_cabana = id_cabana;
    }

    public int getNumero_cabana() {
        return numero_cabana;
    }

    public void setNumero_cabana(int numero_cabana) {
        this.numero_cabana = numero_cabana;
    }

    public String getNombre_cabana() {
        return nombre_cabana;
    }

    public void setNombre_cabana(String nombre_cabana) {
        this.nombre_cabana = nombre_cabana;
    }

    public String getEstado_cabana() {
        return estado_cabana;
    }

    public void setEstado_cabana(String estado_cabana) {
        this.estado_cabana = estado_cabana;
    }
    
}

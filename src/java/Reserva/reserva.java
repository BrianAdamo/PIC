/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Reserva;

/**
 *
 * @author Brian
 */
public class reserva {
    int id_reserva;
    String registro_reserva;
    String cliente_reserva;
    String fecha_ingreso;
    String hora_ingreso;
    String fecha_Salida;
    String hora_Salida;
    int id_cabana;
    int cantidad_persona;
    String numero_reserva_interno;
    int medio_venta;
    String numero_reserva_mv;
    String nombre_cliente;
    String celular_cliente;
    int id_forma_pago;
    String fecha_pago;
    Float total_a_pagar;
    Float total_pagado;
    Float saldo_pago;
    String configuracion_cabana;
    String solicitud_especial_cabana;
    String estado_reserva;
    String cabana;
    String mediodeventa;
    String formadepago;

    public reserva() {
    }

    public reserva(String cliente_reserva) {
        this.cliente_reserva = cliente_reserva;
    }
    
    
    
    public reserva(String cabana, String mediodeventa, String formadepago) {
        this.cabana = cabana;
        this.mediodeventa = mediodeventa;
        this.formadepago = formadepago;
    }

    public reserva(String registro_reserva,String fecha_ingreso, String hora_ingreso, String fecha_Salida, String hora_Salida, int id_cabana, int cantidad_persona, String numero_reserva_interno, int medio_venta, String numero_reserva_mv, String nombre_cliente, String celular_cliente, int id_forma_pago, String fecha_pago, Float total_a_pagar, Float total_pagado, Float saldo_pago, String configuracion_cabana, String solicitud_especial_cabana, String estado_reserva) {
        this.registro_reserva = registro_reserva;
        this.fecha_ingreso = fecha_ingreso;
        this.hora_ingreso = hora_ingreso;
        this.fecha_Salida = fecha_Salida;
        this.hora_Salida = hora_Salida;
        this.id_cabana = id_cabana;
        this.cantidad_persona = cantidad_persona;
        this.numero_reserva_interno = numero_reserva_interno;
        this.medio_venta = medio_venta;
        this.numero_reserva_mv = numero_reserva_mv;
        this.nombre_cliente = nombre_cliente;
        this.celular_cliente = celular_cliente;
        this.id_forma_pago = id_forma_pago;
        this.fecha_pago = fecha_pago;
        this.total_a_pagar = total_a_pagar;
        this.total_pagado = total_pagado;
        this.saldo_pago = saldo_pago;
        this.configuracion_cabana = configuracion_cabana;
        this.solicitud_especial_cabana = solicitud_especial_cabana;
        this.estado_reserva = estado_reserva;
    }

    
    
    public int getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(int id_reserva) {
        this.id_reserva = id_reserva;
    }

    public String getRegistro_reserva() {
        return registro_reserva;
    }

    public void setRegistro_reserva(String registro_reserva) {
        this.registro_reserva = registro_reserva;
    }

    public String getCliente_reserva() {
        return cliente_reserva;
    }

    public void setCliente_reserva(String cliente_reserva) {
        this.cliente_reserva = cliente_reserva;
    }

    
    
    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public String getHora_ingreso() {
        return hora_ingreso;
    }

    public void setHora_ingreso(String hora_ingreso) {
        this.hora_ingreso = hora_ingreso;
    }

    public String getFecha_Salida() {
        return fecha_Salida;
    }

    public void setFecha_Salida(String fecha_Salida) {
        this.fecha_Salida = fecha_Salida;
    }

    public String getHora_Salida() {
        return hora_Salida;
    }

    public void setHora_Salida(String hora_Salida) {
        this.hora_Salida = hora_Salida;
    }

    public int getId_cabana() {
        return id_cabana;
    }

    public void setId_cabana(int id_cabana) {
        this.id_cabana = id_cabana;
    }

    public int getCantidad_persona() {
        return cantidad_persona;
    }

    public void setCantidad_persona(int cantidad_persona) {
        this.cantidad_persona = cantidad_persona;
    }

    public String getNumero_reserva_interno() {
        return numero_reserva_interno;
    }

    public void setNumero_reserva_interno(String numero_reserva_interno) {
        this.numero_reserva_interno = numero_reserva_interno;
    }

    public int getMedio_venta() {
        return medio_venta;
    }

    public void setMedio_venta(int medio_venta) {
        this.medio_venta = medio_venta;
    }

    public String getNumero_reserva_mv() {
        return numero_reserva_mv;
    }

    public void setNumero_reserva_mv(String numero_reserva_mv) {
        this.numero_reserva_mv = numero_reserva_mv;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    public String getCelular_cliente() {
        return celular_cliente;
    }

    public void setCelular_cliente(String celular_cliente) {
        this.celular_cliente = celular_cliente;
    }

    public int getId_forma_pago() {
        return id_forma_pago;
    }

    public void setId_forma_pago(int id_forma_pago) {
        this.id_forma_pago = id_forma_pago;
    }

    public String getFecha_pago() {
        return fecha_pago;
    }

    public void setFecha_pago(String fecha_pago) {
        this.fecha_pago = fecha_pago;
    }

    public Float getTotal_a_pagar() {
        return total_a_pagar;
    }

    public void setTotal_a_pagar(Float total_a_pagar) {
        this.total_a_pagar = total_a_pagar;
    }

    public Float getTotal_pagado() {
        return total_pagado;
    }

    public void setTotal_pagado(Float total_pagado) {
        this.total_pagado = total_pagado;
    }

    public Float getSaldo_pago() {
        return saldo_pago;
    }

    public void setSaldo_pago(Float saldo_pago) {
        this.saldo_pago = saldo_pago;
    }

    public String getConfiguracion_cabana() {
        return configuracion_cabana;
    }

    public void setConfiguracion_cabana(String configuracion_cabana) {
        this.configuracion_cabana = configuracion_cabana;
    }

    public String getSolicitud_especial_cabana() {
        return solicitud_especial_cabana;
    }

    public void setSolicitud_especial_cabana(String solicitud_especial_cabana) {
        this.solicitud_especial_cabana = solicitud_especial_cabana;
    }

    public String getEstado_reserva() {
        return estado_reserva;
    }

    public void setEstado_reserva(String estado_reserva) {
        this.estado_reserva = estado_reserva;
    }

    public String getCabana() {
        return cabana;
    }

    public void setCabana(String cabana) {
        this.cabana = cabana;
    }

    public String getMediodeventa() {
        return mediodeventa;
    }

    public void setMediodeventa(String mediodeventa) {
        this.mediodeventa = mediodeventa;
    }

    public String getFormadepago() {
        return formadepago;
    }

    public void setFormadepago(String formadepago) {
        this.formadepago = formadepago;
    }
    
    
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Reserva;

import Config.ConexionMYSQL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author Brian
 */
public class ConsultaReserva {
       public static LinkedList<reserva> getreservas()
   {
      LinkedList<reserva> listarreserva =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = ConexionMYSQL.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "SELECT id_reserva,registro_reserva,fecha_ingreso,hora_ingreso,fecha_salida,hora_salida,id_cabana,nombre_cabana,cantidad_personas,numero_reserva_interno,id_medio_venta,nombre_mv,numero_reserva_mv,nombre_cliente,celular_cliente,id_forma_pago,nombre_fp,fecha_pago,total_a_pagar,total_pagado,saldo_pago,configuracion_cabana,solicitud_especial_cabana,cliente_reserva,estado_reserva\n" +
                                "FROM reservas r \n" +
                                "inner join cabanas c \n" +
                                "on r.id_cabana = c.id_cab\n" +
                                "inner join medio_venta mv\n" +
                                "on r.id_medio_venta = mv.id_mv\n" +
                                "inner join forma_pago fp\n" +
                                "on r.id_forma_pago = fp.id_fp";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                reserva res = new reserva();
                res.setId_reserva(rs.getInt("Id_reserva"));
                res.setRegistro_reserva(rs.getString("registro_reserva"));
                res.setFecha_ingreso(rs.getString("fecha_ingreso"));
                res.setHora_ingreso(rs.getString("hora_ingreso"));
                res.setFecha_Salida(rs.getString("fecha_salida"));
                res.setHora_Salida(rs.getString("hora_salida"));
                res.setCabana(rs.getString("nombre_cabana"));
                res.setId_cabana(rs.getInt("id_cabana"));
                res.setCantidad_persona(rs.getInt("cantidad_personas"));
                res.setNumero_reserva_interno(rs.getString("numero_reserva_interno"));
                res.setMediodeventa(rs.getString("nombre_mv"));
                res.setId_medio_venta(rs.getInt("id_medio_venta"));
                res.setNumero_reserva_mv(rs.getString("numero_reserva_mv"));
                res.setNombre_cliente(rs.getString("nombre_cliente"));
                res.setCelular_cliente(rs.getString("celular_cliente"));
                res.setFormadepago(rs.getString("nombre_fp"));
                res.setId_forma_pago(rs.getInt("id_forma_pago"));
                res.setFecha_pago(rs.getString("fecha_pago"));
                res.setTotal_a_pagar(rs.getFloat("total_a_pagar"));
                res.setTotal_pagado(rs.getFloat("total_pagado"));
                res.setSaldo_pago(rs.getFloat("saldo_pago"));
                res.setConfiguracion_cabana(rs.getString("configuracion_cabana"));
                res.setSolicitud_especial_cabana(rs.getString("solicitud_especial_cabana"));
                res.setCliente_reserva(rs.getString("cliente_reserva"));
                res.setEstado_reserva(rs.getString("estado_reserva"));
                listarreserva.add(res);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listarreserva;
   }
}

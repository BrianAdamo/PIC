<%@page import="java.util.LinkedList"%>
<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "Reserva.reserva"%>
<%@ page import = "Reserva.ConsultaReserva"%> 
<%@ page import = "java.util.LinkedList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Table y Boton de Edicion Completos + Modal Delete,Edit -->
<div class="table-responsive">
    <Table  id="tablareportereserva" class="table table-bordered table-hover table-sm" >
            <thead  class="thead-dark">
                    <tr>  
                            <th >ID</th>
                            <th >FECHA REGISTRO</th>
                            <th >FECHA INGRESO</th>
                            <th >HORA INGRESO</th>
                            <th >FECHA SALIDA</th>
                            <th >HORA SALIDA</th>
                            <th >NOMBRE CABAÑA</th>
                            <th >CANTIDAD PERSONAS</th>
                            <th >NUMERO RESERVA INTERNA</th>
                            <th >MEDIO DE VENTA</th>
                            <th >NUMERO RESERVA MV</th>
                            <th >NOMBRE CLIENTE</th>
                            <th >CELULAR</th>
                            <th >FORMA DE PAGO</th>
                            <th >FECHA DE PAGO</th>
                            <th >A PAGAR</th>
                            <th >PAGADO</th>
                            <th >SALDO</th>
                            <th >CONFIGURACION</th>
                            <th >SOLICITUD ESPECIAL</th>
                            <th >FECHA CLIENTE</th>
                            <th >ESTADO RESERVA</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<reserva> listarepresALL = ConsultaReserva.getreservas();
                        for (int i=0;i<listarepresALL.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td ><span id=\"Id_reserva"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getId_reserva()+"</span></td>");
                            out.println("<td ><span id=\"registro_reserva"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getRegistro_reserva()+"</span></td>");
                            out.println("<td ><span id=\"fecha_ingreso"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getFecha_ingreso()+"</span></td>");
                            out.println("<td ><span id=\"hora_ingreso"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getHora_ingreso()+"</span></td>");
                            out.println("<td ><span id=\"fecha_salida"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getFecha_Salida()+"</span></td>");
                            out.println("<td ><span id=\"hora_salida"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getHora_Salida()+"</span></td>");
                            out.println("<td ><span id=\"nombre_cabana"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getCabana()+"</span></td>");
                            out.println("<td ><span id=\"cantidad_personas"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getCantidad_persona()+"</span></td>");
                            out.println("<td ><span id=\"numero_reserva_interno"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getNumero_reserva_interno()+"</span></td>");
                            out.println("<td ><span id=\"nombre_mv"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getMediodeventa()+"</span></td>");
                            out.println("<td ><span id=\"numero_reserva_mv"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getNumero_reserva_mv()+"</span></td>");
                            out.println("<td ><span id=\"nombre_cliente"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getNombre_cliente()+"</span></td>");
                            out.println("<td ><span id=\"celular_cliente"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getCelular_cliente()+"</span></td>");
                            out.println("<td ><span id=\"nombre_fp"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getFormadepago()+"</span></td>");
                            out.println("<td ><span id=\"fecha_pago"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getFecha_pago()+"</span></td>");
                            out.println("<td ><span id=\"total_a_pagar"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getTotal_a_pagar()+"</span></td>");
                            out.println("<td ><span id=\"total_pagado"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getTotal_pagado()+"</span></td>");
                            out.println("<td ><span id=\"saldo_pago"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getSaldo_pago()+"</span></td>");
                            out.println("<td ><span id=\"configuracion_cabana"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getConfiguracion_cabana()+"</span></td>");
                            out.println("<td ><span id=\"solicitud_especial_cabana"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getSolicitud_especial_cabana()+"</span></td>");
                            out.println("<td ><span id=\"cliente_reserva"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getCliente_reserva()+"</span></td>");
                            out.println("<td ><span id=\"estado_reserva"+listarepresALL.get(i).getId_reserva()+"\">"+listarepresALL.get(i).getEstado_reserva()+"</span></td>");
                            
                            out.println("</tr>");
                            
                            
                        }
                        %>
                                
                
                </tbody>   
     </Table>
</div>
<!-- Table Close -->
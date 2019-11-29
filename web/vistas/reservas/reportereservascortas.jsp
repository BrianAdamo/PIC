<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "Reserva.reserva"%>
<%@ page import = "Reserva.ConsultaReserva"%> 
<%@ page import = "java.util.LinkedList"%>

<!-- Table que se puede filtrar y ordenar -->
<div class="table-responsive">
<table  id="tablareportereserva" class="table table-striped table-bordered" style="width:100%">
        <thead  class="thead-dark">
                    <tr>  
                            <th scope="col">ID</th>
                            <th scope="col">FECHA INGRESO</th>
                            <th scope="col">FECHA SALIDA</th>
                            <th hidden scope="col">DIAS RESERVA</th>
                            <th scope="col">MEDIO VENTA</th>
                            <th scope="col">PERSONAS</th>
                            <th scope="col">NOMBRE CABAÑA</th>
                            <th scope="col">CONFIG CABAÑA</th>
                            <th scope="col">SOLICITUD CABAÑA</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<reserva> listarepres = ConsultaReserva.getreservas();
                        for (int i=0;i<listarepres.size();i++)
                        {   
                            
                            out.println("<tr id=\"dias\"> ");
                            out.println("<td scope=\"row\"><span id=\"Id_reserva"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getId_reserva()+"</span></td>");
                            out.println("<td ><span id=\"fecha_ingreso"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getFecha_ingreso()+"</span></td>");
                            out.println("<td ><span id=\"fecha_salida"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getFecha_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"dias_reserva"+listarepres.get(i).getId_reserva()+"\">"+"</span></td>");
                            out.println("<td ><span id=\"nombre_mv"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getMediodeventa()+"</span></td>");
                            out.println("<td ><span id=\"cantidad_personas"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getCantidad_persona()+"</span></td>");
                            out.println("<td ><span id=\"nombre_cabana"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getCabana()+"</span></td>");
                            out.println("<td ><span id=\"configuracion_cabana"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getConfiguracion_cabana()+"</span></td>");
                            out.println("<td ><span id=\"solicitud_especial_cabana"+listarepres.get(i).getId_reserva()+"\">"+listarepres.get(i).getSolicitud_especial_cabana()+"</span></td>");
                            out.println("</tr>");
                            
                            
                        }
                        %>
                                
                
                </tbody>   
    </table>
</div>
<!-- Table Close -->

<!-- Table y Boton de Edicion Completos + Modal Delete,Edit -->
<div class="table-responsive">
    <Table  id="tablareportereserva" class="table table-bordered table-hover table-sm" >
            <thead  class="thead-dark">
                    <tr>  
                            <th hidden>ID</th>
                            <th hidden>NUMERO RESERVA INTERNA</th>
                            <th hidden>MEDIO DE VENTA</th>
                            <th hidden>NUMERO RESERVA MV</th>
                            <th hidden>ACCIONES</th>
                            <th hidden>registro_reserva</th>
                            <th hidden>cliente_reserva</th>
                            <th hidden>fecha_ingreso</th>
                            <th hidden>hora_ingreso</th>
                            <th hidden>fecha_salida</th>
                            <th hidden>hora_salida</th>
                            <th hidden>nombre_cabana</th>
                            <th hidden>cantidad_personas</th>
                            <th hidden>numero_reserva_interno</th>
                            <th hidden>nombre_mv</th>
                            <th hidden>numero_reserva_mv</th>
                            <th hidden>nombre_cliente</th>
                            <th hidden>celular_cliente</th>
                            <th hidden>nombre_fp</th>
                            <th hidden>fecha_pago</th>
                            <th hidden>total_a_pagar</th>
                            <th hidden>total_pagado</th>
                            <th hidden>saldo_pago</th>
                            <th hidden>configuracion_cabana</th>
                            <th hidden>solicitud_especial_cabana</th>
                            <th hidden>estado_reserva</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<reserva> listarepres2 = ConsultaReserva.getreservas();
                        for (int i=0;i<listarepres2.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td hidden><span id=\"Id_reserva"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getId_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"numero_reserva_interno"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getNumero_reserva_interno()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_mv"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getMediodeventa()+"</span></td>");
                            out.println("<td hidden><span id=\"numero_reserva_mv"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getNumero_reserva_mv()+"</span></td>");
                            out.println("<td hidden><span id=\"cliente_reserva"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getCliente_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"registro_reserva"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getRegistro_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_ingreso"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getFecha_ingreso()+"</span></td>");
                            out.println("<td hidden><span id=\"hora_ingreso"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getHora_ingreso()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_salida"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getFecha_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"hora_salida"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getHora_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_cabana"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getCabana()+"</span></td>");
                            out.println("<td hidden><span id=\"cantidad_personas"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getCantidad_persona()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_cliente"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getNombre_cliente()+"</span></td>");
                            out.println("<td hidden><span id=\"celular_cliente"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getCelular_cliente()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_fp"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getFormadepago()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_pago"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getFecha_pago()+"</span></td>");
                            out.println("<td hidden><span id=\"total_a_pagar"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getTotal_a_pagar()+"</span></td>");
                            out.println("<td hidden><span id=\"total_pagado"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getTotal_pagado()+"</span></td>");
                            out.println("<td hidden><span id=\"saldo_pago"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getSaldo_pago()+"</span></td>");
                            out.println("<td hidden><span id=\"configuracion_cabana"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getConfiguracion_cabana()+"</span></td>");
                            out.println("<td hidden><span id=\"solicitud_especial_cabana"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getSolicitud_especial_cabana()+"</span></td>");
                            out.println("<td hidden><span id=\"estado_reserva"+listarepres2.get(i).getId_reserva()+"\">"+listarepres2.get(i).getEstado_reserva()+"</span></td>");
                            
                            out.println("</tr>");
                            
                            
                        }
                        %>
                                
                
                </tbody>   
     </Table>
</div>
<!-- Table Close -->
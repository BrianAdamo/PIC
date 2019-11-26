<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "Reserva.reserva"%>
<%@ page import = "Reserva.ConsultaReserva"%> 
<%@ page import = "java.util.LinkedList"%>


<!-- Table que se puede filtrar y ordenar -->
<div class="table-responsive">
<table id="tabla" class="table table-striped table-bordered" style="width:100%">
        <thead  class="thead-dark">
                    <tr>  
                            <th scope="col">ACCIONES</th>
                            <th scope="col">ID</th>
                            <th scope="col">FECHA INGRESO</th>
                            <th scope="col">NUMERO RESERVA INTERNA</th>
                            <th scope="col">MEDIO DE VENTA</th>
                            <th scope="col">NUMERO RESERVA MV</th>
                            <th scope="col">CONFIG</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<reserva> listaallres = ConsultaReserva.getreservas();
                        for (int i=0;i<listaallres.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td>"
                                             + "<button data-id="+listaallres.get(i).getId_reserva()+ " type=\"button\" class=\"btn btn-primary btn-sm btnVerReserva\"><i class=\"fa fa-eye\" style=\"color:white;\" aria-hidden=\"true\"></i> Edicion</button>"
                                             + ""
                                       +"</td>");
                            out.println("<td scope=\"row\"><span id=\"Id_reserva"+listaallres.get(i).getId_reserva()+"\">"+listaallres.get(i).getId_reserva()+"</span></td>");
                            out.println("<td scope=\"row\"><span id=\"fecha_ingreso"+listaallres.get(i).getId_reserva()+"\">"+listaallres.get(i).getFecha_ingreso()+"</span></td>");
                            out.println("<td><span id=\"numero_reserva_interno"+listaallres.get(i).getId_reserva()+"\">"+listaallres.get(i).getNumero_reserva_interno()+"</span></td>");
                            out.println("<td><span id=\"nombre_mv"+listaallres.get(i).getId_reserva()+"\">"+listaallres.get(i).getMediodeventa()+"</span></td>");
                            out.println("<td><span id=\"numero_reserva_mv"+listaallres.get(i).getId_reserva()+"\">"+listaallres.get(i).getNumero_reserva_mv()+"</span></td>");
                            out.println("<td><span id=\"configuracion_cabana"+listaallres.get(i).getId_reserva()+"\">"+listaallres.get(i).getConfiguracion_cabana()+"</span></td>");
                            out.println("</tr>");
                            
                            
                        }
                        %>
                                
                
                </tbody>   
    </table>
</div>
<!-- Table Close -->

<!-- Table y Boton de Edicion Completos + Modal Delete,Edit -->
<div class="table-responsive">
    <Table  id="tabla" class="table table-bordered table-hover table-sm" >
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
                        LinkedList<reserva> listares = ConsultaReserva.getreservas();
                        for (int i=0;i<listares.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td hidden><span id=\"Id_reserva"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getId_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"numero_reserva_interno"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getNumero_reserva_interno()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_mv"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getMediodeventa()+"</span></td>");
                            out.println("<td hidden><span id=\"numero_reserva_mv"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getNumero_reserva_mv()+"</span></td>");
                            
                            out.println("<td hidden>"
                                             + "<button data-id="+listares.get(i).getId_reserva()+ " type=\"button\" class=\"btn btn-primary btn-sm btnVerReserva\"><i class=\"fa fa-eye\" style=\"color:white;\" aria-hidden=\"true\"></i> Edicion</button>"
                                             + ""
                                       +"</td>");
                            out.println("<td hidden><span id=\"cliente_reserva"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCliente_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"registro_reserva"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getRegistro_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_ingreso"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getFecha_ingreso()+"</span></td>");
                            out.println("<td hidden><span id=\"hora_ingreso"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getHora_ingreso()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_salida"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getFecha_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"hora_salida"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getHora_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_cabana"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCabana()+"</span></td>");
                            out.println("<td hidden><span id=\"cantidad_personas"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCantidad_persona()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_cliente"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getNombre_cliente()+"</span></td>");
                            out.println("<td hidden><span id=\"celular_cliente"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCelular_cliente()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_fp"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getFormadepago()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_pago"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getFecha_pago()+"</span></td>");
                            out.println("<td hidden><span id=\"total_a_pagar"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getTotal_a_pagar()+"</span></td>");
                            out.println("<td hidden><span id=\"total_pagado"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getTotal_pagado()+"</span></td>");
                            out.println("<td hidden><span id=\"saldo_pago"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getSaldo_pago()+"</span></td>");
                            out.println("<td hidden><span id=\"configuracion_cabana"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getConfiguracion_cabana()+"</span></td>");
                            out.println("<td hidden><span id=\"solicitud_especial_cabana"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getSolicitud_especial_cabana()+"</span></td>");
                            out.println("<td hidden><span id=\"estado_reserva"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getEstado_reserva()+"</span></td>");
                            
                            out.println("</tr>");
                            
                            
                        }
                        %>
                                
                
                </tbody>   
     </Table>
</div>
<!-- Table Close -->
<!-- Modal Delete -->
             <div class="modal fade" id="modalVerReserva" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header" style="Color:#FFFFFF; Background-color: #343A40">
                      <h4 class="modal-title" id="myModalLabel">Datos de la Reserva</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    
                  </div>
                    <div class="modal-body">
                        <table>
                        <tr>
                            <td><span class="text" type="text">Id Reserva: </span></td>
                            <td><input type="text" class="form-control" id="ModalIdReserva" name="ModalIdReserva" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Fecha Registro: </span></td>
                            <td><input type="text" class="form-control" id="ModalFechaRegistroReserva" name="ModalFechaRegistroReserva" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Fecha Reserva Cliente: </span></td>
                            <td><input type="text" class="form-control" id="ModalFechaClienteReserva" name="ModalFechaClienteReserva" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Fecha Ingreso: </span></td>
                            <td><input type="text" class="form-control" id="ModalFechaIngresoReserva" name="ModalFechaIngresoReserva" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Hora Ingreso: </span></td>
                            <td><input type="text" class="form-control" id="ModalHoraIngresoReserva" name="ModalHoraIngresoReserva" ></td>
                        </tr>  
                        <tr>
                            <td><span class="text" type="text">Fecha Salida </span></td>
                            <td><input type="text" class="form-control" id="ModalFechaSalidaReserva" name="ModalFechaSalidaReserva" ></td>
                        </tr>  
                        <tr>
                            <td><span class="text" type="text">Hora Salida </span></td>
                            <td><input type="text" class="form-control" id="ModalHoraSalidaReserva" name="ModalHoraSalidaReserva" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Nombre Cabaña: </span></td>
                            <td><input type="text" class="form-control" id="ModalNombreCabana" name="ModalNombreCabana" ></td>
                        </tr> 
                        <tr>
                            <td><span class="text" type="text">Cantidad Personas: </span></td>
                            <td><input type="text" class="form-control" id="ModalNumeroPersonas" name="ModalNumeroPersonas" ></td>
                        </tr> 
                        <tr>
                            <td><span class="text" type="text">Numero Reserva Interno: </span></td>
                            <td><input type="text" class="form-control" id="ModalNroReservaInt" name="ModalNroReservaInt" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Medio de Venta: </span></td>
                            <td><input type="text" class="form-control" id="ModalNombreMV" name="ModalNombreMV" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Numero Reserva Medio de Venta: </span></td>
                            <td><input type="text" class="form-control" id="ModalNroReservaMV" name="ModalNroReservaMV" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Nombre Cliente: </span></td>
                            <td><input type="text" class="form-control" id="ModalNombreCliente" name="ModalNombreCliente" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Celular Cliente: </span></td>
                            <td><input type="text" class="form-control" id="ModalCelularCliente" name="ModalCelularCliente" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Forma de Pago: </span></td>
                            <td><input type="text" class="form-control" id="ModalNombreFP" name="ModalNombreFP" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Fecha de Pago: </span></td>
                            <td><input type="text" class="form-control" id="ModalFechaPago" name="ModalFechaPago" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Total a Pagar: </span></td>
                            <td><input type="text" class="form-control" id="ModalTotalAPagar" name="ModalTotalAPagar" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Total Pagado: </span></td>
                            <td><input type="text" class="form-control" id="ModalTotalPagado" name="ModalTotalPagado" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Saldo: </span></td>
                            <td><input type="text" class="form-control" id="ModalSaldoPago" name="ModalSaldoPago" readonly></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Configuracion Cabaña: </span></td>
                            <td><input type="text" class="form-control" id="ModalConfiguracionCabana" name="ModalConfiguracionCabana" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Solicitud Especial Cabaña: </span></td>
                            <td><input type="text" class="form-control" id="ModalSolicitudCabana" name="ModalSolicitudCabana" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Estado Reserva: </span></td>
                            <td><input type="text" class="form-control" id="ModalEstadoReserva" name="ModalEstadoReserva" ></td>
                        </tr>
                        </table>     
                    </div>
                     
                    <div class="modal-footer col-md-12" style="Color:#FFFFFF; Background-color: #343A40">
                        <div class="col-md-6">
                        <button type="button" style="float: left;" class="btn btn-warning fa fa-pencil btnEditarReserva" onclick="mensaje()"> Editar</button>
                        <button type="button" style="float: left;" class="btn btn-warning fa fa-pencil btnEditarReserva" onclick="mensajeSWA()"> SWA</button>
                        <!--<button type="button" style="float: left;" class="btn btn-danger fa fa-trash btnEliminarReserva" onclick="javascript:IrAServletUsandoPost('ServletEliminarReserva');"> Eliminar</button>-->
                        <button type="button" style="float: left;" class="btn btn-danger fa fa-trash btnEliminarReserva" onclick="EliminarR()"> Eliminar</button>
                        
                        </div>
                        <div class="col-md-2">
                            
                        </div>
                        <div class="col-md-4">
                        <button type="button" class="btn btn-light fa fa-ban" data-dismiss="modal"> Cancelar</button>    
                        </div>
                      
                    </div>
                    
                </div>
              </div>
            </div>                        
<!-- Modal Delete Close -->                        
<!-- Table y Boton de Edicion Completos + Modal Delete,Edit -->
 


<%@page import="Cabañas.consultacabañas"%>
<%@page import="Cabañas.cabañas"%>
<%@page import="MedioVenta.Consultamedioventa"%>
<%@page import="MedioVenta.medioventa"%>
<%@page import="FormadePago.Consultaformadepago"%>
<%@page import="FormadePago.formadepago"%>
<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "Reserva.reserva"%>
<%@ page import = "Reserva.ConsultaReserva"%> 
<%@ page import = "java.util.LinkedList"%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>

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
                            <th hidden>ID MEDIO DE VENTA</th>
                            <th hidden>MEDIO DE VENTA</th>
                            <th hidden>NUMERO RESERVA MV</th>
                            <th hidden>ACCIONES</th>
                            <th hidden>registro_reserva</th>
                            <th hidden>cliente_reserva</th>
                            <th hidden>fecha_ingreso</th>
                            <th hidden>hora_ingreso</th>
                            <th hidden>fecha_salida</th>
                            <th hidden>hora_salida</th>
                            <th hidden>id_cabana</th>
                            <th hidden>nombre_cabana</th>
                            <th hidden>cantidad_personas</th>
                            <th hidden>numero_reserva_interno</th>
                            <th hidden>nombre_mv</th>
                            <th hidden>numero_reserva_mv</th>
                            <th hidden>nombre_cliente</th>
                            <th hidden>celular_cliente</th>
                            <th hidden>id_forma_pago</th>
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
                            out.println("<td hidden><span id=\"id_mv"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getId_medio_venta()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_mv"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getMediodeventa()+"</span></td>");
                            out.println("<td hidden><span id=\"numero_reserva_mv"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getNumero_reserva_mv()+"</span></td>");
                            
                            out.println("<td hidden>"
                                             + "<button data-id="+listares.get(i).getId_reserva()+ " type=\"button\" class=\"btn btn-primary btn-sm btnVerReserva\" onclick=\"buscarSelect();\"><i class=\"fa fa-eye\" style=\"color:white;\" aria-hidden=\"true\"></i> Edicion</button>"
                                             + ""
                                       +"</td>");
                            out.println("<td hidden><span id=\"cliente_reserva"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCliente_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"registro_reserva"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getRegistro_reserva()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_ingreso"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getFecha_ingreso()+"</span></td>");
                            out.println("<td hidden><span id=\"hora_ingreso"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getHora_ingreso()+"</span></td>");
                            out.println("<td hidden><span id=\"fecha_salida"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getFecha_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"hora_salida"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getHora_Salida()+"</span></td>");
                            out.println("<td hidden><span id=\"id_cabana"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getId_cabana()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_cabana"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCabana()+"</span></td>");
                            out.println("<td hidden><span id=\"cantidad_personas"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCantidad_persona()+"</span></td>");
                            out.println("<td hidden><span id=\"nombre_cliente"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getNombre_cliente()+"</span></td>");
                            out.println("<td hidden><span id=\"celular_cliente"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getCelular_cliente()+"</span></td>");
                            out.println("<td hidden><span id=\"id_forma_pago"+listares.get(i).getId_reserva()+"\">"+listares.get(i).getId_forma_pago()+"</span></td>");
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
                            <td><input type="text" class="form-control" id="ModalIdReserva" name="ModalIdReserva" readonly></td>
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
                            <td><span class="text col-md-6" type="text">Nombre Cabaña: </span></td>
                            <td>
                                          <div class="input-group">
                                            <input type="text" class="form-control" id="ModalidNombreCabana" name="ModalidNombreCabana" hidden >
                                            <input type="text" class="form-control" id="ModalNombreCabana" name="ModalNombreCabana" readonly >
                                            <select name="ModalNombreCabanaNew" id="ModalNombreCabanaNew" class="input-sm form-control" hidden>
                                                <%                        
                                                LinkedList<cabañas> listarcabañamodal = consultacabañas.getcabañas();
                                                for (int i=0;i<listarcabañamodal.size();i++)
                                                { 
                                                %>
                                                <option value="<%= listarcabañamodal.get(i).getId_cabana()%>"><%= listarcabañamodal.get(i).getNombre_cabana()%></option>
                                                <% } %>
                                            </select>
                                            <span class="input-group-addon"></span>
                                            <button type="button"  class="btn btn-warning fa fa-pencil" onclick="quitarHiddenMNC('ModalNombreCabanaNew')" ></button>
                                          </div>
                            </td>
                        </tr>
                        <script>
    
                            //NOMBRE CABAÑA
                            function quitarHiddenMNC(id){

                                            // Ponemos el atributo de solo lectura
                                            $("#ModalNombreCabana").attr("hidden","hidden");
                                            // Ponemos una clase para cambiar el color del texto y mostrar que
                                            // esta deshabilitado
                                            $("#ModalNombreCabana").addClass("hidden");


                                            // Eliminamos el atributo de solo lectura
                                            $("#"+id).removeAttr("hidden");
                                            // Eliminamos la clase que hace que cambie el color
                                            $("#"+id).removeClass("hidden");


                            }

                            $(document).ready(function(){
                                    $("#ModalNombreCabanaNew").change(function(){
                                        $('#ModalidNombreCabana').val($(this).val());
                                    });
                            });
                            
                            
                            
                            //NOMBRE CABAÑA

                        </script>
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
                            <td>
                                          <div class="input-group">
                                            <input type="text" class="form-control" id="ModalIdMV" name="ModalIdMV" hidden >  
                                            <input type="text" class="form-control" id="ModalNombreMV" name="ModalNombreMV" readonly >
                                            <select class="input-sm  form-control" name="ModalNombreMVNew"  id="ModalNombreMVNew"  hidden>
                                                <%                        
                                                LinkedList<medioventa> listaSelectMvModal = Consultamedioventa.getmedioventa();
                                                for (int i=0;i<listaSelectMvModal.size();i++)
                                                { 
                                                %>
                                                <option value="<%= listaSelectMvModal.get(i).getId_mv()%>"><%= listaSelectMvModal.get(i).getNombre_mv()%></option>
                                                <% } %>
                                            </select>
                                            <span class="input-group-addon"></span>
                                            <button type="button"  class="btn btn-warning fa fa-pencil" onclick="quitarHiddenMMV('ModalNombreMVNew')" ></button>
                                          </div>
                            </td>
                        </tr>
                        <script>
    
                            //MEDIO VENTA
                            function quitarHiddenMMV(id){

                                            // Ponemos el atributo de solo lectura
                                            $("#ModalNombreMV").attr("hidden","hidden");
                                            // Ponemos una clase para cambiar el color del texto y mostrar que
                                            // esta deshabilitado
                                            $("#ModalNombreMV").addClass("hidden");


                                            // Eliminamos el atributo de solo lectura
                                            $("#"+id).removeAttr("hidden");
                                            // Eliminamos la clase que hace que cambie el color
                                            $("#"+id).removeClass("hidden");


                            }

                            $(document).ready(function(){
                                    $("#ModalNombreMVNew").change(function(){
                                        $('#ModalIdMV').val($(this).val());
                                    });
                            });
                            //MEDIO VENTA

                        </script>
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
                             <td>
                                          <div class="input-group">
                                            <input type="text" class="form-control" id="ModalNombreidFP" name="ModalNombreidFP" hidden >  
                                            <input type="text" class="form-control" id="ModalNombreFP" name="ModalNombreFP" readonly >
                                            <select name="ModalNombreFPNew" id="ModalNombreFPNew" class="input-sm form-control" hidden>
                                                <%                        
                                                LinkedList<formadepago> listarfpmodal = Consultaformadepago.getformadepago();
                                                for (int i=0;i<listarfpmodal.size();i++)
                                                { 
                                                %>
                                                <option value="<%= listarfpmodal.get(i).getId_fp()%>"><%= listarfpmodal.get(i).getNombre_fp()%></option>
                                                <% } %>
                                            </select>
                                            <span class="input-group-addon"></span>
                                            <button type="button"  class="btn btn-warning fa fa-pencil" onclick="quitarHiddenMFP('ModalNombreFPNew')" ></button>
                                          </div>
                            </td>
                        </tr>
                        <script>
    
                            //MEDIO VENTA
                            function quitarHiddenMFP(id){

                                            // Ponemos el atributo de solo lectura
                                            $("#ModalNombreFP").attr("hidden","hidden");
                                            // Ponemos una clase para cambiar el color del texto y mostrar que
                                            // esta deshabilitado
                                            $("#ModalNombreFP").addClass("hidden");


                                            // Eliminamos el atributo de solo lectura
                                            $("#"+id).removeAttr("hidden");
                                            // Eliminamos la clase que hace que cambie el color
                                            $("#"+id).removeClass("hidden");


                            }

                            $(document).ready(function(){
                                    $("#ModalNombreFPNew").change(function(){
                                        $('#ModalNombreidFP').val($(this).val());
                                    });
                            });
                            //MEDIO VENTA

                        </script>
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
                            <td>
                                <select name="ModalConfiguracionCabana" id="ModalConfiguracionCabana" class="input-sm form-control" >
                                    <option value="Sin Preferencia">Sin Preferencia</option>
                                    <option value="1 cama king y 2 individuales">1 cama king y 2 individuales</option>
                                    <option value="1 cama king,2 individuales y futon">1 cama king, 2 individuales y futon</option>
                                    <option value="2 camas king">2 camas king</option>
                                    <option value="2 camas king y futon">2 camas king y futon</option>
                                    <option value="1 cama king">1 cama king</option>
                                    <option value="2 camas individuales">2 camas individuales</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Solicitud Especial Cabaña: </span></td>
                            <td><input type="text" class="form-control" id="ModalSolicitudCabana" name="ModalSolicitudCabana" ></td>
                        </tr>
                        <tr>
                            <td><span class="text" type="text">Estado Reserva: </span></td>
                            <td>
                                <select name="ModalEstadoReserva" id="ModalEstadoReserva" class="input-sm form-control">
                                    <option value="Sin Estado">Sin Estado</option>
                                    <option value="Reservada">Reservada</option>
                                    <option value="Confirmada">Confirmada</option>
                                    <option value="Cancelada(Anulada)">Cancelada(Anulada)</option>
                                </select>
                            </td>
                        </tr>
                        </table>     
                    </div>
                     
                    <div class="modal-footer col-md-12" style="Color:#FFFFFF; Background-color: #343A40">
                        <div class="col-md-6">
                        <button type="button" style="float: left;" class="btn btn-warning fa fa-pencil btnEditarReserva" onclick="EditarR();"> Editar R</button>
                        <!--<button type="button" style="float: left;" class="btn btn-warning fa fa-pencil" onclick="javascript:IrAServletUsandoPost('ServletEditarReserva');"> Editar Directo</button>--> 
                        <button type="button" style="float: left;" class="btn btn-danger fa fa-trash btnEliminarReserva" onclick="EliminarR();"> Eliminar</button>
                        
                        </div>
                        <div class="col-md-2">
                            
                        </div>
                        <div class="col-md-4">
                        <button type="button" class="btn btn-light fa fa-ban" data-dismiss="modal">Cancelar</button>    
                        </div>
                      
                    </div>
                    
                </div>
              </div>
            </div>                        
<!-- Modal Delete Close -->                        
<!-- Table y Boton de Edicion Completos + Modal Delete,Edit -->
 



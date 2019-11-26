<script>
window.onload = function(){
  var fecha = new Date(); //Fecha actual
  var mes = fecha.getMonth()+1; //obteniendo mes
  var dia = fecha.getDate(); //obteniendo dia
  var ano = fecha.getFullYear(); //obteniendo año
  if(dia<10)
    dia='0'+dia; //agrega cero si el menor de 10
  if(mes<10)
    mes='0'+mes; //agrega cero si el menor de 10
  document.getElementById('FormFechaRegistro').value=ano+"-"+mes+"-"+dia;
}

function ingresoprueba() {
        
        $('#FormFechaIngreso').val("2019-01-01");
        $('#FormFechaSalida').val("2019-01-01");
        $('#FormFechaReserva').val("2019-01-01");
        $('#FormNombreCabana').val('1');
        $('#FormNumeroPersona').val('2');
        $('#FormNumeroReservaMV').val('ReservaPrueba');
        $('#FormMV').val('1');
        $('#FormNombreCliente').val('Prueba');
        $('#FormCelularCliente').val('953738064');
        $('#FormFormadePago').val('1');
        $('#FormFechaPago').val("2019-01-01");
        $('#FormPagado').val('1');
        $('#FormApagar').val('1');
        $('#FormSaldo').val('0');
        $('#FormConfiguracion').val("SinPreferencia");
        $('#FormSolicitud').val('Sin Solicitud');
        $('#FormEstadoReserva').val("SinEstado");
        
    }
</script>


<%@page import="FormadePago.Consultaformadepago"%>
<%@page import="FormadePago.formadepago"%>
<%@page import="Cabañas.consultacabañas"%>
<%@page import="Cabañas.cabañas"%>
<%@page import="java.util.LinkedList"%>
<%@page import="MedioVenta.medioventa"%>
<%@page import="MedioVenta.Consultamedioventa"%>
<!-- para que el boton desaparezca en version movil  d-none d-md-block -->
<a id="BtnAddReserva" class="btn btn-success btn-block  BtnAgregarCentroCosto" role="button" data-toggle="collapse" href="#Reserva" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-plus-sign"></span>   Agregar Reserva</a>
    
<div class="collapse col-md-12" id="Reserva">
<div class="container"> 
      <div class="jumbotron">
        <Center><h1 class="display-4">Formulario Añadir reservas</h1></Center>
         <hr class="my-4">
         
         <center>
         <button class="btn btn-success" type="button" onclick="ingresoprueba()">Ingresar Reserva Prueba</button>
         <!--<button class="btn btn-info" type="button" onclick="mensaje()">Mnesaje</button>-->
         </center>
         
         <br>
         
         <div class="form-row">
           <div class="col-md-6 mb-3">
             <label for="fecharegistrolabel">Fecha Registro</label>
              <input class="input-sm  textinput textInput form-control" id="FormFechaRegistro" name="FormFechaRegistro" type="date" readonly>
           </div>
           <div class="col-md-6 mb-3">
             <label for="fecharegistrolabel">Fecha Reserva Cliente</label>
              <input class="input-sm  textinput textInput form-control" id="FormFechaReserva" name="FormFechaReserva" type="date" required>
           </div> 
         </div> 
        <!-- Fecha y hora de ingreso -->
         <div class="form-row">
           <div class="col-md-6 mb-3">
             <label for="fechaingresolabel">Fecha Ingreso:</label>
              <input class="input-sm  textinput textInput form-control" id="FormFechaIngreso" name="FormFechaIngreso" type="date" required>
             <div class="valid-feedback">
               Bien Hecho!
             </div>
             <div class="invalid-feedback">
                 Por favor ingrese una fecha valida
             </div>
           </div>
           <div class="col-md-6 mb-3">
             <label for="horaingresolabel">Hora Ingreso:</label>
              <input class="input-sm  textinput textInput form-control" id="FormHoraIngreso" name="FormHoraIngreso" value="00:00" type="time">
           </div>
         </div>
         
        <!-- Fecha y hora de Salida -->
         <div class="form-row">
           <div class="col-md-6 mb-3">
             <label for="fechasalidalabel">Fecha Salida:</label>
              <input class="input-sm  textinput textInput form-control" id="FormFechaSalida" name="FormFechaSalida" type="date" required>
             <div class="valid-feedback">
               Bien Hecho!
             </div>
             <div class="invalid-feedback">
                 Por favor ingrese una fecha valida
             </div>
           </div>
           <div class="col-md-6 mb-3">
             <label for="horaingresolabel">Hora Salida:</label>
              <input class="input-sm  textinput textInput form-control" id="FormHoraSalida" name="FormHoraSalida" value="00:00" type="time">
           </div>
         </div>
        
        <!-- Cabaña y Cantidad de personas -->
        <div class="form-row">
        <div class="col-md-6 mb-3">
        <div id="div_Cabaña_SC" class="form-group">
            <label for="LabelNombreCabaña" class="control-label">Cabaña: </label>
                <div class="controls">
                    <select name="FormNombreCabana" id="FormNombreCabana" class="input-sm form-control" required>
                        <%                        
                        LinkedList<cabañas> listarcabaña = consultacabañas.getcabañas();
                        %>   
                        <option></option>
                        <% 
                        for (int i=0;i<listarcabaña.size();i++)
                        { 
                        %>
                        <option value="<%= listarcabaña.get(i).getId_cabana()%>"><%= listarcabaña.get(i).getNombre_cabana()%></option>
                        <% } %>
                    </select>
                </div>     
        </div>
        </div>
        <div class="col-md-6 mb-3">
            <label for="fechasalidalabel">Cantidad Personas:</label>
              <input class="input-sm  textinput textInput form-control" id="FormNumeroPersona" name="FormNumeroPersona" type="Text" required>
             <div class="valid-feedback">
               Bien Hecho!
             </div>
             <div class="invalid-feedback">
                 Por favor ingrese una cantidad de personas
             </div>
        </div>
        </div>
        
        <!-- Numeros de reserva Int y MV -->
        <div class="form-row">
        <div class="col-md-6 mb-3">
            <label for="label">N° Reserva Interno:</label>
            <input class="input-sm  textinput textInput form-control" id="FormNumeroReservaInterno" name="FormNumeroReservaInterno"  placeholder="Se genera al ingresar la reserva automaticamente" type="readonly" disabled>
        </div>
        <div class="col-md-6 mb-3">
            <label for="label">N° Reserva Medio de Venta:</label>
              <input class="input-sm  textinput textInput form-control" id="FormNumeroReservaMV" name="FormNumeroReservaMV" type="Text">
        </div>
        </div>
           
        <!-- Medio de venta -->
        <div class="form-row">
        <div class="col-md-12 mb-3">
        <div id="div_mv" class="form-group">
            <label for="Labelmv" class="control-label">Medio de Venta: </label>
                <div class="controls"> 
                    <select class="input-sm  form-control" name="FormMV"  id="FormMV"  onchange="ShowSelected();" required>
                        <%                        
                        LinkedList<medioventa> listaSelectMv = Consultamedioventa.getmedioventa();
                        %>   
                        <option></option>
                        <% 
                        for (int i=0;i<listaSelectMv.size();i++)
                        { 
                        %>
                        <option value="<%= listaSelectMv.get(i).getId_mv()%>"><%= listaSelectMv.get(i).getNombre_mv()%></option>
                        <% } %>
                    </select>
                </div>
        </div>
        </div>
        </div>
          
        <!-- Datos Cliente -->
        <div class="form-row">
        <div class="col-md-6 mb-3">
            <label for="label">Nombre Cliente:</label>
            <input class="input-sm  textinput textInput form-control" id="FormNombreCliente" name="FormNombreCliente" type="Text" >
        </div>
        <div class="col-md-6 mb-3">
            <label for="label">Celular:</label>
              <input class="input-sm  textinput textInput form-control" id="FormCelularCliente" name="FormCelularCliente" type="Text">
        </div>
        </div>
        
        <!-- Fecha y hora de Salida -->
         <div class="form-row">
             
           <div class="col-md-6 mb-3">
            <div id="div_Cabaña_SC" class="form-group">
            <label for="Label" class="control-label">Forma de Pago: </label>
                <div class="controls">
                    <select name="FormFormadePago" id="FormFormadePago" class="input-sm form-control" required>
                        <%                        
                        LinkedList<formadepago> listarfp = Consultaformadepago.getformadepago();
                        %>   
                        <option></option>
                        <% 
                        for (int i=0;i<listarfp.size();i++)
                        { 
                        %>
                        <option value="<%= listarfp.get(i).getId_fp()%>"><%= listarfp.get(i).getNombre_fp()%></option>
                        <% } %>
                    </select>
                </div>     
            </div>
             <div class="valid-feedback">
               Bien Hecho!
             </div>
             <div class="invalid-feedback">
                 Por favor ingrese un metodo de pago valido
             </div>
           </div>  
           <div class="col-md-6 mb-3">
             <label for="label">Fecha Pago:</label>
             <input class="input-sm  textinput textInput form-control" id="FormFechaPago" name="FormFechaPago" value="2019-01-01" type="date">
           </div>
           
         </div>
        
        <!-- Pagos -->
        <div class="form-row">
           <div class="col-md-4 mb-3">
                <label for="label">Total pagado:</label>
              <input class="input-sm  textinput textInput form-control" id="FormPagado" name="FormPagado" type="Text"  required>
            </div>
            
            <div class="col-md-4 mb-3">
                <label for="label">Total a pagar:</label>
              <input class="input-sm  textinput textInput form-control" id="FormApagar" name="FormApagar" type="Text"  required>
            </div>
            
            <div class="col-md-4 mb-3">
                <label for="label">Saldo:</label>
                <input class="input-sm  textinput textInput form-control" id="FormSaldo" name="FormSaldo" type="Text"  readonly>
            </div>
        </div> 
        
        
        <!-- Configuracion cabaña -->
        <!-- Estado reserva --> 
        <div id="div_Cabaña_SC" class="form-group">
            <label for="LabelConfiguracion" class="control-label">Configuracion de la cabaña:</label>
                <div class="controls">
                    <select name="FormConfiguracion" id="FormConfiguracion" class="input-sm form-control" >
                        <option value="SinPreferencia">Sin Preferencia</option>
                        <option value="1camakingy2individuales">1 cama king y 2 individuales</option>
                        <option value="1 camaking,2individualesyfuton">1 cama king, 2 individuales y futon</option>
                        <option value="2 camasking">2 camas king</option>
                        <option value="2 camaskingyfuton">2 camas king y futon</option>
                        <option value="1 camaking">1 cama king</option>
                        <option value="2 camasindividuales">2 camas individuales</option>
                    </select>
                </div>     
        </div>    
                
        <!-- Solicitud Especial cabaña -->
        <div class="form-row">
            <div class="col-md-12 mb-3">
              <label for="label">Solicitud especial cabaña:</label>
              <div class="input-group">
                <textarea id="FormSolicitud" name="FormSolicitud" class="form-control" aria-label="With textarea"></textarea>
              </div>
            </div>  
        </div>
        
        <!-- Estado reserva --> 
        <div id="div_Cabaña_SC" class="form-group">
            <label for="LabelNombreCabaña" class="control-label">Estado Reserva: </label>
                <div class="controls">
                    <select name="FormEstadoReserva" id="FormEstadoReserva" class="input-sm form-control" required>
                        <option value="SinEstado" selected>Sin Estado</option>
                        <option value="Reservada">Reservada</option>
                        <option value="Confirmada">Confirmada</option>
                        <option value="Cancelada(Anulada)">Cancelada(Anulada)</option>
                    </select>
                </div>     
        </div>            
                    
                    
                    
         <!-- Aceptacion de terminos -->
         <div class="form-group">
           <div class="form-check">
             <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
             <label class="form-check-label" for="invalidCheck">
               He ingresado todos los campos.
             </label>
             <div class="invalid-feedback">
               Necesita indicar que ha ingresado todos los campos.
             </div>
           </div>
         </div>
         <button class="btn btn-success" type="submit">Ingresar Reserva</button>
         
         </div>
     </div>
</div>    

                  
                    
    <script>
    //    
    function ShowSelected(){
    /* Para obtener el valor */
    /* var cod = document.getElementById("FormMV").value; */
    /* alert(cod); */

    /* Para obtener el texto */
    var combo = document.getElementById("FormMV");
    var selected = combo.options[combo.selectedIndex].text;
    
    if(selected === "Airbnb"){
        var FP = '2';
        $('#FormFormadePago').val(FP);
        document.getElementById("FormFormadePago").readonly=true;
    }

    }

        
        
    // Control de Validacion
      (function() {
        'use strict';
        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');
          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              } else {  
                        var fechaclientereserva = $('#FormFechaReserva').val();
                        var horaingreso = $('#FormHoraIngreso').val();
                        var horasalida = $('#FormHoraSalida').val();
                        var nroreservamv = $('#FormNumeroReservaMV').val();
                        var celular = $('#FormCelularCliente').val();
                        var fechapago = $('#FormFechaPago').val();
                        var saldo = $('#FormSaldo').val();
                        var configuracioncabaña = $('#FormConfiguracion').val();
                        var solicitudespecial = $('#FormSolicitud').val();
                        
                        if(fechaclientereserva === ""){
                            var fechaclientereservamod = "2019-01-01";
                            $('#FormFechaReserva').val(fechaclientereservamod);
                        }
                        if(horaingreso === ""){
                            var horaingresomod = '00:00';
                            $('#FormHoraIngreso').val(horaingresomod);
                        }
                        if(horasalida === ""){
                            var horasalidamod = '00:00';
                            $('#FormHoraSalida').val(horasalidamod);
                        }
                        if(nroreservamv === ""){
                            var nroreservamvmod = "Sin Nro de Reserva de Medio de Venta";
                            $('#FormNumeroReservaMV').val(nroreservamvmod);
                        }
                        if(celular === ""){
                            var celularmod = '569';
                            $('#FormCelularCliente').val(celularmod);
                        }
                        if(fechapago === ""){
                            var fechapagomod = "2019-01-01";
                            $('#FormFechaPago').val(fechapagomod);
                        }
                        if(saldo === ""){
                            var saldomod = '0';
                            $('#FormSaldo').val(saldomod);
                        }
                        if(configuracioncabaña === ""){
                            var configuracioncabañamod = '0';
                            $('#FormConfiguracion').val(configuracioncabañamod);
                        }
                        if(solicitudespecial === ""){
                            var solicitudespecialmod = "Sin Solicitud";
                            $('#FormSolicitud').val(solicitudespecialmod);
                        }
                        
                        if(fechaclientereserva === "" || horaingreso === "" || horasalida === "" || nroreservamv === "" || celular === "" || fechapago === "" || saldo === "" || configuracioncabaña === "" || solicitudespecial === ""){
                            var fechaclientereserva2 = $('#FormFechaReserva').val();
                            var horaingreso2 = $('#FormHoraIngreso').val();
                            var horasalida2 = $('#FormHoraSalida').val();
                            var nroreservamv2 = $('#FormNumeroReservaMV').val();
                            var celular2 = $('#FormCelularCliente').val();
                            var fechapago2 = $('#FormFechaPago').val();
                            var saldo2 = $('#FormSaldo').val();
                            var configuracioncabaña2 = $('#FormConfiguracion').val();
                            var solicitudespecial2 = $('#FormSolicitud').val();
                            if(fechaclientereserva2 === "" || horaingreso2 === "" || horasalida2 === "" || nroreservamv2 === "" || celular2 === "" || fechapago2 === "" || saldo2 === "" || configuracioncabaña2 === "" || solicitudespecial2 === ""){
                                swal("Error 2 Registro en blanco");
                            }else{
                              setTimeout(IrAServletUsandoPost('ServletInsertarReserva'),5000);
                            //document.formulario.action='ServletInsertarReserva';
                            //document.formulario.submit();  
                            Swal.fire({
                                        position: 'top-end',
                                        icon: 'success',
                                        title: 'La reserva ha sido ingresada',
                                        showConfirmButton: false,
                                        timer: 1500
                                      })
                            }
                        }else{
                            setTimeout(IrAServletUsandoPost('ServletInsertarReserva'),5000);
                            //document.formulario.action='ServletInsertarReserva';
                            //document.formulario.submit();  
                            Swal.fire({
                                        position: 'top-end',
                                        icon: 'success',
                                        title: 'La reserva ha sido ingresada',
                                        showConfirmButton: false,
                                        timer: 1500
                                      })
                        }
                        
                        
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>   
    

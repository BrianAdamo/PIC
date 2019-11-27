
        //DATATABLES BOTONES Y MAS
        $(document).ready(function() {    
            $('#tabla').DataTable({
                "info": false,
                
                //para cambiar el lenguaje a español
                "language": {
                        "lengthMenu": "Mostrar _MENU_ registros",
                        "zeroRecords": "No se encontraron resultados",
                        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sSearch": "Buscar:",
                        "sProcessing":"Procesando..."
                    }
                    
            });     
        });
        $(document).ready(function() {    
            $('#tablareportereserva').DataTable({
                
                "info": false,
                
                //para cambiar el lenguaje a español
                "language": {
                        "lengthMenu": "Mostrar _MENU_ registros",
                        "zeroRecords": "No se encontraron resultados",
                        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sSearch": "Buscar:",
                        "sProcessing":"Procesando...",           
                    },
                dom: 'Bfrtip',
                buttons: [ 
                                    {
                                            extend:    'csvHtml5',
                                            text:      '<i class="fas fa-file-excel"></i> ',
                                            titleAttr: 'Exportar a Excel',
                                            className: 'btn btn-success'
                                    },
                                    {
                                            extend:    'pdfHtml5',
                                            text:      '<i class="fas fa-file-pdf"></i> ',
                                            titleAttr: 'Exportar a PDF',
                                            className: 'btn btn-danger'
                                    },
                                    {
                                            extend:    'print',
                                            text:      '<i class="fa fa-print"></i> ',
                                            titleAttr: 'Imprimir',
                                            className: 'btn btn-info'
                                    },
                            ]     
                    
                    
            });     
        });
           
            
            //Enviar de los formularios a Servlets
            function IrAServletUsandoPost(direccionACambiar){
               document.formulario.action=direccionACambiar;
               document.formulario.submit();
            }
            
            function mensaje() {
                    Swal.fire(
                                    'Priximamente!',
                                    'Modulo en proceso.',
                                    'info'
                                  )
            }  
 
            //Reservas
            function mensajereservaeliminada() {
                    const Toast = Swal.mixin({
                                                toast: true,
                                                position: 'top-end',
                                                background: '#FF6A5D',
                                                showConfirmButton: false,
                                                timer: 3000,
                                                timerProgressBar: true,
                                                onOpen: (toast) => {
                                                  toast.addEventListener('mouseenter', Swal.stopTimer)
                                                  toast.addEventListener('mouseleave', Swal.resumeTimer)
                                                }
                                              })

                                              Toast.fire({
                                                icon: 'success',
                                                title: 'Reserva Eliminada'
                                              })
            }
            function mensajereservaeditada() {
                    const Toast = Swal.mixin({
                                                toast: true,
                                                position: 'top-end',
                                                showConfirmButton: false,
                                                timer: 3000,
                                                timerProgressBar: true,
                                                onOpen: (toast) => {
                                                  toast.addEventListener('mouseenter', Swal.stopTimer)
                                                  toast.addEventListener('mouseleave', Swal.resumeTimer)
                                                }
                                              })

                                              Toast.fire({
                                                icon: 'success',
                                                title: 'Reserva Editada'
                                              })
            }       
            function EliminarR(){
                
                    Swal.fire({
                                title: 'Esta Seguro de eliminar la Reserva?',
                                text: "Si elimina la reserva, no podra recuperar los datos",
                                icon: 'warning',
                                background: '#FFF',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: 'Si, Eliminar'
                              }).then((result) => {
                                if (result.value) {
                                  document.formulario.action='ServletEliminarReserva';
                                  document.formulario.submit();                                   
                              }
                              })
            }
            function EditarR(){
                            Swal.fire({
                                title: 'Esta seguro de guardar los cambios de esta reserva?',
                                text: "",
                                icon: 'warning',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: 'Si, editar'
                              }).then((result) => {
                                if (result.value) {
                                  document.formulario.action='ServletEditarReserva';
                                  document.formulario.submit();   
                                }
                              })
            }
            //Reservas
            
            //Funcion para restar y mostrar el saldo del pago
            $(document).ready(function(){
  
                function Restar(){

                  var uno, dos, tres, operacion;

                    uno = $('#FormApagar');
                    dos = $('#FormPagado');
                    tres = $('#FormSaldo');

                    operacion = parseInt(uno.val()) - parseInt(dos.val());
                    tres.val(operacion);

                }

                $("#FormApagar").keyup(function(){

                    var dos;
                    dos = $('#FormPagado').val();

                    if(dos != ""){
                      Restar()
                    }

                });

                $("#FormPagado").keyup(function(){

                    var uno;
                    uno = $('#FormApagar').val();

                    if(dos != ""){
                      Restar()
                    }

                });


              });
            //Funcion para restar y mostrar el saldo del pago en MODAL
            $(document).ready(function(){
  
                function RestarModal(){

                  var uno, dos, tres, operacion;

                    uno = $('#ModalTotalAPagar');
                    dos = $('#ModalTotalPagado');
                    tres = $('#ModalSaldoPago');

                    operacion = parseInt(uno.val()) - parseInt(dos.val());
                    tres.val(operacion);

                }

                $("#ModalTotalAPagar").keyup(function(){

                    var dos;
                    dos = $('#ModalTotalPagado').val();

                    if(dos != ""){
                      RestarModal()
                    }

                });

                $("#ModalTotalPagado").keyup(function(){

                    var uno;
                    uno = $('#ModalTotalAPagar').val();

                    if(dos != ""){
                      RestarModal()
                    }

                });


              });
            


            //Funcion de modal Ver Reserva
            $(document).ready(function(){
                    $(document).on('click', '.btnVerReserva', function(){
                        
                        var id=$(this).attr('data-id');
                        var registro_reserva=$('#registro_reserva'+id).text();
                        var cliente_reserva=$('#cliente_reserva'+id).text();
                        var fecha_ingreso=$('#fecha_ingreso'+id).text();
                        var hora_ingreso=$('#hora_ingreso'+id).text();
                        var fecha_salida=$('#fecha_salida'+id).text();
                        var hora_salida=$('#hora_salida'+id).text();
                        var nombre_cabana=$('#nombre_cabana'+id).text();
                        var cantidad_personas=$('#cantidad_personas'+id).text();
                        var numero_reserva_interno=$('#numero_reserva_interno'+id).text();
                        var nombre_mv=$('#nombre_mv'+id).text();
                        var numero_reserva_mv=$('#numero_reserva_mv'+id).text();
                        var nombre_cliente=$('#nombre_cliente'+id).text();
                        var celular_cliente=$('#celular_cliente'+id).text();
                        var nombre_fp=$('#nombre_fp'+id).text();
                        var fecha_pago=$('#fecha_pago'+id).text();
                        var total_a_pagar=$('#total_a_pagar'+id).text();
                        var total_pagado=$('#total_pagado'+id).text();
                        var saldo_pago=$('#saldo_pago'+id).text();
                        var configuracion_cabana=$('#configuracion_cabana'+id).text();
                        var solicitud_especial_cabana=$('#solicitud_especial_cabana'+id).text();
                        var estado_reserva=$('#estado_reserva'+id).text();
                        
                        $('#modalVerReserva').modal('show');
                        
                        $('#ModalIdReserva').val(id);
                        $('#ModalFechaRegistroReserva').val(registro_reserva);
                        $('#ModalFechaClienteReserva').val(cliente_reserva);
                        $('#ModalFechaIngresoReserva').val(fecha_ingreso);
                        $('#ModalHoraIngresoReserva').val(hora_ingreso);
                        $('#ModalFechaSalidaReserva').val(fecha_salida);
                        $('#ModalHoraSalidaReserva').val(hora_salida);
                        $('#ModalNombreCabana').val(nombre_cabana);
                        $('#ModalNumeroPersonas').val(cantidad_personas);
                        $('#ModalNroReservaInt').val(numero_reserva_interno);
                        $('#ModalNombreMV').val(nombre_mv);
                        $('#ModalNroReservaMV').val(numero_reserva_mv); 
                        $('#ModalNombreCliente').val(nombre_cliente);
                        $('#ModalCelularCliente').val(celular_cliente);
                        $('#ModalNombreFP').val(nombre_fp);
                        $('#ModalFechaPago').val(fecha_pago);
                        $('#ModalTotalAPagar').val(total_a_pagar);
                        $('#ModalTotalPagado').val(total_pagado);
                        $('#ModalSaldoPago').val(saldo_pago);
                        $('#ModalConfiguracionCabana').val(configuracion_cabana);
                        $('#ModalSolicitudCabana').val(solicitud_especial_cabana);
                        $('#ModalEstadoReserva  ').val(estado_reserva);
                    });
            });
            
            
              
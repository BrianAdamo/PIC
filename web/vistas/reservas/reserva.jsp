<link rel="stylesheet" href="css/sw2css.css">
<script type="text/javascript" src="js/sw2js.js"></script>

<div id="reserva" class="container">
     <form method="POST" name="formulario" id="formulario" class="needs-validation" novalidate >
      <%@ include file="addreserva.jsp" %>
     <br>
      <%@ include file="listareserva.jsp" %>
     </form>
</div>

                                       <%
                                       if(session.getAttribute("mensajeRetorno")!=null) {
                                       //if ( session.getAttribute("mensajeRetorno").equals("Registrado")){
                                           String msg = (String)session.getAttribute("mensajeRetorno");
                                        
                                           if(msg.equals("Ingresada")){
                                       %>
                                        
                                       <script LANGUAGE="javascript">
                                                swal("Registro Exitoso!", "La Reserva fue registrada exitosamente", "success");
                                                alert("Registro Exitoso!");
                                        </script>  
                                            
                                        <%    
                                            }
                                            if(msg.equals("No Ingresada")){
                                        %>
                                       
                                            <script>
                                                swal("No Registrada!", "La Reserva no se pudo registrar", "error");
                                                //alert("Registro Exitoso!");
                                            </script>
                                           
                                        <%
                                        }if(msg.equals("Eliminado")){

                                         %>
                                         
                                            <script>
                                                        const Toast = Swal.mixin({
                                                                                    toast: true,
                                                                                    position: 'top-end',
                                                                                    showConfirmButton: false,
                                                                                    timer: 5000,
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
                                            </script>  
                                            <%
                                        }
                                            
                                        msg.equals(null);      
                                        session.setAttribute("mensajeRetorno",null);
                                        }
                                          %>
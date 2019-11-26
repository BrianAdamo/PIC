<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css.map">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>

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
                                        }if(msg.equals("Ya esta Registrado")){

                                         %>
                                         
                                            <script>
                                              swal("Registro encontrado!", "Esta Subcategoria ya se encuentra registrada", "warning");
                                            </script>  
                                            <%
                                        }
                                            
                                        msg.equals(null);      
                                        session.setAttribute("mensajeRetorno",null);
                                        }
                                          %>
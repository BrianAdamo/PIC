<%@page import="java.util.LinkedList"%>
<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "Reserva.reserva"%>
<%@ page import = "Reserva.ConsultaReserva"%> 
<%@ page import = "java.util.LinkedList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            out.println("</tr>");
                            
                            
                        }
                        %>
                                
                
                </tbody>   
    </table>
</div>
<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "FormadePago.formadepago"%>
<%@ page import = "FormadePago.Consultaformadepago"%> 
<%@ page import = "java.util.LinkedList"%>

<div class="table-responsive">
    <Table  id="tabla" class="table table-bordered table-hover table-sm" >
            <thead  class="thead-dark">
                    <tr>  
                            <th scope="col">ID</th>
                            <th scope="col">FORMA DE PAGO</th>
                            <th scope="col">ESTADO</th>
                            <th scope="col">ACCIONES</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<formadepago> listaFP = Consultaformadepago.getformadepago();
                        for (int i=0;i<listaFP.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td scope=\"row\"><span id=\"idCentrocosto"+listaFP.get(i).getId_fp()+"\">"+listaFP.get(i).getId_fp()+"</span></td>");
                            out.println("<td><span id=\"nomCentrocosto"+listaFP.get(i).getId_fp()+"\">"+listaFP.get(i).getNombre_fp()+"</span></td>");
                            out.println("<td><span id=\"estCentrocosto"+listaFP.get(i).getId_fp()+"\">"+listaFP.get(i).getEstado_fp()+"</span></td>");
                            
                            out.println("<td>"+"<button data-id="+listaFP.get(i).getId_fp()+ " type=\"button\" class=\"btn btn-danger btn-sm btnEliminarCentro\"><i class=\"fa fa-trash\" style=\"color:white;\" aria-hidden=\"true\"></i></button>"
                                             + "<button data-id="+listaFP.get(i).getId_fp()+ " type=\"button\" class=\"btn btn-warning btn-sm btnEditarCentro\"><i class=\"fa fa-pencil\" style=\"color:white;\" aria-hidden=\"true\"></i></button>"
                                             + ""+"</td>");
                            out.println("</tr>");
    
                        }
                        %>
                                
                
                </tbody>   
     </Table>
</div>
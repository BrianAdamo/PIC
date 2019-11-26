<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "Cabañas.cabañas"%>
<%@ page import = "Cabañas.consultacabañas"%> 
<%@ page import = "java.util.LinkedList"%>

<div class="table-responsive">
    <Table  id="tabla" class="table table-bordered table-hover table-sm" >
            <thead  class="thead-dark">
                    <tr>  
                            <th scope="col">ID</th>
                            <th scope="col">NUMERO CABANA</th>
                            <th scope="col">NOMBRE CABANA</th>
                            <th scope="col">ESTADO</th>
                            <th scope="col">ACCIONES</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<cabañas> listaCab = consultacabañas.getcabañas();
                        for (int i=0;i<listaCab.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td scope=\"row\"><span id=\"idCentrocosto"+listaCab.get(i).getId_cabana()+"\">"+listaCab.get(i).getId_cabana()+"</span></td>");
                            out.println("<td><span id=\"nomCentrocosto"+listaCab.get(i).getId_cabana()+"\">"+listaCab.get(i).getNumero_cabana()+"</span></td>");
                            out.println("<td><span id=\"nomCentrocosto"+listaCab.get(i).getId_cabana()+"\">"+listaCab.get(i).getNombre_cabana()+"</span></td>");
                            out.println("<td><span id=\"estCentrocosto"+listaCab.get(i).getId_cabana()+"\">"+listaCab.get(i).getEstado_cabana()+"</span></td>");
                            
                            out.println("<td>"+"<button data-id="+listaCab.get(i).getId_cabana()+ " type=\"button\" class=\"btn btn-danger btn-sm btnEliminarCentro\"><i class=\"fa fa-trash\" style=\"color:white;\" aria-hidden=\"true\"></i></button>"
                                             + "<button data-id="+listaCab.get(i).getId_cabana()+ " type=\"button\" class=\"btn btn-warning btn-sm btnEditarCentro\"><i class=\"fa fa-pencil\" style=\"color:white;\" aria-hidden=\"true\"></i></button>"
                                             + ""+"</td>");
                            out.println("</tr>");
    
                        }
                        %>
                                
                
                </tbody>   
     </Table>
</div>
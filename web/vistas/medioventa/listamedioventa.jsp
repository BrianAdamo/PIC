<%@page import= "java.sql.*"%>
<%@ page language="java" %>
<%@page import= "MedioVenta.medioventa"%>
<%@ page import = "MedioVenta.Consultamedioventa"%> 
<%@ page import = "java.util.LinkedList"%>

<div class="table-responsive">
    <Table  id="tabla" class="table table-bordered table-hover table-sm" >
            <thead  class="thead-dark">
                    <tr>  
                            <th scope="col">ID</th>
                            <th scope="col">MEDIO DE VENTA</th>
                            <th scope="col">ESTADO</th>
                            <th scope="col">ACCIONES</th>
                    </tr>
            </thead>
                    <tbody>
                        <%
                        LinkedList<medioventa> listaMV = Consultamedioventa.getmedioventa();
                        for (int i=0;i<listaMV.size();i++)
                        {   
                            
                            out.println("<tr>");
                            out.println("<td scope=\"row\"><span id=\"idMedioVenta"+listaMV.get(i).getId_mv()+"\">"+listaMV.get(i).getId_mv()+"</span></td>");
                            out.println("<td><span id=\"nomMedioVenta"+listaMV.get(i).getId_mv()+"\">"+listaMV.get(i).getNombre_mv()+"</span></td>");
                            out.println("<td><span id=\"estMedioVenta"+listaMV.get(i).getId_mv()+"\">"+listaMV.get(i).getEstado_mv()+"</span></td>");
                            
                            out.println("<td>"+"<button data-id="+listaMV.get(i).getId_mv()+ " type=\"button\" class=\"btn btn-danger btn-sm btnEliminarMV\"><i class=\"fa fa-trash\" style=\"color:white;\" aria-hidden=\"true\"></i></button>"
                                             + "<button data-id="+listaMV.get(i).getId_mv()+ " type=\"button\" class=\"btn btn-warning btn-sm btnEditarMV\"><i class=\"fa fa-pencil\" style=\"color:white;\" aria-hidden=\"true\"></i></button>"
                                             + ""+"</td>");
                            out.println("</tr>");
    
                        }
                        %>
                                
                
                </tbody>   
     </Table>
</div>
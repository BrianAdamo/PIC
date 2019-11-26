/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Reserva;

import Config.ConexionMYSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brian
 */
public class ServletEditarReserva extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            //Edicion de Reserva
            //Leer todos los datos del modal y guardarlos en variables
                int id= Integer.parseInt(request.getParameter("ModalIdReserva"));
                String FechaClienteReserva= request.getParameter("FormFechaReserva");
                String FechaRegistro= request.getParameter("FormFechaRegistro");
                String FechaIngreso= request.getParameter("FormFechaIngreso");
                String HoraIngreso= request.getParameter("FormHoraIngreso");
                String FechaSalida= request.getParameter("FormFechaSalida");
                String HoraSalida= request.getParameter("FormHoraSalida");
                int NombreCabaña= Integer.parseInt(request.getParameter("FormNombreCabana"));
                int NumeroPersona= Integer.parseInt(request.getParameter("FormNumeroPersona"));
                int MV= Integer.parseInt(request.getParameter("FormMV"));
                String NumeroReservaInterno= FechaIngreso+"/"+FechaSalida+"/"+NombreCabaña;
                String NumeroReservaMV= request.getParameter("FormNumeroReservaMV");
                String NombreCliente= request.getParameter("FormNombreCliente");
                String CelularCliente= request.getParameter("FormCelularCliente");
                int FormadePago= Integer.parseInt(request.getParameter("FormFormadePago"));
                String FechaPago= request.getParameter("FormFechaPago");
                Double Apagar = Double.parseDouble(request.getParameter("FormApagar"));
                Double Pagado = Double.parseDouble(request.getParameter("FormPagado"));
                Double Saldo = Double.parseDouble(request.getParameter("FormSaldo"));
                String Configuracion= request.getParameter("FormConfiguracion");
                String Solicitud= request.getParameter("FormSolicitud");
                String EstadoReserva= request.getParameter("FormEstadoReserva");
            
             // Define la conexión
                Connection cn = ConexionMYSQL.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{CALL EliminarReserva (?,?)}");
                // Parametro 1 del procedimiento almacenado
                cst.setInt(1, id);
                // Definimos los tipos de los parametros de salida del procedimiento almacenado
                cst.registerOutParameter(2, java.sql.Types.VARCHAR);
                
                cst.execute();
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetorno = cst.getString(2);
                
                //seteo valor parametro obtenido del procedure
                request.getSession().setAttribute("mensajeRetorno",mensajeRetorno);
                
                
                
                RequestDispatcher rd = request.getRequestDispatcher("Home.jsp?v=reserva");
                
                rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletEditarReserva.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletEditarReserva.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

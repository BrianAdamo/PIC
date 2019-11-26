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
                String FechaRegistro= request.getParameter("ModalFechaRegistroReserva");
                String FechaClienteReserva= request.getParameter("ModalFechaClienteReserva");
                String FechaIngreso= request.getParameter("ModalFechaIngresoReserva");
                String HoraIngreso= request.getParameter("ModalHoraIngresoReserva");
                String FechaSalida= request.getParameter("ModalFechaSalidaReserva");
                String HoraSalida= request.getParameter("ModalHoraSalidaReserva");
                int NombreCabaña= Integer.parseInt(request.getParameter("ModalNombreCabana"));
                int NumeroPersona= Integer.parseInt(request.getParameter("ModalNumeroPersonas"));
                int MV= Integer.parseInt(request.getParameter("ModalNombreMV"));
                String NumeroReservaInterno= request.getParameter("ModalNroReservaInt");
                String NumeroReservaMV= request.getParameter("ModalNroReservaMV");
                String NombreCliente= request.getParameter("ModalNombreCliente");
                String CelularCliente= request.getParameter("ModalCelularCliente");
                int FormadePago= Integer.parseInt(request.getParameter("ModalNombreFP"));
                String FechaPago= request.getParameter("ModalFechaPago");
                Double Apagar = Double.parseDouble(request.getParameter("ModalTotalAPagar"));
                Double Pagado = Double.parseDouble(request.getParameter("ModalTotalPagado"));
                Double Saldo = Double.parseDouble(request.getParameter("ModalSaldoPago"));
                String Configuracion= request.getParameter("ModalConfiguracionCabana");
                String Solicitud= request.getParameter("ModalSolicitudCabana");
                String EstadoReserva= request.getParameter("ModalEstadoReserva");
            
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

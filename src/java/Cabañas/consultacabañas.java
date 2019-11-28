/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cabañas;

import Config.ConexionMYSQL;
import Cabañas.cabañas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author Brian
 */
public class consultacabañas {
        public static LinkedList<cabañas> getcabañas()
   {
      LinkedList<cabañas> listarcabaña =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = ConexionMYSQL.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "select * from cabanas";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                cabañas cab = new cabañas();
                cab.setId_cabana(rs.getInt("id_cab"));
                cab.setNumero_cabana(rs.getInt("numero_cabana"));
                cab.setNombre_cabana(rs.getString("nombre_cabana"));
                cab.setEstado_cabana(rs.getString("estado_cabana"));
                
                
                listarcabaña.add(cab);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listarcabaña;
   }
    
    
    
}

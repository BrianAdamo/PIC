/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MedioVenta;

import Config.ConexionMYSQL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class Consultamedioventa {
     public static LinkedList<medioventa> getmedioventa()
   {
      LinkedList<medioventa> listarmv =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = ConexionMYSQL.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "select * from medio_venta";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                medioventa mv = new medioventa();
                mv.setId_mv(rs.getInt("id_mv"));
                mv.setNombre_mv(rs.getString("nombre_mv"));
                mv.setEstado_mv(rs.getString("estado_mv"));
                
                
                listarmv.add(mv);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listarmv;
   }
}

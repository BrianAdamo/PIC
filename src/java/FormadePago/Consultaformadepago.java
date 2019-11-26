/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FormadePago;

import Config.ConexionMYSQL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class Consultaformadepago {
     public static LinkedList<formadepago> getformadepago()
   {
      LinkedList<formadepago> listarfp =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = ConexionMYSQL.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "select * from forma_pago";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                formadepago fp = new formadepago();
                fp.setId_fp(rs.getInt("id_fp"));
                fp.setNombre_fp(rs.getString("nombre_fp"));
                fp.setEstado_fp(rs.getString("estado_fp"));
                
                
                listarfp.add(fp);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listarfp;
   }
}

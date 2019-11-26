/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



/**
 *
 * @author Brian
 */
public class ConexionMYSQL {

    Connection con;

    public ConexionMYSQL() throws ClassNotFoundException, SQLException{      
           Class.forName("com.mysql.jdbc.Driver");
           //LOCAL
           con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pic_reservas", "root", "root");
           //SERVIDOR
           //con = (Connection) DriverManager.getConnection("jdbc:mysql://node40626-patagoniaindomita.jelastic.saveincloud.net:3306/pic_reservas", "root", "ctYozw5F5R");
    }   
    
    public static java.sql.Connection getConnection() throws Exception
    {
        // Establece el nombre del driver a utilizar
        String dbDriver = "com.mysql.jdbc.Driver";       
        // Establece la conexion a utilizar contra la base de datos
        //local
        String dbConnString = "jdbc:mysql://localhost:3306/pic_reservas?verifyServerCertificate=false&useSSL=true";
        //servidor
        //String dbConnString = "jdbc:mysql://node40626-patagoniaindomita.jelastic.saveincloud.net:3306/pic_reservas?verifyServerCertificate=false&useSSL=true";       
        // Establece el usuario de la base de datos
        String dbUser = "root";       
        // Establece la contraseña de la base de datos
        //local
        String dbPassword = "root"; 
        //Servidor
        //String dbPassword = "ctYozw5F5R";       
        // Establece el driver de conexión
        Class.forName(dbDriver).newInstance();       
        // Retorna la conexión
        return DriverManager.getConnection(dbConnString, dbUser, dbPassword);
    } 
}


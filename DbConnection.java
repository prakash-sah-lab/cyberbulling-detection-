/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author JP9
 */
public class DbConnection {
    public static Connection getConnection()
    {
        Connection con = null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/osn", "root", "root");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}

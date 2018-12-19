package da;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

class DA {

    static Connection createConnection() {
        Connection conn = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:xe", "verniy", "123456"
            );
            System.out.println("Connection established Successfully");
        } catch (SQLException ex) {
            System.out.println("Connection Failed");
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DA.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

    static void shutDown(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("Connection Termination Successfully.");
            } catch (SQLException ex) {
                System.out.println("Connection Termination Failed");
            }
        }
        else{
            System.out.println("Connection is empty");
        }
    }
    public static void main(String[] args) {
        Connection conn = DA.createConnection();
        DA.shutDown(conn);
        System.out.println("END OF PROGRAM");
    }
}

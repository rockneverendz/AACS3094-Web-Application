package da;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

class DA {

    static Connection createConnection() throws Exception {
        try {
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String username = "verniy"; //Change to your database account
            String password = "123456"; 
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = 
                    DriverManager.getConnection(url, username, password);
            
            System.out.println("Connection established Successfully");
            return conn;
        } catch (ClassNotFoundException ex) {
            throw new Exception("Class not fond. Missing \"ojdbc14.jar\"?");
        } catch (SQLException ex) {
            throw new Exception("Is database on?");
        }
    }

    static void shutDown(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("Connection Termination Successfully.");
            } catch (SQLException ex) {
                System.out.println("Connection Termination Failed");
            }
        } else {
            System.out.println("Connection is empty");
        }
    }

    public static void main(String[] args) {
        Connection conn;
        try {
            conn = DA.createConnection();
            DA.shutDown(conn);
        } catch (Exception ex) {
            Logger.getLogger(DA.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("END OF PROGRAM");
    }
}

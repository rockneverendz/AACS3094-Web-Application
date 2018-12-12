package da;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class DA {

    static Connection createConnection() {
        Connection conn = null;
        try {
            String host = "jdbc:derby:DySpee";
            String user = "nbuser";
            String password = "nbuser";
            conn = DriverManager.getConnection(host, user, password);
            System.out.println("***TRACE: Connection established.");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(
                    null,
                    ex.getMessage(),
                    "ERROR",
                    JOptionPane.ERROR_MESSAGE);
        }
        return conn;
    }

    static void shutDown(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("***TRACE: Connection to terminated safely.");
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(
                        null,
                        ex.getMessage(),
                        "ERROR",
                        JOptionPane.ERROR_MESSAGE);
            }
        }
    }
}

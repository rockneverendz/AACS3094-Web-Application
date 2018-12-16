/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package da;

import domain.Customer;

import javax.swing.*;
import java.sql.*;
//import java.util.Arrays;

/**
 *
 * @author Verniy
 */
public class CustomerDA {

    private final String tableName = "CUSTOMER";
    private static Connection conn;
    private static PreparedStatement stmt;

    public CustomerDA() {
        conn = DA.createConnection();
    }

    public static void shutDown() {
        DA.shutDown(conn);
    }

    public Customer getRecord(String ID) {
        String queryStr = "SELECT * FROM " + tableName + " WHERE Code = ?";
        Customer customer = null;
        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, ID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                customer = new Customer(
                        ID,
                        rs.getString("NAME"), 
                        rs.getString("EMAIL"),
                        rs.getString("DOB"),
                        rs.getString("PASSWORD")
                );
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(
                    null,
                    ex.getMessage(),
                    "ERROR",
                    JOptionPane.ERROR_MESSAGE);
        }
        return customer;
    }

    public void addRecord(Customer customer) {
        String queryStr = "INSERT INTO " + tableName + " VALUES(?, ?, ?, ?, ?)";

        try {
            stmt = conn.prepareStatement(queryStr);
            stmt.setString(1, customer.getID());
            stmt.setString(2, customer.getName());
            stmt.setString(3, customer.getEmail());
            stmt.setString(4, customer.getDob());
            stmt.setString(5, customer.getPassword());
            stmt.executeUpdate();

            JOptionPane.showMessageDialog(
                    null,
                    "Customer \"" + customer.getID() + "\" has been successfully created."
            );
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(
                    null,
                    ex.getMessage(),
                    "ERROR",
                    JOptionPane.ERROR_MESSAGE
            );
        }
    }

    public void updateRecord(Customer customer) {

        String updateStr = "UPDATE " + tableName + " SET NAME = ?, EMAIL = ?, DOB = ?, PASSWORD = ? WHERE ID = ?";

        try {

            stmt = conn.prepareStatement(updateStr);
            stmt.setString(1, customer.getName());
            stmt.setString(2, customer.getEmail());
            stmt.setString(3, customer.getDob());
            stmt.setString(4, customer.getPassword());
            stmt.setString(5, customer.getID());
            stmt.executeUpdate();

            JOptionPane.showMessageDialog(
                    null,
                    "Customer \"" + customer.getID() + "\" has been updated."
            );
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(
                    null,
                    ex.getMessage(),
                    "ERROR",
                    JOptionPane.ERROR_MESSAGE
            );
        }
    }

    public void deleteRecord(Customer customer) {

        String delStr = "DELETE FROM " + tableName + " WHERE ID = ?";
        try {
            stmt = conn.prepareStatement(delStr);
            stmt.setString(1, customer.getID());
            stmt.executeUpdate();

            JOptionPane.showMessageDialog(
                    null,
                    "Customer \"" + customer.getName() + "\" has been deleted.",
                    null,
                    JOptionPane.INFORMATION_MESSAGE
            );
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(
                    null,
                    ex.getMessage(),
                    "ERROR",
                    JOptionPane.ERROR_MESSAGE
            );
        }
    }
}

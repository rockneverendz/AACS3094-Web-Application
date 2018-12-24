/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import domain.Customer;
import da.CustomerDA;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.persistence.EntityManager;
import javax.transaction.UserTransaction;

import javax.annotation.Resource;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Verniy
 */
public class AddCustomer extends HttpServlet {
    @PersistenceContext EntityManager em;
    @Resource UserTransaction utx;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(
            HttpServletRequest request,
            HttpServletResponse response
    )
            throws ServletException, IOException {

        //Get parameter from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String passwordRe = request.getParameter("passwordRe");

        //Print to console <Debugging Purposes only>
        System.out.println(name);
        System.out.println(email);
        System.out.println(dob);
        System.out.println(password);
        System.out.println(passwordRe);

        //Create a customer opbject
        Customer customer = new Customer(name, email, dob, password);

        //Validate parameters
        String message = null;
        String url = null; 
        
        try {
            CustomerDA customerDA = new CustomerDA();
            customerDA.addRecord(customer);
            message = "Successfully Created";
            url = "/account/Settings.jsp";
        } catch (Exception e) {
        }
        request.setAttribute("customer", customer);
        request.setAttribute("message", message);

        RequestDispatcher dispatcher
                = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Register customer";
    }// </editor-fold>

}

package control;

import entity.Customer;

// Servlet Libraries
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

// Entity Libraries
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Verniy
 */
public class AddCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Get parameter from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String passwordRe = request.getParameter("passwordRe");

        String message;
        Customer customer = new Customer();
        String url = "/account/SignUp.jsp";

        //Create EM
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        EntityManager entitymanager = emfactory.createEntityManager();
        entitymanager.getTransaction().begin();

        try {
            // Fill in those which doens't need to be validated
            customer.setCustname(name);
            customer.setEmail(email);
            
            // Parse date
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            customer.setDob(sdf.parse(dob));
            
            // Check both passwords
            if (!password.equals(passwordRe)) {
                throw new IllegalArgumentException();
            }
            customer.setPassword(password);
            
            // Insert & Commit
            entitymanager.persist(customer);
            entitymanager.getTransaction().commit();

            // Destroy EM
            entitymanager.close();
            emfactory.close();

            message = "Succesfully Registered";
            url = "/account/Settings.jsp";
            
        } catch (ParseException ex) {
            
            message = "Invalid Date. How in the world do you end up in this state?";
            customer.setDob(new Date());
            
        } catch (IllegalArgumentException ex) {
            
            message = "Retyped password doesn't not match.";
            customer.setPassword("");
            
        } catch (RollbackException ex) {
            
            message = "Account already exists.";
            customer.setPassword("");
            
        }

        request.setAttribute("message", message);
        request.setAttribute("customer", customer);
        
        RequestDispatcher dispatcher
                = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Register customer";
    }// </editor-fold>
}

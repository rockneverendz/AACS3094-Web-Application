package control;

import entity.Customer;
import service.CustomerService;

// Servlet Libraries
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

// Entity Libraries
import javax.persistence.RollbackException;

public class SignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String passwordRe = request.getParameter("passwordRe");

        // Initialize variables
        Boolean signedIn = false;
        String message;
        String url = "/account/SignUp.jsp";
        Customer customer = new Customer();
        CustomerService customerService = new CustomerService();

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

            // Insert & Commit (over at service.CustomerService)
            customerService.addCust(customer);

            // Bind into Session
            HttpSession session = request.getSession();
            session.setAttribute("customer", customer);
            session.setMaxInactiveInterval(-1);

            signedIn = true;
            message = "Succesfully Registered";
            url = "/video/DySpee.jsp";

        } catch (ParseException ex) {

            message = "Invalid Date. How in the world do you end up in this state?";
            customer.setDob(new Date());

        } catch (IllegalArgumentException ex) {

            message = "Retyped password does not match.";
            customer.setPassword("");

        } catch (RollbackException ex) {

            message = "Account already exists.";
            customer.setPassword("");

        }

        if (signedIn) {
            response.sendRedirect("../video/DySpee.jsp?status=2");
        } else {
            request.setAttribute("message", message);
            request.setAttribute("customer", customer);

            RequestDispatcher dispatcher
                    = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
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

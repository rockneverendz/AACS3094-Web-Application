package control.customer;

import entity.Customer;
import service.CustomerService;

// Servlet Libraries
import java.io.*;
import javax.persistence.NoResultException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

public class SignIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Initialize variables
        String message;
        String url = "/account/SignIn.jsp";
        CustomerService customerService = new CustomerService();

        try {
            // Find by Customer Email which is Unique.
            Customer customer = customerService.findCustByEmail(email);

            // Compare both passwords
            if (!password.equals(customer.getPassword())) {
                throw new IllegalArgumentException();
            }

            // Bind into Session
            HttpSession session = request.getSession();
            session.setAttribute("customer", customer);
            session.setMaxInactiveInterval(-1);

            // Redirect back to homepage with status 'Success'
            response.sendRedirect("../video/DySpee.jsp?status=1");
            return;

        } catch (NoResultException ex) {

            message = "No user with that email is found.";

        } catch (IllegalArgumentException ex) {

            message = "Password incorrect.";
        }

        request.setAttribute("message", message);
        request.setAttribute("email", email);

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

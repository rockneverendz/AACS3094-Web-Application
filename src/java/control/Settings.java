package control;

import entity.Customer;
import service.CustomerService;

// Servlet Libraries
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

public class Settings extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String passwordRe = request.getParameter("passwordRe");
        String passwordCu = request.getParameter("passwordCu");

        // Initialize variables
        HttpSession session = request.getSession();
        String message = "";
        String url = "/account/Settings.jsp";
        Customer customer = (Customer) session.getAttribute("customer");
        CustomerService customerService = new CustomerService();

        try {
            // Match current password with old password
            if (!passwordCu.equals(customer.getPassword())) {
                throw new IllegalArgumentException("Invalid Current Password.");
            }

            customer.setCustname(name);

            // Find by Customer Email which is Unique.
            if (customer == null) {
                throw new IllegalArgumentException("You have to be logged in to do that");
            }

            // Parse date
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            customer.setDob(sdf.parse(dob));

            // Do the user want to change password?
            if (!password.equals("")) {
                // Check both passwords
                if (!password.equals(passwordRe)) {
                    throw new IllegalArgumentException();
                }
                customer.setPassword(password);
            }

            // Update & Commit (over at service.CustomerService)
            // Then if success, reset user attribute.
            if (customerService.updateCustomer(customer)) {
                session.removeAttribute("customer");
                session.setAttribute("customer", customer);
                response.sendRedirect("../account/Settings.jsp?status=1");
                return;
            }
        } catch (ParseException ex) {

            message = "Invalid Date. How in the world do you end up in this state?";

        } catch (IllegalArgumentException ex) {

            message = ex.getMessage();

        }

        request.setAttribute("message", message);

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

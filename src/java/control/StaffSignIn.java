package control;

import entity.Staff;

// Servlet Libraries
import java.io.*;
import javax.persistence.NoResultException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import service.StaffService;

public class StaffSignIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        StaffService staffService = new StaffService();

        // Initialize variables
        String message;
        String url = "/staff/StaffSignIn.jsp";
        
        try {
            // Find by Staff ID which is Unique.
            Staff staff = staffService.findStaffByID(id);
            // Compare both passwords
            if (!password.equals(staff.getPassword())) {
                throw new IllegalArgumentException();
            }

            // Bind into Session
            HttpSession session = request.getSession();
            session.setAttribute("staff", staff);
            session.setMaxInactiveInterval(-1);

            // Redirect back to homepage with status 'Success'
            response.sendRedirect("staffui.jsp?status=1");
            message = "Welcome.";
            return;

        } catch (NoResultException ex) {

            message = "No such staff.";

        } catch (IllegalArgumentException ex) {

            message = "Password incorrect.";
        }

        request.setAttribute("message", message);
        request.setAttribute("id", id);

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

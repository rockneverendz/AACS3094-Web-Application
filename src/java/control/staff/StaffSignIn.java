package control.staff;

import entity.Staff;

import java.io.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

public class StaffSignIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        // Initialize variables
        EntityManager em;
        String message;
        String url = "/staff/StaffSignIn.jsp";

        try {
            EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
            em = emfactory.createEntityManager();
            
            // Find by Staff ID which is Unique.
            Staff staff = em.find(Staff.class, id);
            if (staff == null) {
                throw new NoResultException("No such staff.");
            }

            // Compare both passwords
            if (!password.equals(staff.getPassword())) {
                throw new IllegalArgumentException("Password incorrect.");
            }

            // Bind into Session
            HttpSession session = request.getSession();
            session.setAttribute("staff", staff);
            session.setMaxInactiveInterval(-1);

            // Redirect back to homepage with status 'Success'
            response.sendRedirect("staffui.jsp?status=1");
            return;

        } catch (NoResultException | IllegalArgumentException ex) {
            message = ex.getMessage();
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

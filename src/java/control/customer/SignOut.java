package control.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignOut extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Invalidate Session
        HttpSession session = request.getSession();
        
        // Check session contained customer
        if (session.getAttribute("customer") == null) {
            // Redirect back to homepage with status 'Not Signed In'
            response.sendRedirect("../video/DySpee.jsp?status=Y");
            return;
        }
        
        session.invalidate();
        // Redirect back to homepage with status 'Success'
        response.sendRedirect("../video/DySpee.jsp?status=0");
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

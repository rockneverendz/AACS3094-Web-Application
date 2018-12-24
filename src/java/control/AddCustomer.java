package control;
import entity.Customer;

// Servlet Libraries
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.*;
import javax.servlet.http.*;

// Entity Libraries
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.UserTransaction;

public class AddCustomer extends HttpServlet {
    @PersistenceContext EntityManager em;
    @Resource UserTransaction utx;

    protected void processRequest(            HttpServletRequest request,            HttpServletResponse response    )
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

        //Validate parameters
        String message = "";
        String url = ""; 
        
        try {
            java.util.Date date = new SimpleDateFormat("dd-MM-yyyy").parse(dob);
            Customer customer = new Customer(name, email, date, password);
            
            utx.begin();
            em.persist(customer);
            utx.commit();

            message = "Successfully Created";
            url = "/account/Settings.jsp";
            request.setAttribute("customer", customer);
        } catch (ParseException e){
            message = "Unable to parse Date";
        } catch (Exception e) {
            
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

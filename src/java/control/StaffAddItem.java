package control;

import entity.Product;
import service.ProductService;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StaffAddItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String name = request.getParameter("name");
            double price = Double.parseDouble(request.getParameter("price"));
            String description = request.getParameter("description");
            int rating = Integer.parseInt(request.getParameter("rating"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String genre = request.getParameter("genre");
            
            if (description.equals("")) throw new Exception(); 
            if (name.equals("")) throw new Exception();
            if (sdf.equals("")) throw new Exception(); 
            if (genre.equals("")) throw new Exception(); 
            
            Product product = new Product();
            product.setName(name);
            product.setPrice(price);
            product.setDescription(description);
            product.setRating(rating);
            product.setDaterelease(sdf.parse(request.getParameter("daterelease")));
            product.setGenre(genre);
            

            ProductService productService = new ProductService();
            productService.addProduct(product);
            HttpSession session = request.getSession();
            boolean success = true;
            session.setAttribute("success", success);
            response.sendRedirect("StaffAddConfirm.jsp");
        } catch (Exception ex) {
            String message = "Incomplete data. Please Try Again";
            String url = "/staff/StaffAdd.jsp";
            request.setAttribute("message", message);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
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

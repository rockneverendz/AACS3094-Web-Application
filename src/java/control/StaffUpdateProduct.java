package control;

import entity.Product;
import service.ProductService;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class StaffUpdateProduct extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ProductService productService = new ProductService();
            Integer id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            Double price = Double.parseDouble(request.getParameter("price"));
            String description = request.getParameter("description");
            int rating = Integer.parseInt(request.getParameter("rating"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String genre = request.getParameter("genre");
            Product product = productService.findProdByID(id);
            product.setName(name);
            product.setPrice(price);
            product.setDescription(description);
            product.setRating(rating);
            product.setDaterelease(sdf.parse(request.getParameter("daterelease")));
            product.setGenre(genre);
            
            boolean success = productService.updateProduct(product);
 
            HttpSession session = request.getSession();
            session.setAttribute("success", success);
            response.sendRedirect("StaffUpdateConfirm.jsp");
        } catch (Exception ex) {
            Logger.getLogger(AddItem.class.getName()).log(Level.SEVERE, null, ex);
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

package control;

import entity.Product;
import service.ProductService;
import java.io.*;
import java.util.List;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoadProductList extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ProductService productService = new ProductService();
            List<Product> productList = productService.findAll();
            
            HttpSession session = request.getSession();
            session.setAttribute("productList", productList);
            response.sendRedirect("DisplayProductList.jsp");
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

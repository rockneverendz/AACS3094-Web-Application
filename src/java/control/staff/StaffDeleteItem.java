package control.staff;

import entity.Product;

import service.ProductService;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class StaffDeleteItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ProductService productService = new ProductService();
            HttpSession session = request.getSession();
            Product product = (Product) session.getAttribute("product");
            Integer id = product.getProductid();

            boolean success = productService.deleteProduct(id);

            session.setAttribute("success", success);
            response.sendRedirect("StaffDeleteConfirm.jsp");
        } catch (Exception ex) {

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

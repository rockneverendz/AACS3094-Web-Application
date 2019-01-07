package control;

import entity.Product;
import service.ProductService;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class SearchProduct extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            ProductService productService = new ProductService();
            HttpSession session = request.getSession();
            Integer id = (Integer) session.getAttribute("id");
            String button = (String) session.getAttribute("button");

            Product product = productService.findProdByID(id);

            session.setAttribute("product", product);
            if (button.equals("Delete")) {
                response.sendRedirect("StaffDeleteConfirmation.jsp");
            } else {
                response.sendRedirect("StaffUpdateConfirmation.jsp");
            }
        } catch (Exception ex) {
            //TODO Add exception
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

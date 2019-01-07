package control.staff;

import entity.Product;
import service.ProductService;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StaffView extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            ProductService productService = new ProductService();
            List<Product> ProductList = productService.findAll();
            HttpSession session = request.getSession();
            session.setAttribute("ProductList", ProductList);
            response.sendRedirect("StaffDisplay.jsp");
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

package control;

import entity.Custorder;
import entity.Orderlist;
import entity.OrderlistPK;
import entity.Product;
import service.ProductService;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Cart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String productidS = request.getParameter("productid");

        // Initialize Variables
        OrderlistPK orderlistPK = new OrderlistPK();
        ProductService productService = new ProductService();
        Product product = productService.findProdByID(
                Integer.parseInt(productidS)
        );

        // Get session cart. If null, new cart.
        HttpSession session = request.getSession();
        ArrayList<OrderlistPK> cart = (ArrayList) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }

        try {
            int productid = Integer.parseInt(productidS);

            // We don't know Order ID, but we know Product ID
            orderlistPK.setProductid(productid);
            cart.add(orderlistPK);

        } catch (NumberFormatException ex) {
            response.sendRedirect("../video/DySpee.jsp?status=-1");
            return;
        }

        // Update Session
        session.setAttribute("cart", cart);
        response.sendRedirect("../video/trailer.jsp?productid=" + productidS + "&status=1");

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

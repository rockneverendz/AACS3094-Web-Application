package control.cart;

import entity.Orderlist;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String indexNumberS = request.getParameter("indexNumber");

        // Initialize variables
        int indexNumber;

        // Get session cart. If null, redirect with status 'Not Sign In'.
        HttpSession session = request.getSession();
        ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
        if (cart == null) {
            response.sendRedirect("../video/DySpee.jsp?status=Y");
            return;
        }

        try {
            // Parse the given parameter
            indexNumber = Integer.parseInt(indexNumberS);

            // Delete the specified index of product on the cart
            cart.remove(indexNumber);

            // Update cart and redirect back to cart with status 'Removal Success'
            response.sendRedirect("../checkout/shoppingCart.jsp?&status=1");

        } catch (NumberFormatException ex) {
            response.sendRedirect("../video/DySpee.jsp?status=-1");
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

package control;

import entity.Orderlist;
import entity.Product;
import service.ProductService;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String productidS = request.getParameter("productid");

        // Initialize Variables
        ProductService productService = new ProductService();
        Product product;
        Orderlist orderlist;
        int indexOfProduct = -1;

        // Get session cart. If null, new cart.
        HttpSession session = request.getSession();
        ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }

        try {
            // Find the product by ID
            product = productService.findProdByID(
                    Integer.parseInt(productidS)
            );

            // Find the index of product on the cart, return -1 if not found
            for (int i = 0; i < cart.size(); i++) {
                if (cart.get(i).getProduct().equals(product)) {
                    indexOfProduct = i;
                }
            }

            // If product is not in the cart yet.
            if (indexOfProduct == -1) {
                orderlist = new Orderlist();
                orderlist.setProduct(product);
                orderlist.setQty(1);
                cart.add(orderlist);
            
                // Redirect back to trailer page with status 'Success'
                response.sendRedirect("../video/trailer.jsp?productid=" + productidS + "&status=1");

            } // If product is already in the cart.
            else {
                
                // Redirect back to trailer page with status 'Failed'
                response.sendRedirect("../video/trailer.jsp?productid=" + productidS + "&status=2");
                
            }


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

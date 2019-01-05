package control;

import entity.Customer;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ProductService;
import entity.Orderlist;
import entity.Orderlist;
import entity.OrderlistPK;
import entity.OrderlistPK;
import entity.Product;
import entity.Custorder;
import java.util.Date;

public class NewOrder extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
        Customer customer = (Customer) session.getAttribute("customer");
        ProductService productService = new ProductService();
        Product product;
        int i;
        double total, subtotal = 0;
        
        String custName = request.getParameter("custName");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        Custorder co = new Custorder();
        Orderlist ol = new Orderlist();
        OrderlistPK olpk = new OrderlistPK();
        
        co.setOrderdate(new Date());
        co.setCustid(customer);
        co.setOrderlistList(cart);
        co.setStatus("Processing");
        co.set
        
        ol.setOrderlistPK(olpk);
        ol.setProduct(product);
        ol.setCustorder(custorder);
        ol.setQty(i);
        
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

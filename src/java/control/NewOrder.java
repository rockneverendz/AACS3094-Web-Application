package control;

import entity.Customer;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CustOrderService;
import service.ProductService;
import entity.Orderlist;
import entity.OrderlistPK;
import entity.Product;
import entity.Custorder;
import java.util.Date;

public class NewOrder extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameter from the form
        String rcvName = request.getParameter("rcvName");
        String rcvPhone = request.getParameter("rcvPhone");
        String rcvAddress = request.getParameter("rcvAddress");
        
        // Initialize variables
        HttpSession session = request.getSession();
        ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
        Customer customer = (Customer) session.getAttribute("customer");
        CustOrderService custOrderService = new CustOrderService();
        
        Custorder co = new Custorder();
        
        co.setOrderdate(new Date());
        co.setReceivername(rcvName);
        co.setReceiveraddress(rcvAddress);
        co.setTrackingno("");
        co.setStatus("Processing");
        
        custOrderService.addCustorder(co, cart, customer);
        
        custOrderService.close();
        
        response.sendRedirect("../video/DySpee.jsp?status=success");
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

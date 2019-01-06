package control;

import entity.Orderlist;
import entity.Custorder;
import entity.Customer;

import service.CustOrderService;

import java.io.IOException;
import java.util.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        Custorder custOrder = new Custorder();
        
        // Insert values into CustOrder
        custOrder.setOrderdate(new Date());
        custOrder.setReceivername(rcvName);
        custOrder.setReceiveraddress(rcvAddress);
        custOrder.setTrackingno("");
        custOrder.setStatus("Processing");
        
        // Insert and commit
        custOrderService.addCustorder(custOrder, cart, customer);
        custOrderService.close();
        
        // Redirect to order page..?
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

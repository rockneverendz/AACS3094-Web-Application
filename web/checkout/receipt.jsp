<!DOCTYPE html>

<%@page import="service.CustOrderService" %>
<%@page import="entity.Customer" %>
<%@page import="entity.Custorder" %>
<%@page import="entity.Orderlist" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    //If user is not logged in
    Customer customer = (Customer) session.getAttribute("customer");
    if (customer == null) {
        response.sendRedirect("../video/DySpee.jsp?status=Y");
        return;
    }

    //
    ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
    if (cart == null) {
        response.sendRedirect("../video/DySpee.jsp?status=E");
        return;
    }

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    CustOrderService custOrderService = new CustOrderService();
    List<Custorder> custorderlist = custOrderService.findByCustID(customer.getCustid());
    String name;
    int quantity, last;
    double price, total, subtotal = 0;
    Custorder custorder;
%>

<html>
    <head>
        <title>Order History</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            #main{
                padding: 50px;
            }

            #cekOut {
                color: #fff;
                display: block;
                float: right;
                padding: 10px;
                margin: 15px 20px;
                background-color: rgba(0, 0, 0, 0.5);
                box-shadow: 0 0 3px 3px rgb(255, 255, 255);
                border-radius: 10px;
                font-size: 20px;
                font-weight: bold;
            }

            #cekOut:hover {
                box-shadow: 0 0 20px 5px rgb(12, 147, 218);
            }

        </style>
    </head>
    <body>
        <!-- Header  -->
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>
        <!--Container Start-->
        <div id="container">
            <div class="message-container">Order created successfully.</div>
            <div class="article-container" style="color:white;">
                <div id="main">
                    <h1 style="color: white">Order Receipt</h1><br>

                    <%  last = custorderlist.size() - 1;
                        custorder = custorderlist.get(last);
                    %>

                    <div class="row"><h4>Order ID : #<%= custorder.getOrderid()%>
                        </h4></div>
                    <div class="row"><h5>Order Date: <%= sdf.format(custorder.getOrderdate())%>
                        </h5></div>
                    <div class="row"><h5>Tracking No : ABCD12345678
                        </h5></div>
                    <div class="row"><h5>Status: <%= custorder.getStatus()%>
                        </h5></div>

                    <table class="table table-dark table-bordered table-hover">
                        <thead>
                            <tr scope="row">
                                <th scope="col">Item</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Price</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>

                        <tbody>

                            <%
                                for (Orderlist orderlist : custorder.getOrderlistList()) {
                                    name = orderlist.getProduct().getName();
                                    quantity = orderlist.getQty();
                                    price = orderlist.getProduct().getPrice();
                                    total = price * quantity;
                                    subtotal += total;
                            %>

                            <tr scope="row" id="list">
                                <td>
                                    <h4><%= name%></h4>
                                </td>
                                <td>
                                    <h4><%= quantity%></h4>
                                </td>
                                <td><%= price%></td>
                                <td><strong>RM <%= total%></strong></td>

                                <%
                                    }
                                %>
                            </tr>
                            <tr scope="row">
                                <td colspan="3"><strong>Subtotal:</strong></td>
                                <td><strong>RM <%= subtotal%></strong></td>
                            </tr>
                        </tbody>
                    </table>

                    <a href="../video/DySpee.jsp">
                        <button type="submit" id="cekOut">Back To Home Page</button>
                    </a>
                </div>
            </div>
        </div>

        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

<%
    session.removeAttribute("cart");
%>
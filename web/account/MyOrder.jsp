<!DOCTYPE html>

<%@page import="service.CustOrderService" %>
<%@page import="entity.Customer" %>
<%@page import="entity.Custorder" %>
<%@page import="entity.Orderlist" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%
    //If user is not logged in
    Customer customer = (Customer) session.getAttribute("customer");
    if (customer == null) {
        response.sendRedirect("../video/DySpee.jsp?status=Y");
        return;
    }
    CustOrderService custOrderService = new CustOrderService();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    int custID = customer.getCustid();
    int quantity;
    double price, total, subtotal;
    String name;
    List<Custorder> custorderlist = custOrderService.findByCustID(custID);
%>

<html>
    <head>
        <title>Order History</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            #main{
                padding: 50px;

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
            <div class="article-container" style="color:white;">
                <div id="main">
                    <h1 style="color: white">Order History</h1><br>

                    <%  for (Custorder custorder : custorderlist) {
                            subtotal = 0;
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

                    <%                }
                    %>
                </div>
            </div>
        </div>

        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

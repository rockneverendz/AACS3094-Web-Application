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
        <meta charset="uft-8">
        <title>Order History|Dyspee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/base.css" rel="stylesheet" />

        <!-- Importing Bootstrap 4-->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="../bootstrap-4.2.1-dist/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="../bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
        <!-- Font Awesome Allows Input external Icon -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>
    <body>
        <!-- Header  -->
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>


        <!--Container Start-->

        <div id="container">
            <div class="article-container" style="color:white;">
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

        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

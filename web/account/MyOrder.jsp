
<%@page import="service.CustOrderService" %>
<%@page import="entity.Customer" %>
<%@page import="entity.Custorder" %>
<%@page import="entity.Orderlist" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Collections" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
    Customer customer = (Customer) session.getAttribute("customer");
    CustOrderService orderService = new CustOrderService();
    int custID = customer.getCustid();

%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <div class="article-container">
            <h1 style="color: white">Order History</h1><br>

            <div class="row" style="color:white;">
                <h4>&nbsp;&nbsp;&nbsp;Order ID : "GET ID" Order Date: "GET ORDER DATE" Tracking No : "GET TRACKING NUM" Status: "GET STATUS"</h4>
            </div>

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
                    <tr scope="row" id="list">
                        <td>
                            <h4>"GET NAME"</h4>
                        </td>
                        <td>
                            <h4>"GET QTY"</h4>
                        </td>
                        <td>RM "GET PRICE"</td>
                        <td><strong>RM "GET TOTAL"</strong></td>

                    </tr>
                    <tr scope="row">
                        <td colspan="3"><strong>Subtotal:</strong></td>
                        <td><strong>"GET SUBTOTAL"</strong></td>
                    </tr>

                </tbody>
            </table>
        </div>



        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

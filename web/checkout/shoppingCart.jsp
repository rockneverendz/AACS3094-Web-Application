<!DOCTYPE html>

<%@page import="service.ProductService"%>
<%@page import="entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Orderlist"%>
<%
    ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
    ProductService productService = new ProductService();
    Product product;
    int i;
    double total, subtotal = 0;
%>

<html>
    <body>
    <head>
        <meta charset="uft-8">
        <title>Shopping Cart|Dyspee Video</title>
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

        <style>
            /*-Shopping Cart Table-*/
            /*Submit button style*/
            td > img {
                float:left;
                margin-left: 10px;
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
            }

            #cekOut:hover {
                color: aqua;
                box-shadow: 0 0 3px 3px aqua;
            }

            /* delete button*/
            #bin {
                margin: 40px 15px 0 0;
                padding: 10px;
                float: right;
                background-color: rgba(1, 1, 1, 0.5);
                border: none;
                border-radius: 10px;
                color: #fff;
                font-size: 13px;
                font-weight: bold;
                cursor: pointer;
            }

            #bin:hover {
                background-color: dimgray;
            }
        </style>
    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <%--
        Status code 0 = Successfully Signed Out
        Status code 1 = Successfully Signed In
        --%>

        <%  String status = request.getParameter("status");
            String message;
            if (status == null) {
                message = "";
            } else {
                char code = status.charAt(0);
                if (code == '1') {
                    message = "Item removed successfully.";
                } else if (code == '0') {
                    message = "Item does not exist in cart.";
                } else {
                    message = "Error has occured";
                }
        %>

        <div class="message-container"><%= message%></div>

        <%
        }
        %>

        <!--Container Start-->
        <div class="article-container">

            <%  // If cart object exists and not empty
                if (cart != null && !cart.isEmpty()) {
            %>

            <!--Cart-->

            <h1 style="color: white">Your Shopping Cart</h1><br>
            <table class="table table-dark table-bordered table-hover">
                <thead>
                    <tr scope="row">
                        <th scope="col">Items</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Price</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%  for (i = 0; i < cart.size(); i++) {
                            Orderlist cartmember = cart.get(i);
                            product = cartmember.getProduct();
                            total = cartmember.getQty() * product.getPrice();
                            subtotal += total;
                    %>

                    <tr scope="row" id="list">
                        <td>
                            <img src="<%= product.getPoster()%>" width="100px"/>
                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;<%= product.getName()%></h4>
                            <a class="trash" href="../checkout/DeleteItem?indexNumber=<%= i%>" >
                                <button type="submit" id="bin"><i class="fas fa-trash-alt"></i> Remove</button>
                            </a>
                        </td>
                        <td>
                            <input style="width: 50px;" type="number" value="<%= cartmember.getQty()%>" min="1" />
                        </td>
                        <td>RM <%= String.format("%.2f", product.getPrice()) %></td>
                        <td><strong>RM <%= String.format("%.2f", total ) %></strong></td>

                    </tr>

                    <%    }
                    %>

                    <tr scope="row">
                        <td colspan="3"><strong>Subtotal:</strong></td>
                        <td><strong><%= String.format("RM %.2f", subtotal)%></strong></td>
                    </tr>
                </tbody>
            </table>


            <a href="payment.jsp">
                <button type="submit" id="cekOut">Proceed to Checkout</button>
            </a>
        </div>
        <%  // If cart object does not exist or empty
        } else {
        %>

        <div class="container-fluid" style="height: 30em;">
            <h1 style="margin: 25%; color: white;"> Your cart is empty! :( </h1>
        </div>

        <%  }
        %>
    </div>

    <!-- Footer  -->
    <footer>
        <%@ include file="../layout/footer.jsp"%>
    </footer>
</body>
</html>

<%
    productService.close();
%>
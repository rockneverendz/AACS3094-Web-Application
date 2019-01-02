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
%>

<html>
    <head>
        <meta charset="uft-8">
        <title>Shopping Cart|Dyspee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="style/cartStyle.css" rel="stylesheet" />
        
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


        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
    </head>

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
        <div id="col1" class="row1">

            <table id="cartTable">
                <caption>Your Shopping Cart</caption>
                <tr>
                    <th>Items</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>

                <%  for (i = 0; i < cart.size(); i++) {
                        Orderlist cartmember = cart.get(i);
                        product = cartmember.getProduct();
                %>

                <tr id="list">
                    <td class="item">
                        <a class="trash" href="../checkout/DeleteItem?indexNumber=<%= i%>" ><i class="fas fa-trash-alt"></i></a>
                        <img src=<%= product.getPoster()%> />
                        <p><%= product.getName()%></p>
                    </td>
                    <td>
                        <input type="number" value="<%= cartmember.getQty()%>" min="1" />
                    </td>
                    <td>
                        <em>RM<%= String.format("%.2f", product.getPrice())%></em>
                    </td>
                </tr>

                <%    }
                %>
            </table>
        </div>

        <!--Order Summary-->
        <div id="col2" class="row1">
            <table class="ordTable">
                <caption>Order Summary</caption>
                <tr>
                    <th>Items</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                <%  for (Orderlist cartmember : cart) {
                        product = cartmember.getProduct();
                %>      
                <tr>
                    <td><%= product.getName()%></td>
                    <td>
                        <div id="qitem1"></div>
                    </td>
                    <td>
                        <em><div class="totalPrice1"></div></em>
                    </td>
                </tr>
                <%    }
                %>   
                <tr>
                    <td colspan="3">Shipping fee:</td>
                    <td><em>RM 0.00 (FREE!)</em></td>
                </tr>
                <tr>
                    <td colspan="3"><em>Subtotal:</em></td>
                    <td>
                        <em><div id="subTotal"></div></em>
                    </td>
                </tr>
            </table>

            <a href="payment.jsp">
                <button type="submit" id="cekOut">Proceed to Checkout</button>
            </a>

        </div>

        <%  // If cart object does not exist or empty
        } else {
        %>

        <div> Your cart is empty! :( </div>

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
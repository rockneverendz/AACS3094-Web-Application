<!DOCTYPE html>

<%@page import="service.ProductService"%>
<%@page import="entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Orderlist"%>
<%
    ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
    Product product;
    ProductService productService = new ProductService();
    if (cart == null) {
        cart = new ArrayList<>();
    }
%>

<html>
    <head>
        <meta charset="uft-8">
        <title>Shopping Cart|Dyspee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="style/cartStyle.css" rel="stylesheet" />

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
    </head>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <!--Container Start-->

        <div class="article-container">
            <!--Cart-->
            <div id="col1" class="row1">

                <table id="cartTable">
                    <caption>Your Shopping Cart</caption>
                    <tr>
                        <th>Items</th>
                        <th>Select Dics Type</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>

                    <%  for (Orderlist cartmember : cart) {
                            product = cartmember.getProduct();
                    %>

                    <tr id="list">
                        <td class="item">
                            <a class="trash" href="../checkout/DeleteItem?productid=<%= product.getProductid() %>" ><i class="fas fa-trash-alt"></i></a>
                            <img src=<%= product.getPoster()%> />
                            <p><%= product.getName()%></p>
                        </td>
                        <td>
                            <input type="radio" name="radio<%= product.getProductid() %>" value="bluray" checked />
                            <label><img src="image/blu-ray-logo.png"/></label>
                            <br/>
                            <input type="radio" name="radio<%= product.getProductid()%>" value="dvd"/>
                            <label><img src="image/dvd-logo.png"/></label>
                        </td>
                        <td>
                            <input type="number" value="<%= cartmember.getQty() %>" min="1" />
                        </td>
                        <td>
                            <em>RM<%= String.format("%.2f", product.getPrice())%></em>
                        </td>
                    </tr>

                    <%    }
                    %>
                </table>
            </div>

            <!--Order Summary---------------------------------------->
            <div id="col2" class="row1">
                <table class="ordTable">
                    <caption>Order Summary</caption>
                    <tr>
                        <th>Items</th>
                        <th>Dics Type</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                    <%  for (Orderlist cartmember : cart) {
                            product = cartmember.getProduct();
                    %>      
                    <tr>
                        <td><%= product.getName() %></td>
                        <td>
                            <div id="dicsImg1"></div>
                        </td>
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
<!DOCTYPE html>

<%@page import="service.ProductService"%>
<%@page import="entity.OrderlistPK"%>
<%@page import="entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Orderlist"%>
<%
    ArrayList<OrderlistPK> cart = (ArrayList) session.getAttribute("cart");
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
        <script src="subtotal.js"></script>

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
    </head>

    <body onload="load()">

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

                    <%  for (OrderlistPK cartmember : cart) {
                            product = productService.findProdByID(cartmember.getProductid());
                    %>

                    <tr id="list">
                        <td class="item">
                            <form action="DeleteItem" method="POST">
                                <input type="hidden" name="productid" value="<%= product.getProductid()%>" />
                                <button class="trash"><i class="fas fa-trash-alt"></i></button>
                            </form> 
                            <img src=<%= product.getPoster()%> />
                            <p><%= product.getName()%></p>
                        </td>
                        <td>
                            <input type="radio" name="selecteditem1" value="bluray" onclick="calculateTotal1()" onchange="subTotal()" checked />
                            <label><img src="image/blu-ray-logo.png"/></label>
                            <br/>
                            <input type="radio" name="selecteditem1" value="dvd" onclick="calculateTotal1()" onchange="subTotal()" />
                            <label><img src="image/dvd-logo.png"/></label>
                        </td>
                        <td>
                            <input type="number" id="myNumber1" value="1" min="1" onclick="calculateTotal1()" onchange="subTotal()" />
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
                    <tr>
                        <td>Avengers: Infinity War(2018)</td>
                        <td>
                            <div id="dicsImg1"></div>
                        </td>
                        <!-- -------------------- -->
                        <td>
                            <div id="qitem1"></div>
                        </td>
                        <td>
                            <em><div class="totalPrice1"></div></em>
                        </td>
                    </tr>
                    <tr>
                        <td>The Avengers (2012)</td>
                        <td>
                            <div id="dicsImg2"></div>
                        </td>
                        <td>
                            <div id="qitem2"></div>
                        </td>
                        <td>
                            <em><div class="totalPrice2"></div></em>
                        </td>
                    </tr>
                    <tr>
                        <td>Avengers: Age of Ultron (2015)</td>
                        <td>
                            <div id="dicsImg3"></div>
                        </td>
                        <td>
                            <div id="qitem3"></div>
                        </td>
                        <td>
                            <em><div class="totalPrice3"></div></em>
                        </td>
                    </tr>
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

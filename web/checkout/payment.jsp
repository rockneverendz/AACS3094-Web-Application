<!DOCTYPE html>

<%@page import="service.ProductService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Product"%>
<%@page import="entity.Orderlist"%>
<%@page import="entity.Customer"%>
<%
    ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
    Customer customer = (Customer) session.getAttribute("customer");
    Product product;
    double total, subtotal = 0;

    //If user is not logged in
    if (customer == null) {
        response.sendRedirect("../account/SignIn.jsp?status=Y");
        return;
    }

%>

<html>
    <head>
        <title>Checkout</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            h2, label{
                font-weight: bold;
                color: white;
            }

            #submitBtn {
                display: block;
                margin-left: 12px;
                padding: 5px;
                float: right;
                color: #fff;
                background-color: rgba(0, 0, 0, 0.5);
                font-size: 20px;
                border-radius: 10px;
                box-shadow: 0 0 20px 5px white;
                cursor: pointer;
            }

            #submitBtn:hover {
                box-shadow: 0 0 20px 5px rgb(12, 147, 218);
            }
        </style>
    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div id="container">
            <div class="article-container">
                <div class="container-fluid row" style="height: 40em;">
                    <div class="col-md-6" style="padding-left: 5%;">
                        <form action="NewOrder" method="GET">
                            <h2>Delivery Information</h2>
                            <div class="form-group row col-md-6">
                                <label for="name">*Name :</label>
                                <input class="form-control"name="rcvName" value = "<%= customer.getCustname()%>" id="custName" type="text" placeholder="e.g. First name & last name" required />
                            </div>
                            <div class="form-group row col-md-6">
                                <label for="phone">*Phone Number :</label>
                                <input class="form-control"name="rcvPhone" value = "<%= customer.getPhoneno()%>" id="phone" type="tel" placeholder="e.g. (nnn)nnn-nnnn" required />
                            </div>
                            <div class="form-group row col-md-8">
                                <label for="address">*Address :</label>
                                <textarea class="form-control" name = "rcvAddress" type="text" placeholder="Address" rows="4" cols="50"><%= customer.getAddress()%></textarea>
                            </div>
                            <div class="form-group row col-md-6">
                                <button id="submitBtn" type="submit">Continue</button>
                            </div>
                        </form>
                    </div>


                    <!--Order Summary-->
                    <div class="col-md-6">
                        <h2>Order Summary</h2>
                        <table class="table table-dark table-bordered table-hover">
                            <thead>
                                <tr scope="row">
                                    <th scope="col">Items</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Total(RM)</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%  for (Orderlist cartmember : cart) {
                                        product = cartmember.getProduct();
                                        total = cartmember.getQty() * product.getPrice();
                                        subtotal += total;
                                %>      

                                <tr scope="row" id="list">
                                    <td><%= product.getName()%></td>
                                    <td><%= cartmember.getQty()%></td>
                                    <td><em><%= product.getPrice()%></em></td>
                                    <td><em><%= String.format("%.2f", total)%></em></td>
                                </tr>

                                <%    }
                                %>   

                                <tr>
                                    <td colspan="2">Shipping fee:</td>
                                    <td>FREE!</td>
                                    <td><em>0.00</em></td>
                                </tr>
                                <tr scope="row">
                                    <td colspan="3"><strong>Subtotal:</strong></td>
                                    <td><strong style="color: yellow"><%= String.format("%.2f", subtotal)%></strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

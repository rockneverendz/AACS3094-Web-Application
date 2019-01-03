<!DOCTYPE html>

<%@page import="service.ProductService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Product"%>
<%@page import="entity.Orderlist"%>
<%@page import="entity.Customer"%>
<%
    ArrayList<Orderlist> cart = (ArrayList) session.getAttribute("cart");
    Customer customer = (Customer) session.getAttribute("customer");
    ProductService productService = new ProductService();
    Product product;
    int i;
%>

<html>
    <head>
        <meta charset="uft-8">
        <title>Checkout|Dysee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/image/DySpeeOnline.png" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="style/payment.css" rel="stylesheet" />
        <link href="style/paymentStyle2.css" rel="stylesheet" />
        <script src="payment.js"></script>

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">

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
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div class="article-container">
            <div class="box" id="deliInfo">
                <form id="delivery">

                    <fieldset class="delField">
                        <legend>Delivery Information</legend>
                        <div class="formRow">
                            <label for="name">*Name :</label>
                            <input name="custName" id="custName" type="text" placeholder="e.g. First name & last name" required>
                        </div>

                        <div class="formRow">
                            <label for="phone">*Phone Number :</label>
                            <input name="phone" value = "<%= customer.getPhoneno() %>" id="phone" type="tel" placeholder="e.g. (nnn)nnn-nnnn" required />
                        </div>

                        <div class="formRow">
                            <label for="address">*Address :</label>
                            <textarea name="address" value = "<%= customer.getAddress() %>" id="address" type="text" placeholder="Please fill up the actual address of your house" rows="4" cols="50" required></textarea>
                        </div>
                        
                        <button id="submitBtn" type="submit">Continue</button>
                    </fieldset>
                </form>
            </div>


            <!--Order Summary-->
            <div class="box" id="ordSumary">
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
                        <td><%= cartmember.getQty() %></td>
                        <td><em><%= cartmember.getQty()*product.getPrice() %></em></td>
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

            </div>

            <!--Select Payment Method-->

            <div class="box" id="payMetd">


                <div id="payHeader">Select Payment Method</div>

                <div class="pay" id="pay">

                    <button class="tablink" onclick="openPage('CDCard', this, 'rgba(255, 0, 0, 0.5)')" id="defaultOpen">Credit/Debit Card <br/><i class="far fa-credit-card"></i></button>
                    <button class="tablink" onclick="openPage('onBank', this, 'rgba(255, 215, 0, 0.5)')">Online Banking<br/><i class="fas fa-desktop"></i></button>
                    <button class="tablink" onclick="openPage('pal', this, 'rgba(0, 0, 255, 0.5)')">Paypal <br/><i class="fab fa-paypal"></i></button>
                    <button class="tablink" onclick="openPage('onCash', this, 'rgba(0, 255, 0, 0.5)')">Cash on Delivery<br/><i class="far fa-money-bill-alt"></i></button>

                    <form id="privateInfo">
                        <fieldset id="CDCard" class="tabcontent">
                            <h3>Credit/Debit Card &nbsp; <i class="fab fa-cc-visa"></i> <i class="fab fa-cc-mastercard"></i></h3>

                            <div class="formRow">
                                <label>*Card Number</label>
                                <input type="text" placeholder="Card Number" required/>
                            </div>
                            <div class="formRow">
                                <label>*Name on Card</label>
                                <input type="text" placeholder="Name on card" required/>
                            </div>
                            <div class="formRow">
                                <label>*Expiration Date</label>
                                <input type="date" placeholder="DD/MM/YY" required/>
                            </div>
                            <div class="formRow">
                                <label>*CVV</label>
                                <input type="text" placeholder="CVV" required/>
                            </div>

                            <button id="submitBtn" type="submit">Place Order Now</button>


                        </fieldset>

                        <fieldset id="onBank" class="tabcontent">
                            <h3>Online Banking</h3>
                            <p>You be redirected to selected bank website to complete the payment.</p>

                            <div id="bankGrp">
                                <a href="#">
                                    <div class="bank"><img src="image/icon1.png" /> Maybank</div>
                                </a>
                                <a href="#">
                                    <div class="bank"><img src="image/icon2.png" /> CIMB Bank</div>
                                </a>
                                <a href="#">
                                    <div class="bank"><img src="image/icon3.png" /> Public Bank</div>
                                </a>
                                <a href="#">
                                    <div class="bank"><img src="image/icon4.png" /> RHB Bank</div>
                                </a>
                                <a href="#">
                                    <div class="bank"><img src="image/icon5.png" /> Hong Leong Bank</div>
                                </a>
                                <a href="#">
                                    <div class="bank"><img src="image/icon6.png" /> Bank Islam</div>
                                </a>
                                <a href="#">
                                    <div class="bank"><img src="image/icon7.png" /> AmBank</div>
                                </a>
                            </div>
                            <button id="submitBtn" type="submit">Place Order Now</button>

                        </fieldset>

                        <fieldset id="pal" class="tabcontent">
                            <h3>Paypal</h3>
                            <p>You will be redirected to Paypal to complete payment.</p>

                            <button id="submitBtn" type="submit">Place Order Now</button>
                        </fieldset>

                        <fieldset id="onCash" class="tabcontent">
                            <h3>Cash on Delivery</h3>
                            <p>You can pay in cash to our courier when you receive the goods at your doorstep.</p>

                            <input id="checkbox" type="checkbox" name="comfrim" value="comfrim" checked/>
                            <label>Billing address is the same as shipping address.</label>

                            <button id="submitBtn" type="submit">Place Order Now</button>

                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>

</html>

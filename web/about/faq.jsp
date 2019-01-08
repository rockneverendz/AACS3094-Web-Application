<!DOCTYPE>
<html>

    <head>
        <title>FAQ</title>
        <link rel="stylesheet" href="style/faqdesign.css">
        <%@ include file="../layout/meta.jsp"%>
    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div id="container">
            <div class="article-container">
                <div class="main">
                    <div class="container">
                        <div id="title"><strong id="faq">FAQ</strong><img src="icon/conversation.png">
                            <div id="description">Everything you really needs to know about DYSPEE.</div>
                        </div>

                        <div id="accordion">
                            <div class="card">
                                <div class="card-header">
                                    <a class=" collapsed card-link" data-toggle="collapse" href="#collapseOne">
                                        How do I place an order?
                                    </a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                    <div class="card-body">
                                        choose your product<br>
                                        check product information<br>
                                        add to cart<br>
                                        enter your email<br>
                                        provide delivery information<br>
                                        choose your payment method<br>
                                        place your order<br>
                                        receive order confirmation<br>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
                                        How can I change delivery address/ phone number/ recipient for my existing order?
                                    </a>
                                </div>
                                <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                    <div class="card-body">
                                        Changes in delivery address / phone number / recipient of the item is not allowed after the order has been successfully made. <br>This is one of the precaution steps to avoid fraud attempt. Kindly ensure all the information is correct prior placing an order.                                      </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
                                        Can I cancel my booking?
                                    </a>
                                </div>
                                <div id="collapseThree" class="collapse" data-parent="#accordion">
                                    <div class="card-body">
                                        Yes, you can. However, cancellation is only allowed if the appointment had not been confirmed.<br> You may contact Dyspee to cancel the order. </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
                                        Why isn't my payment method accepted?
                                        < /a>
                                </div>
                                <div id="collapseFour" class="collapse" data-parent="#accordion">
                                    <div class="card-body">
                                        Dyspee accepts many payment methods. <br>If you've confirmed that your payment method is listed under ?How can I pay for Dyspee?? above, <br>and your payment method is still not being accepted, contact us for further assistance.</div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
                                        How much does each Movie cost?
                                    </a>
                                </div>
                                <div id="collapseFive" class="collapse" data-parent="#accordion">
                                    <div class="card-body">
                                        Price of each movies are different, please refer to the your favourite movie's pages for more information.
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseSix">
                                        What do I do when someone is using my Dyspee account without my permission?
                                    </a>
                                </div>
                                <div id="collapseSix" class="collapse" data-parent="#accordion">
                                    <div class="card-body">
                                        Please contact us to logout your account from each device and change your password as soon as possible.<br> But if you know the person [or you suspect someone] quickly go and beg them to stop.<br></div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseSeven">
                                        With what devices can I connect to Dyspee?
                                    </a>
                                </div>
                                <div id="collapseSeven" class="collapse" data-parent="#accordion">
                                    <div class="card-body">
                                        As long as your computer, gaming console, DVD or Blu Ray player, HDTV, set-top box, home theater system, phone or tablet are connected to the internet, you can watch access to Dyspee.</div>
                                </div>
                            </div>
                        </div>
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

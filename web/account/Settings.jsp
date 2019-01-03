<!doctype html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/settings.css" rel="stylesheet" />

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

        <!--
            //Status code -1= An error has occured
            //Status code 0 = Successfully Signed Out
            //Status code 1 = Successfully Signed In
            //Status code 2 = Successfully Signed Up
        -->

        <%@ page import = "entity.Customer" %>
        <%@ page import = "java.util.Date" %>
        <%@ page import = "java.text.SimpleDateFormat" %>
        <%
            //If user is not logged in
            Customer customer = (Customer) session.getAttribute("customer");
            if (customer == null) {
                response.sendRedirect("../video/DySpee.jsp?status=Y");
                return;
            }

            //For parsing date in Date of Birth field
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        %>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <%  String status = request.getParameter("status");
            String message = (String) request.getAttribute("message");
            //If no status are recieved, no need division
            if (status != null) {
                char code = status.charAt(0);
                if (code == '1') {
        %>
        <div class="message-container">Successfully Updated!</div>
        <%      }
        } //Else if no message are recieved, no need division
        else if (message != null) {
        %>
        <div class="error-container"><%= message%></div>
        <%
            }
        %>

        <div class="article-container">
            <form action="Settings" method="GET">
                <fieldset id="settings">
                    <legend>Settings</legend>
                    <div class="formRow">
                        <label>Name :&ensp;</label>
                        <input name = "name" value = "<%= customer.getCustname()%>" type = "text" placeholder = "Name" required = "true"/>
                    </div>
                    <div class="formRow">
                        <label>*Email :&ensp;</label>
                        <input name = "email" value = "<%= customer.getEmail()%>" type = "text" placeholder = "Email" disabled = "true"/>
                    </div>
                    <div class="formRow">
                        <label>Date Of Birth :&ensp;</label>
                        <input name = "dob" value = "<%= sdf.format(customer.getDob())%>" type="date" />
                    </div>
                    <div class="formRow">
                        <label>Phone No. :&ensp;</label>
                        <input name = "phoneno" value = "<%= customer.getPhoneno()%>" type="text" placeholder="Phone Number" />
                    </div>
                    <div class="formRow">
                        <label>Address :&ensp;</label>
                        <input name = "address" value = "<%= customer.getAddress()%>" type="text" placeholder="Address" />
                    </div>
                    <div class="formRow">
                        <label>*Password :&ensp;</label>
                        <input name = "password" type = "password" placeholder = "Password" />
                    </div>
                    <div class="formRow">
                        <label>*Retype Password :&ensp;</label>
                        <input name = "passwordRe" type = "password" placeholder = "Password" />
                    </div>
                    <br>
                    <div class="formRow">
                        <label>*Current Password :&ensp;</label>
                        <input name = "passwordCu" type = "password" placeholder = "Password" required/>
                    </div>
                    <div class="formRow">
                        <label>&ensp;</label>
                        <button id="submitBtn" type="submit">Save Settings</button>
                    </div>
                </fieldset>
            </form>
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>

</html>

<!doctype html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/settings.css" rel="stylesheet" />
    </head>

    <body>

        <%
            //Status code -1= An error has occured
            //Status code 0 = Successfully Signed Out
            //Status code 1 = Successfully Signed In
            //Status code 2 = Successfully Signed Up
        %>

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
            if (status != null) {
                char code = status.charAt(0);
                if (code == '1') {
        %>

        <div class="message-container">
            Successfully Updated!
        </div>

        <%      }
            }
        %>

        <div class="article-container">
            <form action="Settings" method="GET">
                <fieldset id="settings">
                    <legend>Settings</legend>

                    <%  //If no message are recieved, set it empty.
                        String message = (String) request.getAttribute("message");
                        if (message != null) {
                    %>
                    <div class="error-container"><%= message%></div>
                    <%
                        }
                    %>

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
                        <input name = "passwordCu" type = "password" placeholder = "Password" />
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

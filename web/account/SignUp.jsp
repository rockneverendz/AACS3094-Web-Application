<!doctype html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/signup.css" rel="stylesheet" />
    </head>

    <body>
        <%@ page import = "entity.Customer" %>
        <%@ page import = "java.util.Date" %>
        <%@ page import = "java.text.SimpleDateFormat" %>
        <%
            //If user already logged in
            if (session.getAttribute("customer") != null) {
                response.sendRedirect("../video/DySpee.jsp?status=A");
                return;
            }
            
            //If no object are recieved, create a new object.
           Customer customer = (Customer) request.getAttribute("customer");
            if (customer == null) {
                customer = new Customer();
                customer.setCustname("");
                customer.setEmail("");
                customer.setDob(new Date());
            }

            //For parsing date in Date of Birth field
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        %>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div class="article-container">
            <form action="SignUp" method="post">
                <fieldset id="settings">
                    <legend>Sign Up</legend>

                    <%  //If no message are recieved, set it empty.
                        String message = (String) request.getAttribute("message");
                        if (message != null) {
                    %>
                    <div class="error-container"><%= message%></div>
                    <%
                        }
                    %>

                    <div class="formRow">
                        <label>*Name :&ensp;</label>
                        <input name = "name" value = "<%= customer.getCustname()%>" type="text" placeholder="Name" required="true"/>
                    </div>
                    <div class="formRow">
                        <label>*Email :&ensp;</label>
                        <input name = "email" value = "<%= customer.getEmail()%>" type="text" placeholder="Email" required="true"/>
                    </div>
                    <div class="formRow">
                        <label>Date Of Birth :&ensp;</label>
                        <input name = "dob" value = "<%= sdf.format(customer.getDob())%>" type="date" />
                    </div>
                    <div class="formRow">
                        <label>*Password :&ensp;</label>
                        <input name = "password" type="password" placeholder="Password" required="true"/>
                    </div>
                    <div class="formRow">
                        <label>*Retype Password :&ensp;</label>
                        <input name = "passwordRe" type="password" placeholder="Password" required="true"/>
                    </div>
                    <div class="formRow">
                        <label>&ensp;</label>
                        <button id="submitBtn" type="submit">Sign Up</button>
                    </div>
                </fieldset>
            </form>
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>

</html>

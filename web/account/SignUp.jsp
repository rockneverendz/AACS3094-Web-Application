<!doctype html>

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
        customer.setPhoneno("");
        customer.setEmail("");
        customer.setDob(new Date());
    }

    //For parsing date in Date of Birth field
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>

<html>
    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />

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
            .signup-box{
                margin: auto;
                width: 50%;
            }

            h1{
                padding: 5px 15px;
                font-size: 100px;
                font-weight: bold;
                text-decoration: underline;
            }

            h1, label{
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
                color: rgb(12, 147, 218);
                box-shadow: 0 0 20px 5px rgb(12, 147, 218);
            }

        </style>
    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <%  //If no message are recieved, no need division
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <div class="error-container"><%= message%></div>
        <%
            }
        %>


        <div id="container">
            <div class="article-container">
                <form action="SignUp" method="post">
                    <div class="container-fluid signup-box">
                        <h1>Sign Up</h1>

                        <div class="form-group row col-md-6">
                            <label>*Name :&ensp;</label>
                            <input class="form-control" name = "name" value = "<%= customer.getCustname()%>" type="text" placeholder="Name" required/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Phone Number :&ensp;</label>
                            <input class="form-control" name = "phone" value = "<%= customer.getPhoneno()%>" type="text" placeholder="012-3456789" required/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Email :&ensp;</label>
                            <input class="form-control" name = "email" value = "<%= customer.getEmail()%>" type="text" placeholder="email@example.com" required/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>Date Of Birth :&ensp;</label>
                            <input class="form-control" name = "dob" value = "<%= sdf.format(customer.getDob())%>" type="date" />
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Password :&ensp;</label>
                            <input class="form-control" name = "password" type="password" placeholder="Password" required/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Retype Password :&ensp;</label>
                            <input class="form-control" name = "passwordRe" type="password" placeholder="Password" required/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>&ensp;</label>
                            <button id="submitBtn" type="submit">Sign Up</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

<!doctype html>
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
            .signin-box{
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
        <%@ page import="entity.Customer"%>
        <%
            //If user already logged in
            if (session.getAttribute("customer") != null) {
                response.sendRedirect("../video/DySpee.jsp?status=A");
                return;
            }

            //If no object are recieved, create a new object.
            String email = (String) request.getAttribute("email");
            if (email == null) {
                email = "";
            }
        %>

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

        <div class="article-container">
            <form action="SignIn" method="post">
                <div class="container-fluid signin-box">
                    <h1>Sign In</h1>

                    <div class="form-group row col-md-6">
                        <label for="exampleInputEmail1">*Email address</label>
                        <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="<%=email%>" required />
                    </div>
                    <div class="form-group row col-md-6">
                        <label for="exampleInputPassword1">Password</label>
                        <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required />
                    </div>
                    <div class="form-group row">
                        <button id="submitBtn" type="submit">Sign In</button>
                    </div>
                    <div class="form-group row" >
                        <medium class="form-text" style="margin: -10px 10px;">
                            <a href="#" style="color: white;">Forget password?</a>
                        </medium>                    
                    </div>
                </div>
            </form>
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

<!doctype html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/signin.css" rel="stylesheet" />
        
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
                <fieldset id="settings">
                    <h1>Sign In</h1>


                    <div class="formRow">
                        <label>*Email :&ensp;</label>
                        <input name = "email" type="text" placeholder="Email" value = "<%=email%>" required/>
                    </div>
                    <div class="formRow">
                        <label>*Password :&ensp;</label>
                        <input name = "password" type="password" placeholder="Password" required/>
                    </div>
                    <div class="formRow">
                        <label>&ensp;</label>
                        <button id="submitBtn" type="submit">Sign In</button>
                        <br/>
                        <label>&ensp;</label>
                        <p>Forgot your password?</p>
                    </div>
                </fieldset>
            </form>
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

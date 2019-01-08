<!doctype html>
<html>
    <head>
        <meta charset="uft-8">
        <link rel="stylesheet" href="../layout/base.css">

        <title>Staff Portal</title>
        <link href="../layout/image/DySpee.png" rel="icon" />

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

        <style>
            .article-container{
                padding-top: 110px;
                color: white;
            }

            .pannel{
                margin: 100px;
            }

            .signin-box{
                margin: auto;
                width: 50%;
            }

            h1{
                padding: 5px 15px;
                font-size: 80px;
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
        <%@ page import="entity.Staff"%>
        <%
            //If staff already logged in
            if (session.getAttribute("staff") != null) {
                response.sendRedirect("staffui.jsp?=status=A");
                return;
            }
        %>

        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>

        <div id="container">
            <%  //If no message are recieved, no need division
                String message = (String) request.getAttribute("message");
                if (message != null) {
            %>
            <div class="error-container"><%= message%></div>
            <%
                }
            %>
            <div class="article-container">
                <form action="StaffSignIn" method="post">
                    <div class="container-fluid signin-box">
                        <h1>Staff Portal</h1>

                        <div class="form-group row col-md-6">
                            <label for="exampleInputId">Staff ID</label>
                            <input name="id" type="text" class="form-control" id="exampleInputId" placeholder="Enter ID" required />
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
        </div>
    </body>
</html>

<!doctype html>

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

<html>
    <head>
        <title>Sign In</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .signin-box{
                margin: auto;
                width: 50%;
            }

            h1{
                padding: 5px 15px;
                font-size: 100px;
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
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

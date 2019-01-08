<!doctype html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
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

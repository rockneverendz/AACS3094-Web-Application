<!doctype html>

<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<%
    //If user already logged in
    if (session.getAttribute("customer") != null) {
        response.sendRedirect("../video/DySpee.jsp?status=A");
        return;
    }

    //For parsing date in Date of Birth field
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>

<jsp:useBean id="customer" class="entity.Customer" scope="request">
    <!-- Note! These statements run only if a new bean is created. --> 
    <jsp:setProperty name="customer" property="custname" value="" />
    <jsp:setProperty name="customer" property="phoneno" value="" />
    <jsp:setProperty name="customer" property="address" value="" />
    <jsp:setProperty name="customer" property="email" value="" />
    <jsp:setProperty name="customer" property="dob" value="<%= new Date()%>" />
</jsp:useBean>

<html>
    <head>
        <title>Sign Up</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .signup-box{
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
                <form action="SignUp" method="post">
                    <div class="container-fluid signup-box">
                        <h1>Sign Up</h1>

                        <div class="form-group row col-md-6">
                            <label>*Name :&ensp;</label>
                            <input class="form-control" name = "name" type="text" placeholder="Name" required
                                   value = "<jsp:getProperty name="customer" property="custname"/>"/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Phone Number :&ensp;</label>
                            <input class="form-control" name = "phone" type="text" placeholder="012-3456789" required
                                   value = "<jsp:getProperty name="customer" property="phoneno"/>"/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Email :&ensp;</label>
                            <input class="form-control" name = "email" type="email" placeholder="email@example.com" required
                                   value = "<jsp:getProperty name="customer" property="email"/>"/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>Date Of Birth :&ensp;</label>
                            <input class="form-control" name = "dob" type="date" 
                                   value = "<%= sdf.format(customer.getDob())%>"/>
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

<!doctype html>

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

<html>
    <head>
        <title>Settings</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .settings-box{
                margin: auto;
                width: 60%;
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
            <!--
                //Status code -1= An error has occured
                //Status code 0 = Successfully Signed Out
                //Status code 1 = Successfully Signed In
                //Status code 2 = Successfully Signed Up
            -->

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
                <form action="Settings" method="POST">
                    <div class="container-fluid settings-box">
                        <h1>Settings</h1>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Name :&ensp;</label>
                                <input class="form-control" name = "name" value = "<%= customer.getCustname()%>" type = "text" placeholder = "Name" required = "true"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label>*Email :&ensp;</label>
                                <input class="form-control" name = "email" value = "<%= customer.getEmail()%>" type = "text" placeholder = "email@example.com" disabled = "true"/>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Date Of Birth :&ensp;</label>
                                <input class="form-control" name = "dob" value = "<%= sdf.format(customer.getDob())%>" type="date" />
                            </div>
                            <div class="form-group col-md-6">
                                <label>Phone No. :&ensp;</label>
                                <input class="form-control" name = "phoneno" value = "<%= customer.getPhoneno()%>" type="text" placeholder="(nnn)nnn-nnnn" />
                            </div>
                        </div>
                        <div class="form-group row col-md-8">
                            <label>Address :&ensp;</label>
                            <textarea class="form-control" name = "address" type="text" placeholder="Address" rows="4" cols="50"><%= customer.getAddress()%></textarea>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Password :&ensp;</label>
                            <input class="form-control" name = "password" type = "password" placeholder = "Password" />
                        </div>
                        <div class="form-group row col-md-6">
                            <label>*Retype Password :&ensp;</label>
                            <input class="form-control" name = "passwordRe" type = "password" placeholder = "Password" />
                        </div>
                        <hr style="border-style: inset; border-width: 1px; " >
                        <div class="form-group row col-md-6">
                            <label>*Current Password :&ensp;</label>
                            <input class="form-control" name = "passwordCu" type = "password" placeholder = "Password" required/>
                        </div>
                        <div class="form-group row col-md-6">
                            <label>&ensp;</label>
                            <button id="submitBtn" type="submit">Save Settings</button>
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

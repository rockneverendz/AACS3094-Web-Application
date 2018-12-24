<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>
            <%@ page import="entity.Customer"%>
        <%
            //Test Data
         
            String date = "2013-05-29";
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date dob = sdf.parse(date);
            
            Customer customer = new Customer(
                    "Fake Name",
                    "fakeEmail@gmail",
                    dob,
                    "artist"
            );
            
            
        %>

        <div class="article-container">
            <form action="AddCustomer2" method="get">
                <fieldset id="settings">
                    <legend>Sign Up</legend>
                    <div class="formRow">
                        <label>Name :&ensp;</label>
                        <input name = "name" value = "<%= customer.getCustname()%>" type="text" placeholder="Name" />
                    </div>
                    <div class="formRow">
                        <label>*Email :&ensp;</label>
                        <input name = "email" value = "<%= customer.getEmail()%>" type="text" placeholder="Email"/>
                    </div>
                    <div class="formRow">
                        <label>Date Of Birth :&ensp;</label>
                        <input name = "dob" value = "<%= sdf.format(customer.getDob()) %>" type="date" />
                    </div>
                    <div class="formRow">
                        <label>*Password :&ensp;</label>
                        <input name = "password" type="password" placeholder="Password"/>
                    </div>
                    <div class="formRow">
                        <label>*Retype Password :&ensp;</label>
                        <input name = "passwordRe" type="password" placeholder="Password"/>
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

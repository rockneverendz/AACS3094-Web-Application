<!doctype html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/signin.css" rel="stylesheet" />
    </head>

    <body>
        <%@ page import="entity.Customer"%>
        <%
            //If no object are recieved, create a new object.
            String message = (String) request.getAttribute("message");
            String email = (String) request.getAttribute("email");
            if (message == null) {
                message = "";
            }
            if (email == null) {
                email = "";
            }
        %>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>
        
        <div class="article-container">
            <form action="SignIn" method="post">
                <fieldset id="settings">
                    <legend>Sign In</legend>
                    
                    <!--TODO Display error message better-->
                    <p><%=message%></p>
                    
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

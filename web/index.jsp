<!doctype html>

<html>

    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <script>
            //TODO redirect here.
        </script>
    </head>

    <body>
        <%@ page import="da.CustomerDA" %>
        <%
            String status;
            try {
                CustomerDA customerDA = new CustomerDA();
                status = "Success";
            } catch (Exception ex) {
                status = "Failed - " + ex.getMessage();
            }
        %>

        index.jsp
        <br/> <a href="video/DySpee.jsp">Click here to redirect to the DySpee Web Application.</a>
        <br/>
        <br/> Database Connection : <%= status%>

        <table cellspacing="5">
            <tr>
                <td>Cookie Name</td>
                <td>Cookie Value</td>
            </tr>
            <%
                Cookie[] cookies = request.getCookies();
                for (Cookie c : cookies) {
            %>
            <tr>
                <td><%= c.getName()%></td>
                <td><%= c.getValue()%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>

</html>

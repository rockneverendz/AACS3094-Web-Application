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
        index.jsp
        <br/> Redirecting to DySpee.jsp...
        <br/> <a href="video/DySpee.jsp">Click here if the page doens't redirect automatically.</a>
        <br/> If you're seeing this page, that means I fucked up.
        <br/>
    </body>

    <%
        ServletContext sc = this.getServletContext();
        String path = sc.getRealPath("/index.jsp");
    %>

    <%=path%>



</html>
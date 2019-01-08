<!doctype html>

<html>    
    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <style>
            /* Some random code snippet from stackoverflow */
            /* https://stackoverflow.com/questions/19461521/how-to-center-an-element-horizontally-and-vertically */
            body{
                font-size: xx-large;
                text-align: center;
                position: absolute;
                width: 90%;
                top: 45%;
                left: 50%;
                -moz-transform: translateX(-50%) translateY(-50%);
                -webkit-transform: translateX(-50%) translateY(-50%);
                transform: translateX(-50%) translateY(-50%);
            }
        </style>
    </head>

    <body>
        <h1>AACS3094 GUI and Web Application Programming</h1>
        <p><a href="video/DySpee.jsp">Customer Portal</a></p>
        <p><a href="staff/StaffSignIn.jsp">Staff Portal</a></p>
        <%
            ServletContext sc = this.getServletContext();
            String path = sc.getRealPath("/index.jsp");
        %>
        <p><em>This page is currently running on </em>
            <br/>"<%=path%>"</p>
    </body>
</html>

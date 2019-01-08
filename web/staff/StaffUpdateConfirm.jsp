<!DOCTYPE html>
<html>

    <head>
        <meta charset="uft-8">
        <link rel="stylesheet" href="../layout/base.css">
        <title>Staff Portal</title>
        <link href="../layout/image/DySpee.png" rel="icon" />

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


    </head>
    <body>        
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <div id="container">
            <div class="article-container">
                <h3 style="color:white;margin-left: 10%">
                    <%    boolean success = (Boolean) session.getAttribute("success");
                        if (success) {
                            out.println("Item updated successfully.");
                        } else {
                            out.println("Error: Unable to update item.");
                        }
                    %>
                </h3>
                <a href="staffui.jsp"><button  type="button" class="btn btn-dark">Back to home page</button></a>
            </div>
        </div>
    </body>
</html>
<%-- 
    Document   : staffui
    Created on : Jan 4, 2019, 11:24:54 AM
    Author     : taita
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="uft-8">
        <link rel="stylesheet" href="../layout/base.css">

        <title>Staff Portal</title>
        <link href="../layout/image/DySpee.png" rel="icon" />

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">

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

        <style>
            .article-container{
                padding-top: 110px;
                color: white;
            }
            
            .pannel{
                margin: 100px;
            }
            
        </style>

    </head>
    <body>
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>

        <div id="container">
            <div class="article-container">
                <h1 align="center">Staff Portal</h1>
                <div class="pannel">
                    <h2>Control Panel</h2>
                    <h5>Select a task to do...</h5>
                    <ul>
                        <a href="StaffView"><button type="button" class="btn btn-dark">View All Items</button></a>
                        <a href="StaffAdd.jsp"><button type="button" class="btn btn-dark">Add New Item</button></a>
                        <a href="LoadProductList"><button type="button" class="btn btn-dark">Update/Delete Item</button></a>
                    </ul>
                </div>

            </div>

        </div>


    </body>
</html>

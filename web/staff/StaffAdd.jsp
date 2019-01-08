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

        <style>
            .article-container{
                padding-top: 110px;
            }

            label{
                color: white;
            }

            .addBox{
                margin: auto;
                width: 60%;
            }
        </style>

    </head>
    <%
        String message = (String) request.getAttribute("message");

        if (message == null) {
            message = "";
        }
    %>
    <body>
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <div id="container">
            <div class="article-container">
                <h2 align="center" style="color:white;">Add New Product</h2>
                <p align="center"><i style="color:white; background: red"><%= message%></i></p>
                <form action="StaffAddItem">
                    <div class="addBox">
                        <div class="form-group col-md-6">
                            <label>Name</label>
                            <input class="form-control" type="text" name="name" size="50">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Price</label>
                            <input class="form-control" type="number" step="0.01" name="price">
                        </div>        
                        <div class="form-group col-md-6">
                            <label>Description</label>
                            <input class="form-control" type="text" name="description" size="50">
                        </div>        
                        <div class="form-group col-md-6">
                            <label>Rating</label>
                            <input class="form-control" type="number" name="rating" min="1" max="5">
                        </div>          
                        <div class="form-group col-md-6">
                            <label>Date Release</label>
                            <input class="form-control" type="date" name="daterelease">
                        </div>     
                        <div class="form-group col-md-6">
                            <label>Genre</label>
                            <input class="form-control" type="text" name="genre">
                        </div>
                        <button class="btn btn-dark" type="submit">Add Product</button>
                        <button class="btn btn-dark" type="reset">Reset</button>
                        <a href="staffui.jsp"><button  type="button" class="btn btn-dark">Back to home page</button></a>


                    </div>

                </form>
            </div>

        </div>
    </body>
</html>
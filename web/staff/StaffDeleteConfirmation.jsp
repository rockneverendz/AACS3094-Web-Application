<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entity.Product"%>
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

            form{
                color:white;
                margin-left: 10%;
                margin-top: 50;
            }

            td{
                color:white;
                margin-top: 30;
            }
        </style>

    </head>
    <body>
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <%            Product product = (Product) session.getAttribute("product");
            if (product != null) {

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        %>

        <div id="container">
            <div class="article-container">
                <h1 align="center" style="color:white">Delete Product</h1>
                <form action="StaffDeleteItem" method="post" onsubmit="return window.confirm('Are you sure you want to delete this item?')">

                    <div class="box">
                        <div class="form-group col-md-6">
                            <label>ID</label>
                            <input class="form-control" type="text" name="id" value="<%=product.getProductid()%>" readonly>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Name</label>
                            <input class="form-control" type="text" name="name" size="50" value="<%=product.getName()%>" readonly>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Price (RM)</label>
                            <input class="form-control" type="text" name="price" value="<%=String.format("%.2f", product.getPrice())%>" readonly>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Description</label>
                            <input class="form-control" type="text" name="description" size="50" value="<%=product.getDescription()%>" readonly>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Rating</label>
                            <input class="form-control" type="text" name="rating" value="<%=product.getRating()%>" readonly>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Date Release</label>
                            <input class="form-control" type="date" name="daterelease" size="50" value="<%= sdf.format(product.getDaterelease())%>" readonly>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Genre</label>
                            <input class="form-control" type="text" name="genre" value="<%=product.getGenre()%>" readonly>
                        </div>
                        <button class="btn btn-dark" type="submit" value="Delete Item">Delete Product</button>
                    </div>
                </form>

                <%} else {%>
                Product ${product.id} not found
                <p><a href="staffui.jsp" style="color:white;margin-left: 20">Back to home page</a></p>
                <%}%>

            </div>


        </div>



    </body>

</html>


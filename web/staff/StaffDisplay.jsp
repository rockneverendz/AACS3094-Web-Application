<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<!DOCTYPE html>
<html>

    <!-- retrieve session object, ProductList -->
    <%
        List<Product> ProductList = (List) session.getAttribute("ProductList");
    %>
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
            th{
                color:white;
                margin-left: 20;
            }

            td{
                color:white;
                margin-left: 20;           
            }
            
            .article-container{
                padding-top: 110px;
            }
            
        </style>
    </head>

    <body>
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <div id="container">
            <div class="article-container">
                <h1 align="center" style="color:white">View All Items </h1>

                <!-- Display items -->
                <table class="table table-dark table-bordered table-hover">
                    <thead>
                        <tr scope="row">
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Description</th>
                            <th scope="col">Rating</th>
                            <th scope="col">Date Release</th>
                            <th scope="col">Genre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Product product : ProductList) {%>

                        <tr scope="row">
                            <td><%= product.getProductid()%></td>
                            <td><%= product.getName()%> </td>
                            <td><%= String.format("%.2f", product.getPrice())%></td>
                            <td><%= product.getDescription()%></td>
                            <td><%= product.getRating()%></td>
                            <td><%= product.getDaterelease()%></td>
                            <td><%= product.getGenre()%></td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
                <br><br>
                <a href="staffui.jsp" style="color:white;margin-left: 20"><button type="button" class="btn btn-dark">Back to Home page</button></a></p>
            </div>
        </div>


    </body>
</html>
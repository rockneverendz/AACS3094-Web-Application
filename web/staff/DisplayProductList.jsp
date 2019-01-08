<%@page import="java.util.List"%>
<%@page  import="entity.Product" %>
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

            .box{
                margin: auto;
                width: 60%;
            }

            #container{
                color: #fff;
            }

            table{
                margin-left: 10%;
            }
            form{
                color:white;
                margin-left: 10%;
                margin-top: 50;
            }

            tr{
                margin-left: 10%;
                margin-top: 50;
            }

            td{
                color:white;
                margin-top: 50;
            }
        </style>

    </head>
    <header>
        <%@ include file="staffHeader.jsp"%>
    </header>
    <%        List<Product> productList = (List) session.getAttribute("productList");
    %>
    <div id="container">
        <div class="article-container">
            <div class="box">
                <h1 align="center" style="color:white">Search Product </h1>
                <form action="SearchProduct.jsp" method="post">
                    <div class="form-group col-md-5">
                        <label>Product ID</label>
                        <select class="form-control" name="id">
                            <% for (Product product : productList) {%>
                            <option value="<%=product.getProductid()%>">
                                <%=product.getProductid()%>
                                <%}%>
                        </select>
                    </div>

                    <button class="btn btn-dark" name="button" value="Delete" type="submit">Delete</button>
                    <button class="btn btn-dark" name="button" value="Update" type="submit">Update</button>

                </form>
                <br>
                <a href="staffui.jsp"><button  type="button" class="btn btn-dark">Back to home page</button></a>

            </div>
        </div>
    </div>



</html>

<!DOCTYPE html>

<%@ page import = "entity.Product" %>
<%@ page import = "service.ProductService" %>
<%  ProductService productService = new ProductService();
    Product product = new Product();
    int i, j, indexNum;
%>

<html>

    <head>
        <meta charset="uft-8">
        <title>Top Rating|Dyspee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/base.css" rel="stylesheet" />
        <script src="style/add.js"></script>


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
            .title{
                padding: 30px;
                
            }
            .row > .col-sm-3 > a > img{
                width: 100%;
                margin: 10px;
            }

            .text{
                color: white;
                font-weight: bold;
                text-align: center;
            }


        </style>

    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>
        <!--Container Start-->
        <div id="container">
            <div class="article-container">
                <div class="title" style="color: aliceblue;">
                    <h1>Top Rating Movies</h1>
                </div>

                <div class="container-fluid" style="padding: 0 50px;">
                    <%  for (i = 0; i < 3; i++) {
                    %>
                    <!-- Row 1 -->
                    <div class="row">
                        <%  for (j = 0; j < 4; j++) {
                                indexNum = (i * 4) + j;
                                product = productService.findProdByID(indexNum);
                        %>

                        <div class="col-sm-3">
                            <a href="../video/trailer.jsp?productid=<%= indexNum%>">
                                <img src= "<%= product.getPoster()%>" class="rounded" />
                            </a>
                            <div class="overlay">
                                <div class="text"><%= product.getName()%></div>
                            </div>
                        </div>

                        <%
                            }
                        %>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>


        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>
</html>

<%
    productService.close();
%>


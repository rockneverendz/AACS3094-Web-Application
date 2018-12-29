<!DOCTYPE html>
<html>

    <head>
        <meta charset="uft-8">
        <title>Top Rating|Dyspee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="style/moviesStyle.css" rel="stylesheet" />
        <script src="style/add.js"></script>

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="style/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="style/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    </head>

    <body>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <%@ page import = "entity.Product" %>
        <%@ page import = "service.ProductService" %>
        <%            ProductService productService = new ProductService();
            Product product = new Product();
            int i, j, indexNum;
        %>

        <!--Container Start-->
        <div class="article-container">

            <!--Main Start-->
            <div class="main">

                <div class="title">
                    <h1>Top Rating Movies</h1>
                </div>

                <div class="productlist">
                    <%  for (i = 0; i < 3; i++) {
                    %>
                    <!-- Row 1 -->
                    <div class="row">
                        <%  for (j = 0; j < 4; j++) {
                                indexNum = (i * 4) + j;
                                product = productService.findCustByID(indexNum);
                        %>
                        <a href="../video/trailer.jsp?productid=<%= indexNum%>">
                            <div class="col-sm-3 poster">
                                <img src= <%= product.getPoster()%> class="img-rounded" />
                                <div class="overlay">
                                    <div class="text"><%= product.getName()%></div>
                                </div>
                            </div>
                        </a>
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

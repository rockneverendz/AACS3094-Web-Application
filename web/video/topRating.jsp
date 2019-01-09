<!DOCTYPE html>

<%@ page import = "entity.Product" %>
<%@ page import = "service.ProductService" %>
<%  ProductService productService = new ProductService();
    Product product = new Product();
    int i, j, indexNum, offset;
    offset = (Integer.parseInt(request.getParameter("page")) - 1) * 12;
%>

<html>
    <head>
        <title>Top Rating</title>
        <script src="style/add.js"></script>
        <%@ include file="../layout/meta.jsp"%>
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
                                indexNum = (i * 4) + j + offset;
                                product = productService.findProdByID(indexNum + 1);
                                if (product != null) {
                        %>

                        <div class="col-sm-3">
                            <a href="../video/trailer.jsp?productid=<%= indexNum + 1%>">
                                <img src= "<%= product.getPoster()%>" class="rounded" />
                            </a>
                            <div class="overlay">
                                <div class="text"><%= product.getName()%></div>
                            </div>
                        </div>

                        <%      } else {
                                    //Break the loop, no product left.
                                    i = 3;
                                    j = 4;
                                }
                            }
                        %>
                    </div>
                    <%
                        }
                    %>
                </div>

                <nav style="margin: 50px 0 0 0;">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link text-muted bg-dark" href="#" tabindex="-1">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link text-white bg-dark" href="?page=1">1</a></li>
                        <li class="page-item"><a class="page-link text-white bg-dark" href="?page=2">2</a></li>
                        <li class="page-item"><a class="page-link text-white bg-dark" href="?page=3">3</a></li>
                        <li class="page-item">
                            <a class="page-link text-white bg-dark" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
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


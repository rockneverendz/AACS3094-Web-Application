<!DOCTYPE html>

<%@ page import = "entity.Product" %>
<%@ page import = "service.ProductService" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String productid = request.getParameter("productid");
    ProductService productService = new ProductService();
    Product product;
    int noProduct = productService.countProduct();
    int recomProd;

    if (productid == null) {
        response.sendRedirect("../video/DySpee.jsp");
        return;
    } else {
        product = productService.findProdByID(Integer.parseInt(productid));
    }
%>

<%!
    public int randomMax(int max) {
        return (int) (Math.random() * max);
    }
%>

<html>

    <head>
        <meta charset="uft-8">
        <title><%= product.getName()%></title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/trailer.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div class="article-container">
            <div class="video">
                <iframe width="850" height="390" src=<%= product.getTrailer() %> frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>

            <div class="detailBox">

                <div class="poster">
                    <img src=<%= product.getPoster()%> alt="" />
                </div>

                <div class="title">
                    <h1><%= product.getName()%></h1>
                </div>

                <div class="rating">
                    <span>Rating : </span>
                    <%
                        for (int i = 0; i < product.getRating(); i++) {
                    %>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <%
                        }
                    %>
                    <span class="rate"><%= product.getRating()%>/5</span>
                </div>

                <div class="summary">
                    <p><%= product.getDescription()%></p>
                </div>

                <div class="tags">
                    <p>Genre: <a href="#"><%= product.getGenre() %></a></p>
                </div>

                <div class="tags2">
                    <p>Duration: 2h 40m</p>
                    <p>Disc format: CD, DVD, Blu-ray</p>
                    <p>Release: <%= sdf.format(product.getDaterelease())%></p>
                    <p><em>Price: RM<%= String.format("%.2f", product.getPrice())%> (Free shipping!) </em></p>

                    <button class="btn"><i class="fas fa-plus"></i> &nbsp;&nbsp;Add To Cart</button>
                </div>

            </div>


            <div class="suggestionBox">
                <div class="recom">Recommended</div>
                <%
                    for (int j = 0; j < 3; j++) {
                        recomProd = randomMax(noProduct);
                        product = productService.findProdByID(recomProd);
                %>

                <div class="box">
                    <a href="../video/trailer.jsp?productid=<%= recomProd %>">
                        <img src=<%= product.getPoster() %> alt="" />
                    </a>
                    <p><%= product.getName() %></p>
                </div>

                <% }
                %>
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

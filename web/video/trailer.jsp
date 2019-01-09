<!DOCTYPE html>

<%@ page import = "service.ProductService" %>
<%@ page import = "entity.Product" %>
<%@ page import = "java.util.Collections"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String productid = request.getParameter("productid");
    ProductService productService = new ProductService();
    Product product;
    int[] recomProd = new int[3];
    int noProduct = productService.countProduct();
    int i;

    // Product ID is null, redirect back to homepage with an error.
    if (productid == null) {
        response.sendRedirect("../video/DySpee.jsp?status=-1");
        return;
    } else {
        product = productService.findProdByID(Integer.parseInt(productid));
    }

    // 3 Unique Random Numbers in Java
    recomProd[0] = randomMax(noProduct);
    do {
        recomProd[1] = randomMax(noProduct);
    } while (recomProd[0] == recomProd[1]);
    do {
        recomProd[2] = randomMax(noProduct);
    } while (recomProd[0] == recomProd[2] || recomProd[1] == recomProd[2]);
%>

<%!
    public int randomMax(int max) {
        return (int) (Math.random() * max);
    }
%>

<html>

    <head>
        <title><%= product.getName()%></title>
        <link href="style/trailer.css" rel="stylesheet" />
        <%@ include file="../layout/meta.jsp"%>
    </head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div id="container">

            <%--
            Status code -1= An error has occured
            Status code 0 = Successfully Signed Out
            Status code 1 = Successfully Signed In
            Status code 2 = Successfully Signed Up
            --%>

            <%  String status = request.getParameter("status");
                String message;
                if (status == null) {
                    message = "";
                } else {
                    char code = status.charAt(0);
                    if (code == '2') {
                        message = "Item already in cart!";
                    } else if (code == '1') {
                        message = "Successfully added to cart!";
                    } else {
                        message = "Error has occured";
                    }
            %>

            <div class="message-container">
                <%=message%>
            </div>

            <%
                }
            %>
            <div class="article-container">
                <div class="video">
                    <iframe width="850" height="390" src=<%= product.getTrailer()%> frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
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
                            for (i = 0; i < product.getRating(); i++) {
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
                        <p>Genre: <a href="#"><%= product.getGenre()%></a></p>
                        <p>Duration: 2h 40m</p>
                    </div>

                    <div class="tags2">
                        <p>Disc format: DVD, Blu-ray</p>
                        <p>Release: <%= sdf.format(product.getDaterelease())%></p>
                        <p><em>Price: RM<%= String.format("%.2f", product.getPrice())%> (Free shipping!) </em></p>

                        <form action="AddItem" method="GET">
                            <input type="hidden" name="productid" value="<%= product.getProductid()%>" />
                            <button class="add"><i class="fas fa-plus"></i> &nbsp;&nbsp;Add To Cart</button>
                        </form>    
                    </div>
                </div>

                <div class="suggestionBox">
                    <div class="recom">Recommended</div>
                    <%
                        for (i = 0; i < 3; i++) {
                            product = productService.findProdByID(recomProd[i] + 1);
                    %>

                    <div class="box">
                        <a href="../video/trailer.jsp?productid=<%= recomProd[i] + 1%>">
                            <img src=<%= product.getPoster()%> />
                        </a>
                        <p><%= product.getName()%></p>
                    </div>

                    <% }
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

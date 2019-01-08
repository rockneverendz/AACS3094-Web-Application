<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<!DOCTYPE html>
<html>

    <!-- retrieve session object, ProductList -->
    <%
        List<Product> ProductList = (List) session.getAttribute("ProductList");
    %>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
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
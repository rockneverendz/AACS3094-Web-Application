<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entity.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .article-container{
                padding-top: 110px;
            }

            label{
                color:white;
            }
        </style>
    </head>
    <body>
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <%  Product product = (Product) session.getAttribute("product");
            if (product != null) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String message = (String) request.getAttribute("message");

                if (message == null) {
                    message = "";
                }
        %>

        <div id="container">
            <div class="article-container">
                <h1 align="center" style="color:white">Update Product</h1>
                <p align="center"><i style="color:white; background: red"><%= message%></i></p>
                <form action="StaffUpdateProduct" method="post">
                    <div class="box">
                        <div class="form-group col-md-6">
                            <label>ID</label>
                            <input class="form-control" type="text" name="id" value="<%=product.getProductid()%>" readonly />
                        </div>
                        <div class="form-group col-md-6">
                            <label>Name</label>
                            <input class="form-control" type="text" name="name" size="50" value="<%=product.getName()%>" />
                        </div>
                        <div class="form-group col-md-6">
                            <label>Price</label>
                            <input class="form-control" type="number" step="0.01" name="price" value="<%=String.format("%.2f", product.getPrice())%>" />
                        </div>        
                        <div class="form-group col-md-6">
                            <label>Description</label>
                            <input class="form-control" type="textarea" name="description" size="50" value="<%=product.getDescription()%>" />
                        </div>        
                        <div class="form-group col-md-6">
                            <label>Rating</label>
                            <input class="form-control" type="number" name="rating" value="<%=product.getRating()%>" min="1" max="5"/>
                        </div>          
                        <div class="form-group col-md-6">
                            <label>Date Release</label>
                            <input class="form-control" type="date" name="daterelease" size="50" value="<%= sdf.format(product.getDaterelease())%>">
                        </div>     
                        <div class="form-group col-md-6">
                            <label>Genre</label>
                            <input class="form-control" type="text" name="genre" value="<%=product.getGenre()%>">
                        </div>
                        <button class="btn btn-dark" type="submit" value="Update Product">Update Product</button>
                    </div>
                </form>

                <% } else {%>
                Product ${ product.id } not found
                <p><a href="staffui.jsp" style="color:white;margin-left: 20">Back to home page</a></p>
                <% }%>

            </div>
        </div>
    </body>
</html>


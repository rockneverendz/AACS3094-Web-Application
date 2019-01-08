<%@page import="java.util.List"%>
<%@page  import="entity.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
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

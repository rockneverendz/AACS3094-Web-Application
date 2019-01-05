<%@page import="entity.Product"%>
<html>
    <head></head>
    <body>
        <%
            Product product = (Product) session.getAttribute("product");
            if (product != null) {
        %>
        <h1>Update Product</h1>
        <form action="StaffUpdateProduct" method="post">
            <table border="0">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"
                               value="<%=product.getProductid()%>" readonly></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" size="50"
                               value="<%=product.getName()%>" ></td>
                </tr>
                <tr>
                    <td>Price (RM)</td>
                    <td><input type="text" name="price"
                               value="<%=String.format("%.2f", product.getPrice())%>" ></td>
                </tr>
            </table>
            <input type="submit" value="Update Product">

        </form>
        <%} else {%>
        Product ${product.id} not found
        <p><a href="index.html">Back to home page</a></p>
        <%}%>
    </body>
</html>


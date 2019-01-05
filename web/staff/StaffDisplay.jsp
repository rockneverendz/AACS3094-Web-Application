<%@page import="java.util.List"%>
<%@page import="entity.Product"%>

<!-- retrieve session object, ProductList -->
<%
  List<Product> ProductList = (List)session.getAttribute("ProductList");
%>
<h1>View All Items </h1>

<!-- Display items -->
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    <% for (Product product: ProductList){ %>
        <tr>
            <td><%= product.getProductid() %></td>
            <td><%= product.getName() %> </td>
            <td><%= String.format("%.2f", product.getPrice()) %></td>
        </tr>
    <% } %>
</table>
<br><br>
<p><a href="">Back to home page</a></p>